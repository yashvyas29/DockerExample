FROM ubuntu:latest
MAINTAINER Yash Vyas "yash.vyas@globallogic.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN pip install Flask

ADD hello.py /workspace/hello.py
RUN echo "I am Yash Vyas. I created this docker example."

EXPOSE 8080
WORKDIR /workspace

ENTRYPOINT ["python"]
CMD ["hello.py"]