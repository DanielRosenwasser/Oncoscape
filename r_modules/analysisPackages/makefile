all:  PCA.pkg PLSR.pkg

clean: 
	R --vanilla -f ../removeInstalledOncoscapePackages.R

test: 
	(cd PLSR/inst/unitTests; make test;)
	(cd PCA/inst/unitTests; make test;)
	- kill `ps aux | grep runPLSRTestWebSocketServer.R | grep -v grep | awk '{print $$2}'` 
	- kill `ps aux | grep runPCATestWebSocketServer.R | grep -v grep | awk '{print $$2}'` 

autoTest:
	(cd PLSR/inst/unitTests; make autoTest;)
	(cd PCA/inst/unitTests; make autoTest;)


PLSR.pkg:
	R --vanilla CMD INSTALL --no-test-load --no-lock PLSR
	(cd PLSR/inst/unitTests; make)

PCA.pkg:
	R --vanilla CMD INSTALL --no-test-load --no-lock PCA
	(cd PCA/inst/unitTests; make)

noSVNall:
	R --vanilla CMD INSTALL --no-test-load --no-lock PLSR
	(cd PLSR/inst/unitTests; make)
	R --vanilla CMD INSTALL --no-test-load --no-lock PCA
	(cd PCA/inst/unitTests; make)
