dev:
	pip3 install -U pip pipenv
	pipenv install --dev

serve:
	pipenv run mkdocs serve

update-requirements:
	pipenv requirements  > requirements.txt

deploy:
	pipenv run mkdocs gh-deploy --force
