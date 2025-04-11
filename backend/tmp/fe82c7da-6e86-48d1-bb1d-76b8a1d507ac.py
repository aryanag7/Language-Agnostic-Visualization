import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")
fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/fe82c7da-6e86-48d1-bb1d-76b8a1d507ac.html')