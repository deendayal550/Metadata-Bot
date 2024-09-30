
FROM ubuntu:latest
WORKDIR /app
COPY . /app/
RUN pip install -r requirements.txt
RUN apt update && apt install -y ffmpeg
CMD ["python", "bot.py"]
