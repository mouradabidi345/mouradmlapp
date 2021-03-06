FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
COPY ./MLAPP /app
RUN pip install -r requirements.txt
EXPOSE 80


CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]