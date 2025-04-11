import plotly.express as px

df = px.data.gapminder().query("year == 2007 and continent == 'Asia'")
fig = px.scatter(df, x="gdpPercap", y="lifeExp", size="pop", color="country", hover_name="country", log_x=True)

fig.write_image("output.png")  # <- generates an image even for interactive plots

import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/65bbc948-b4c8-49be-aaba-bb3951faeff0.png')