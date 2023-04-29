_MAJOR	:= 1
_MINOR	:= 1
_PATCH	:= 2

FILES	:=	base_rules base_tools gamecube_rules wii_rules

all:
	@echo "use dist or install targets"

install:
	@cp -v $(FILES) $(DESTDIR)$(DEVKITPRO)/devkitPPC

dist:
	@tar -cJf devkitppc-rules-$(_MAJOR).$(_MINOR).$(_PATCH).tar.xz $(FILES) Makefile
