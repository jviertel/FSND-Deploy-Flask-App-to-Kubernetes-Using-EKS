FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pyjwt
RUN pip install flask 
RUN pip install gunicorn
RUN pip install pytest

EXPOSE 8080
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]