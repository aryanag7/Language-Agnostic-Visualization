import plotly.graph_objects as go
import numpy as np

x = np.linspace(-5, 5, 50)
y = np.linspace(-5, 5, 50)
x, y = np.meshgrid(x, y)
z = np.sin(np.sqrt(x**2 + y**2))

fig = go.Figure(data=[go.Surface(z=z, x=x, y=y)])
fig.update_layout(title='3D Surface Plot')

fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/bd7b76ca-becc-48c3-8b3e-c479d47db494.html')