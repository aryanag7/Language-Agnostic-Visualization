import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")
fig.show()
fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/1567cf19-978e-4575-8d66-8eb59d7a7d2c.html')