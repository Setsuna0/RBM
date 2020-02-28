from os.path import join as njoin
import scipy as sc
from scipy import signal
import scipy.io as sio
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import csv

# set file path
data_path = 'D:\MA'
mat_name = njoin(data_path,'signals.csv')
# read measured signals as csv file
df = pd.read_csv(mat_name, index_col=0, parse_dates=True)

# build data frame for measured signals
for i in len

for i in item_list:
        # plot the row data
        ax = df[i].plot(figsize=(7,4), title=i)
        # loop over the window type
        for win in win_type:
                df_roll = df.rolling(win_len, win_type=win)


# show everything
ax.legend(fontsize=8.5)
plt.tight_layout()
plt.show()
