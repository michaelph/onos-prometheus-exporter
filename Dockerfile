FROM python:alpine3.11
LABEL Michael P Hernandez
USER root
RUN apk update
RUN apk add wget git
RUN git clone https://github.com/zufardhiyaulhaq/onos-prometheus-exporter.git
RUN export LC_ALL=C
RUN echo "export LC_ALL=C" >> ~/.bashrc
RUN source ~/.bashrc
RUN pip3 install -r onos-prometheus-exporter/requirement.txt
EXPOSE 9090
CMD ["python3", "onos-prometheus-exporter/exporter.py"] 
