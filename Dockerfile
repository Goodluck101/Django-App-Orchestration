# Set Base Image
FROM python:3.9

# set environment variables PYTHONUNBUFFERED set to 1 to enable us collect logs at runtime from the application
ENV PYTHONUNBUFFERED=1  

# set work directory
WORKDIR /code

# install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# copy project
COPY . /code/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

