//Create superuser
python manage.py createsuperuser

//Database migration
python manage.py makemigrations
python manage.py migrate

//Collect static files
python manage.py collectstatic

//Make requirements.txt
pip freeze > requirements.txt

//Make languages
python manage.py makemessages -l hu
python manage.py compilemessages