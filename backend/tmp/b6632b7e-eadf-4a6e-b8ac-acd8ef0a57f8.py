import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")

fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/b6632b7e-eadf-4a6e-b8ac-acd8ef0a57f8.html')