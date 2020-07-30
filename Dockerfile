FROM python:3.7

RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="VIRTUAL_ENV/bin:$PATH"

COPY . /app
WORKDIR /app
ADD . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 
EXPOSE 8080

# Run the application:
CMD ["python", "app/app.py"]