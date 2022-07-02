import ctypes
import pandas as pd
import pyarrow as pa

c_lib = ctypes.CDLL('./libtest.so')
df = pd.DataFrame({"c": range(100)})
table = pa.Table.from_pandas(df)

c_lib.print_is_array(ctypes.py_object(table))

