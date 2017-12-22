ENVDIR=envdir ../envs
MANAGE=$(ENVDIR) python manage.py

start:
	@ echo "❯ Starting…"
	$(MANAGE) runserver $$port

run: start $$port

manage:
	@ $(MANAGE) $$cmd

shell:
	@ $(MANAGE) shell

migrate:
	@ $(MANAGE) migrate

jupyter:
	@ $(MANAGE) shell_plus --notebook

test:
	@ $(ENVDIR_TESTS) py.test $(ARGS)
