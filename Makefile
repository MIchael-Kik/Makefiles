PROJECTS := "APPNAME" 

.PHONY: all clean $(PROJECTS) uninstall install cleand

all: $(PROJECTS)

"APPNAME":
	@$(MAKE) --no-print-directory -C $@ -f Makefile

uninstall:
	@$(MAKE) --no-print-directory -C "APPNAME" -f Makefile uninstall

install:
	@$(MAKE) --no-print-directory -C "APPNAME" -f Makefile install

clean:
	@$(MAKE) --no-print-directory -C "APPNAME" -f Makefile clean

cleand:
	@$(MAKE) --no-print-directory -C "APPNAME" -f Makefile clenad
