import plotly.express as px

df = px.data.gapminder().query("year == 2007 and continent == 'Asia'")
fig = px.scatter(df, x="gdpPercap", y="lifeExp", size="pop", color="country", hover_name="country", log_x=True)


import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/3b58ce7f-96d2-4191-8069-85c5c900ebdc.png')