ifeq ($(strip $(PyMyModulesTest)),)
PyMyModulesTest := self/src/MyModules/Test/python
src_MyModules_Test_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/MyModules/Test/python)
PyMyModulesTest_files := $(patsubst src/MyModules/Test/python/%,%,$(wildcard $(foreach dir,src/MyModules/Test/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyMyModulesTest_LOC_USE := self  
PyMyModulesTest_PACKAGE := self/src/MyModules/Test/python
ALL_PRODS += PyMyModulesTest
PyMyModulesTest_INIT_FUNC        += $$(eval $$(call PythonProduct,PyMyModulesTest,src/MyModules/Test/python,src_MyModules_Test_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyMyModulesTest,src/MyModules/Test/python))
endif
ALL_COMMONRULES += src_MyModules_Test_python
src_MyModules_Test_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_python,src/MyModules/Test/python,PYTHON))
