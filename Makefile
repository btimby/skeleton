test:
	# For testing Django projects.
	python manage.py test @@PROJECT_NAME
	# For testing non-Django projects.
	python test.py

verify:
	pyflakes -x W @@PROJECT_NAME
	pep8 --exclude=migrations --ignore=E501,E225 @@PROJECT_NAME

install:
	python setup.py install

publish:
	python setup.py register
	python setup.py sdist upload
