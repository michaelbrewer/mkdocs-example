dev:
	pip3 install -U pip pipenv
	pipenv install --dev

serve:
	pipenv run mkdocs serve

deploy:
	pipenv run mkdocs gh-deploy --force
