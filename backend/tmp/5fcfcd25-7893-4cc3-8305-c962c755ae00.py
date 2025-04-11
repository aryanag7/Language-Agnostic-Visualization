import plotly.express as px

df = px.data.gapminder().query("year == 2009 and continent == 'Asia'")
fig = px.scatter(df, x="gdpPercap", y="lifeExp", size="pop", color="country", hover_name="country", log_x=True)


import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/5fcfcd25-7893-4cc3-8305-c962c755ae00.png')