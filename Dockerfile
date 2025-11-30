FROM gcc:latest
WORKDIR /usr/local/app

COPY Makefile ./
COPY src ./src
COPY include ./include

RUN make 
EXPOSE 8080

RUN useradd app
USER app
CMD ["./parser"]
