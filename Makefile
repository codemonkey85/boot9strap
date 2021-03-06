.PHONY: all
all: boot9strap

.PHONY: boot9strap
boot9strap:
	mkdir -p out
	mkdir -p build
	cd arm9_stage2 && $(MAKE)
	armips boot9strap.s
	python build_boot9strap_firm.py

.PHONY: clean
clean:
	cd arm9_stage2 && $(MAKE) clean
	rm -rf out
	rm -rf build
