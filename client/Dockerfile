# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose Flask's default port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

