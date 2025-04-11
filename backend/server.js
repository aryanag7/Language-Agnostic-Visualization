const express = require('express');
const cors = require('cors');
const fs = require('fs');
const { exec } = require('child_process');
const { v4: uuidv4 } = require('uuid');
const path = require('path');

const app = express();
const PORT = 5050;

app.use(cors());
app.use(express.json({ limit: '1mb' }));

app.get('/', (req, res) => {
  res.send('🎉 Node.js backend is running!');
});

app.post('/generate', (req, res) => {
  const { language, code } = req.body;

  console.log('📥 Request received');
  console.log('🌐 Language:', language);

  if (!['python', 'r'].includes(language)) {
    console.log('❌ Unsupported language');
    return res.status(400).json({ error: 'Unsupported language' });
  }

  const scriptId = uuidv4();
  const tempDir = path.join(__dirname, 'tmp');
  if (!fs.existsSync(tempDir)) fs.mkdirSync(tempDir);

  const ext = language === 'python' ? 'py' : 'r';
  const scriptPath = path.join(tempDir, `${scriptId}.${ext}`);
  let outputPath = path.join(tempDir, `${scriptId}.png`);
  let fullCode = '';

  if (language === 'python') {
    if (code.includes('fig =')) {
      outputPath = path.join(tempDir, `${scriptId}.html`);
      fullCode = `${code}\nfig.write_html('${outputPath}')`;
      console.log('🌀 Python interactive plot detected');
    } else {
      fullCode = `${code}\nimport matplotlib.pyplot as plt\nplt.savefig('${outputPath}')`;
      console.log('📊 Python static plot detected');
    }
  } else {
    if (code.includes('fig <-')) {
      outputPath = outputPath.replace('.png', '.html');
      fullCode = `${code}\nhtmlwidgets::saveWidget(fig, '${outputPath}', selfcontained = TRUE)`;
      console.log('🌀 R interactive plot detected');
    } else {
      fullCode = `${code}\nggsave('${outputPath}')`;
      console.log('📊 R static plot detected');
    }
  }

  fs.writeFileSync(scriptPath, fullCode);
  console.log('📝 Script written to:', scriptPath);

  const command = language === 'python'
    ? `./venv/bin/python ${scriptPath}`
    : `Rscript ${scriptPath}`;

  console.log('▶️ Executing command:', command);

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error('❌ Script execution error:\n', stderr.toString());
      return res.status(500).json({ error: stderr.toString() });
    }

    console.log('✅ Script executed successfully');
    console.log('📤 Sending file:', outputPath);

    if (outputPath.endsWith('.html')) {
      res.setHeader('Content-Type', 'text/html');
    }

    fs.access(outputPath, fs.constants.F_OK, (err) => {
      if (err) {
        console.error('❌ Output file not found:', outputPath);
        return res.status(404).json({ error: 'Output file not found' });
      }

      res.sendFile(outputPath);
    });
  });
});

app.listen(PORT, () => {
  console.log(`✅ Server running at http://localhost:${PORT}`);
});
