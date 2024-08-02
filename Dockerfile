FROM python:3.10.12-alpine3.18
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 3000
CMD [ "fastapi", "dev", "--host", "0.0.0.0", "--port", "80", "main.py" ]