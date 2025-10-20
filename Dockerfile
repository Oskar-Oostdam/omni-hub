# 1. Use an official Python runtime as a parent image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy just the requirements file first and install dependencies
# This leverages Docker's layer caching.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of your app's code
COPY . .

# 5. Expose the port Streamlit runs on
EXPOSE 8501

# 6. The command to run when the container starts
# We use 0.0.0.0 to make the app accessible from outside the container
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]