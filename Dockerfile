FROM python:3.8.0-alpine

RUN apk add --no-cache git
RUN git clone https://github.com/theblackturtle/mailsec.git
WORKDIR /mailsec

RUN pip3 install -r requirements.txt
CMD ["python3","spoofcheck.py"]