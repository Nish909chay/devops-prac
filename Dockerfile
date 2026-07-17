FROM python:3.11-slim

WORKDIR /app    
# This creates (if needed) and switches into the /app directory inside the container.

COPY . .
# copy everything from current directory in your laptop onto /app {working dir of the image}

RUN pip install -r requirements.txt
# This command is executed while building the image.

CMD ["python3", "app.py"]
# This is the default command that runs when a container starts.