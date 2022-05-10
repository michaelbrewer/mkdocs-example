dev:
	pip3 install -U pip pipenv
	pipenv install

serve:
	pipenv run mkdocs serve
