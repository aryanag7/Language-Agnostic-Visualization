import matplotlib.pyplot as plt

labels = ['Apples', 'Oranges', 'Bananas']
sizes = [10, 15, 7]

plt.pie(sizes, labels=labels, autopct='%1.1f%%')
plt.title('Static Pie Chart - Matplotlib')

import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/470c910b-6eb7-401e-890d-6c22c8544f95.png')