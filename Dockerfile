FROM fischerscode/flutter

WORKDIR /app

COPY . .

RUN flutter doctor

EXPOSE 3000