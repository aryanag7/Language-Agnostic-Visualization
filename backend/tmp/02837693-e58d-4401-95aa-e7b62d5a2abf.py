import plotly.graph_objects as go
import numpy as np

# Generate 3D data
x = np.linspace(-5, 5, 50)
y = np.linspace(-5, 5, 50)
x, y = np.meshgrid(x, y)
z = np.sin(np.sqrt(x**2 + y**2))

# Create surface plot
fig = go.Figure(data=[go.Surface(z=z, x=x, y=y)])
fig.update_layout(title='3D Surface Plot - Plotly')

fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/02837693-e58d-4401-95aa-e7b62d5a2abf.html')