# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy project files
COPY requirements.txt app.py ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port and define startup command
EXPOSE 5000
CMD ["python", "app.py"]
