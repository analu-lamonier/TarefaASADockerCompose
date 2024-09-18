FROM python
RUN apt-get update && apt-get install python3-pip -y
WORKDIR /Tarefa-ASA-Software-Escola-main
COPY . /Tarefa-ASA-Software-Escola-main/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["uvicorn","main:app", "--host", "0.0.0.0", "--port", "5000"] 