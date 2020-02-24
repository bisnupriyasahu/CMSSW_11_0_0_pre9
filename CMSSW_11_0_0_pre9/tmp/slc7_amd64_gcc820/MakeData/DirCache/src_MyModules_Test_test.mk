ifeq ($(strip $(testMyModulesTestTP)),)
testMyModulesTestTP := self/src/MyModules/Test/test
testMyModulesTestTP_files := $(patsubst src/MyModules/Test/test/%,%,$(foreach file,test_catch2_*.cc,$(eval xfile:=$(wildcard src/MyModules/Test/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/MyModules/Test/test/$(file). Please fix src/MyModules/Test/test/BuildFile.))))
testMyModulesTestTP_TEST_RUNNER_CMD :=  testMyModulesTestTP 
testMyModulesTestTP_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyModules/Test/test/BuildFile
testMyModulesTestTP_LOC_USE := self  FWCore/TestProcessor catch2
testMyModulesTestTP_PACKAGE := self/src/MyModules/Test/test
ALL_PRODS += testMyModulesTestTP
testMyModulesTestTP_INIT_FUNC        += $$(eval $$(call Binary,testMyModulesTestTP,src/MyModules/Test/test,src_MyModules_Test_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testMyModulesTestTP_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,testMyModulesTestTP,src/MyModules/Test/test))
endif
ALL_COMMONRULES += src_MyModules_Test_test
src_MyModules_Test_test_parent := MyModules/Test
src_MyModules_Test_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_test,src/MyModules/Test/test,TEST))
