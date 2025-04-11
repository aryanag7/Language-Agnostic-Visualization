import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")
fig.show()
import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/29c0d2a8-bed7-437b-9be2-07c25bec7325.png')