rpm:
	mkdir dist
ifneq "$(BUILD_NUMBER)" ""
	python setup.py bdist_rpm --release=$(BUILD_NUMBER)
else
	python setup.py bdist_rpm --release=0.`date +'%s'`.test
endif

bdist:
	mkdir dist
ifneq "$(BUILD_NUMBER)" ""
	python setup.py bdist
else
	python setup.py bdist
endif

clean:
	python setup.py clean
	rm -rf build
	rm -rf dist
	rm -rf MANIFEST