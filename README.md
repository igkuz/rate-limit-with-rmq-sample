#### App
It is a sample application for presentation purposes only. It shows how to build a rate-limiting solution for outgoing requests.

It uses Dead Letter Exchanges from RabbitMQ, bunny gem to connect from ruby code to RMQ server.
Redis used for atomic operations on setting the key and using it as a simple rate-limiting solution.
The main purpose is to show how to create and work with retry queues and scheduled tasks in RabbitMQ from ruby.

#### Set up

```bash
docker-compose pull
docker-compose build
docker-compose up -d
docker-compose run app ./start
docker-compose run app ./consumer
```

In separate terminal window

```bash
docker-compose run app ./publisher
```