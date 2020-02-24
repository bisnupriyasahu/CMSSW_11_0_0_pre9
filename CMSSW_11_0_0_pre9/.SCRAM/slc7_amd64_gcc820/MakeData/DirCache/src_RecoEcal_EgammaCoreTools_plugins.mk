ifeq ($(strip $(RecoEcalEcalClusterFunctions)),)
RecoEcalEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/plugins
PLUGINS:=yes
RecoEcalEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/plugins/$(file). Please fix src/RecoEcal/EgammaCoreTools/plugins/BuildFile.))))
RecoEcalEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/plugins/BuildFile
RecoEcalEcalClusterFunctions_LOC_USE := self  RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects
RecoEcalEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEcalEcalClusterFunctions,RecoEcalEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/plugins))
RecoEcalEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/plugins
ALL_PRODS += RecoEcalEcalClusterFunctions
RecoEcal/EgammaCoreTools_forbigobj+=RecoEcalEcalClusterFunctions
RecoEcalEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins,src_RecoEcal_EgammaCoreTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEcalEcalClusterFunctions_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_plugins
src_RecoEcal_EgammaCoreTools_plugins_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_plugins,src/RecoEcal/EgammaCoreTools/plugins,PLUGINS))
