python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py loaddata fixtures/*


python3 $K2_OPTS manage.py runserver  0.0.0.0:8000