import plotly.express as px

data = {
    "Fruit": ["Apples", "Oranges", "Bananas"],
    "Quantity": [10, 15, 7]
}

fig = px.bar(data, x="Fruit", y="Quantity", title="Interactive Bar Chart")
fig.show()
import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/3661d059-4e35-4ca1-82c2-219761341e69.png')