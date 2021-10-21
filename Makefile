## ----------------------------------------------------------------------
## Makefile for dataekspeditioner.dk
## ----------------------------------------------------------------------

help:   # Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# ---------- Production ---------- #
production_start:  ## Stop production server
	docker-compose up -d

production_stop:  ## Start production server
	docker-compose up -d

production_shell:  ## Open shell in running docker container
	docker-compose exec web /bin/bash

# ---------- Backup & restore ---------- #
