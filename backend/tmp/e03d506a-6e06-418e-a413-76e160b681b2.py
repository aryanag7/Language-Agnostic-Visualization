import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")

fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/e03d506a-6e06-418e-a413-76e160b681b2.html')