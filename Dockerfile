FROM python:3.12.4-bookworm
WORKDIR /app
COPY . .
RUN ls -la
RUN pip install -r requirements.txt 
WORKDIR /app/src/kernel
ENTRYPOINT ["./manage.py", "runserver", "0.0.0.0:8000"]