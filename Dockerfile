FROM fischerscode/flutter

WORKDIR /app

COPY . .

RUN chown ${USER} -R . && flutter doctor

EXPOSE 3000

CMD ["flutter", "test"]