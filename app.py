import streamlit as st
import pandas as pd
import numpy as np

st.title("My Dockerized Streamlit App")
st.write("This app is running inside a Docker container on localhost! 🐳")

# Example widget
name = st.text_input("Enter your name", "Streamlit User")
if st.button("Say Hello"):
    st.write(f"Hello, {name}!")

# Example chart
st.subheader("Sample Data")
chart_data = pd.DataFrame(
    np.random.randn(20, 3),
    columns=['a', 'b', 'c'])
st.line_chart(chart_data)