run:
	docker compose -f docker-compose.yml -f docker-compose.arm64.yml up

rerun: clean run

login-user-db:
	docker compose exec -it user_db mysql -u root -p wanwan

clean:
	docker compose down
