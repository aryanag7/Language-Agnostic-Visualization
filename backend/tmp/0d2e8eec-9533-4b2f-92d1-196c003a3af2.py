import plotly.express as px

df = px.data.gapminder().query("year == 2007 and continent == 'Asia'")
fig = px.scatter(df, x="gdpPercap", y="lifeExp", size="pop", color="country", hover_name="country", log_x=True)

fig.write_image("output.png")  # <- generates an image even for interactive plots

import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/0d2e8eec-9533-4b2f-92d1-196c003a3af2.png')