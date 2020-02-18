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

// seed adatok kezelése
# alap adatok feltöltése, pl Role
python manage.py loaddata seedData/seedRoles.json

# kigenerálja az adatokat fájlba, jó lesz seed-hez
python manage.py dumpdata accounts.user --indent 4 > seedData/seedUsers.json
python manage.py dumpdata accounts.user accounts.megrendelo accounts.munkaado --indent 4 > seedData/seedUsers.json
python manage.py dumpdata --indent 4 > seedData/dbAll.json # mindent kigenerálja az adatokat fájlba, jó lesz seed-hez