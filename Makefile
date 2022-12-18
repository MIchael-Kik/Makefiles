# Workspace Makefile, add all projects
ifndef config
	config = debug
endif

# For Every project directory add a new variable with the
# Name_config to configure

ifeq ($(config),release)
	"APPNAME"_config = release
else ifeq ($(config),optimize)
	"APPNAME"_config = optimize
else ifeq ($(config),debug)
	"APPNAME"_config = debug
endif	

#Add All project names
PROJECTS := 

.PHONY: all clean $(PROJECTS) uninstall install clean

all: $(PROJECTS)
# add static and shared libs before

"APPNAME": 
	@echo "==== Building ($@) ($("APPNAME"_config)) ===="
	@$(MAKE) --no-print-directory -C $@ -f Makefile config=$("APPNAME"_config)

# Rule name should be same as directrory

#add Extra rules with the same format

# add for every project
clean:
	@${MAKE} --no-print-directory -C "APPNAME" -f Makefile clean
