start:
	docker-compose up

stop:
	docker-compose down

restart:
	docker-compose restart

reboot:
	docker-compose down && docker-compose up

startd:
	docker-compose up -d

restartd:
	docker-compose down && docker-compose up -d

logs:
	docker-compose logs -f

top:
	docker-compose top

psql:
	docker-compose exec postgresql su -c "psql -d cwd_staging" postgres

collect:
	docker-compose exec backend python manage.py collectstatic --noinput

export:
	export $(cat .env | sed 's/#.*//g' | xargs)
