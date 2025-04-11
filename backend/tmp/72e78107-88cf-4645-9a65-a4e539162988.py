import plotly.express as px

data = {
    'Fruit': ['Apples', 'Oranges', 'Bananas'],
    'Quantity': [10, 15, 7]
}

fig = px.pie(data, names='Fruit', values='Quantity', title='Interactive Pie Chart - Plotly')

fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/72e78107-88cf-4645-9a65-a4e539162988.html')