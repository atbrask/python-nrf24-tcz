PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	cd pynrf24 && $(PYTHON) setup.py install --prefix=../python-nrf24/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-nrf24
	cp /tmp/tcztools/python-nrf24.tcz .
	cp /tmp/tcztools/python-nrf24.tcz.list .
	cp /tmp/tcztools/python-nrf24.tcz.md5.txt .

clean:
	rm -rf pynrf24 python-nrf24

get:
	git clone https://www.github.com/atbrask/pynrf24.git
