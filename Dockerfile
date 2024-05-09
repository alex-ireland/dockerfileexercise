# Use Python 3.6 or later as a base image
FROM python:latest
# Copy contents into image
COPY requirements.txt .
# Install pip dependencies from requirements
RUN pip install --upgrade pip
# Copy contents into image
COPY . .
# Set YOUR_NAME environment variable
ENV YOUR_NAME QA
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python","app.py"]
