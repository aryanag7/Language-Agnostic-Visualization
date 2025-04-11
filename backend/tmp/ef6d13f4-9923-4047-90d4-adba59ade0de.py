import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")


fig.write_html('/Users/aryan/Desktop/lang-vis-project/backend/tmp/ef6d13f4-9923-4047-90d4-adba59ade0de.html')