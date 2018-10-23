TSA = 'http://tsa.starfieldtech.com'
KEYSTORE = 'ExchangeCertificate.p12'
STOREPASS ?= $(shell bash -c 'read -s -p "Storepass: " pwd; echo $$pwd')
EID = 'com.brunoherfst.zxpboilerplate'
EXT = '.zxp'

.PHONY: zxp exec

exec:
	chmod a+x MakeZXP.command

zxp:
	@java -jar signingtoolkit/ucf.jar -package -storetype PKCS12 -keystore $(KEYSTORE) -storepass $(STOREPASS) -tsa $(TSA) $(EID)$(EXT) -C ././$(EID)/ .
	@echo $@ completed
