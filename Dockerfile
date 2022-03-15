FROM fischerscode/flutter

WORKDIR /app

COPY . .

RUN chown :docker -R . && flutter doctor

EXPOSE 3000

CMD ["flutter", "test"]