## ----------------------------------------------------------------------
## Makefile for dataekspeditioner.dk
## ----------------------------------------------------------------------

help:   ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# ---------- Production ---------- #
production_start:  ## Start production server
	docker-compose up -d

production_stop:  ## Stop production server
	docker-compose down

production_shell:  ## Open shell in running docker container
	docker-compose exec web /bin/bash

# ---------- Backup ---------- #
production_backup:  ## Create backup
	docker exec dataekspeditionerdk_backup_1 backup

# ---------- Restore backups ---------- #

# It would be nice to have a restore command in the Makefile,
# but arguments to Makefile targets are not easy to add.
#
# This is how you manually restore the backup from a given date:
#
#   docker exec dataekspeditionerdk_backup_1 restore 20141114
#
