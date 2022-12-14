lint: #linter for code
	poetry run flake8 --ignore=E501 task_manager

test: #start pytest
	poetry run python3 manage.py test

coverage-xml: #start tests code coverage and write report is xml-file for CodeClimate
	poetry run coverage run --source='.' manage.py test task_manager
	poetry run coverage xml

start: #starting dev server
	poetry run python3 manage.py runserver

migrate: #make and add migrations
	poetry run python3 manage.py makemigrations task_manager
	poetry run python3 manage.py migrate

shell: #start shell
	poetry run python3 manage.py shell_plus

export: #make export dependens from poetry on Heroku
	poetry export -f requirements.txt --output requirements.txt

translate: #translate from i18n for Django
	poetry run django-admin makemessages -l ru

compile-translate: #compile translate for i18n for Django
	poetry run django-admin compilemessages
