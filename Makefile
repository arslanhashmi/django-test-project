# production
up-prod:
	sudo docker-compose -f docker-compose.prod.yaml up -d
stop-prod:
	sudo docker-compose -f docker-compose.prod.yaml stop

# developement
up:
	sudo docker-compose -f docker-compose.dev.yaml up -d
stop:
	sudo docker-compose -f docker-compose.dev.yaml stop
