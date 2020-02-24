ifeq ($(strip $(MyModulesTestAuto)),)
MyModulesTestAuto := self/src/MyModules/Test/plugins
PLUGINS:=yes
MyModulesTestAuto_files := $(patsubst src/MyModules/Test/plugins/%,%,$(wildcard $(foreach dir,src/MyModules/Test/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MyModulesTestAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyModules/Test/plugins/BuildFile
MyModulesTestAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco
MyModulesTestAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MyModulesTestAuto,MyModulesTestAuto,$(SCRAMSTORENAME_LIB),src/MyModules/Test/plugins))
MyModulesTestAuto_PACKAGE := self/src/MyModules/Test/plugins
ALL_PRODS += MyModulesTestAuto
MyModules/Test_forbigobj+=MyModulesTestAuto
MyModulesTestAuto_INIT_FUNC        += $$(eval $$(call Library,MyModulesTestAuto,src/MyModules/Test/plugins,src_MyModules_Test_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MyModulesTestAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,MyModulesTestAuto,src/MyModules/Test/plugins))
endif
ALL_COMMONRULES += src_MyModules_Test_plugins
src_MyModules_Test_plugins_parent := MyModules/Test
src_MyModules_Test_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_plugins,src/MyModules/Test/plugins,PLUGINS))
