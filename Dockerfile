FROM python:3.9
WORKDIR /back
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
CMD ["python","manage.py","runserver","0:8000"]
