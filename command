//Create superuser
python manage.py createsuperuser

//Database migration
python3 manage.py makemigrations
python3 manage.py migrate

//Collect static files
python3 manage.py collectstatic

//Make requirements.txt
pip freeze > requirements.txt

//Make languages
python manage.py makemessages -l hu
python manage.py compilemessages