build:
	@echo "No additional build steps available"
test:
	python manage.py test
run:
	python -m secret_key_util > /dev/null
	python manage.py migrate --noinput
	python manage.py collectstatic --noinput
	gunicorn project.wsgi --workers 5 -b 0.0.0.0:8000 -t 600 --access-logfile - --error-logfile -