FROM python:3.9
WORKDIR /app 
COPY . /app
RUN pip install streamlit pandas requests random datetime
EXPOSE 8501
CMD ["streamlit","run","app.py","--server.port=8501","-servrt.adress=0.0.0.0"]