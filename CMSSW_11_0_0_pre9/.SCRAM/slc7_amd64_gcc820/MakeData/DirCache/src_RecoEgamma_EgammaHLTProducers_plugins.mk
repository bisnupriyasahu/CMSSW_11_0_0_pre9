ifeq ($(strip $(RecoEgammaEgammaHLTProducersPlugins)),)
RecoEgammaEgammaHLTProducersPlugins := self/src/RecoEgamma/EgammaHLTProducers/plugins
PLUGINS:=yes
RecoEgammaEgammaHLTProducersPlugins_files := $(patsubst src/RecoEgamma/EgammaHLTProducers/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaHLTProducers/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaHLTProducers/plugins/$(file). Please fix src/RecoEgamma/EgammaHLTProducers/plugins/BuildFile.))))
RecoEgammaEgammaHLTProducersPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaHLTProducers/plugins/BuildFile
RecoEgammaEgammaHLTProducersPlugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/EgammaCandidates Geometry/CaloGeometry RecoEcal/EgammaCoreTools RecoEgamma/EgammaElectronAlgos RecoEgamma/EgammaIsolationAlgos MagneticField/Engine MagneticField/Records DataFormats/DetId DataFormats/TrackingRecHit CondFormats/L1TObjects CondFormats/DataRecord Geometry/TrackerGeometryBuilder DataFormats/L1Trigger
RecoEgammaEgammaHLTProducersPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaEgammaHLTProducersPlugins,RecoEgammaEgammaHLTProducersPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaHLTProducers/plugins))
RecoEgammaEgammaHLTProducersPlugins_PACKAGE := self/src/RecoEgamma/EgammaHLTProducers/plugins
ALL_PRODS += RecoEgammaEgammaHLTProducersPlugins
RecoEgamma/EgammaHLTProducers_forbigobj+=RecoEgammaEgammaHLTProducersPlugins
RecoEgammaEgammaHLTProducersPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaHLTProducersPlugins,src/RecoEgamma/EgammaHLTProducers/plugins,src_RecoEgamma_EgammaHLTProducers_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaEgammaHLTProducersPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaEgammaHLTProducersPlugins,src/RecoEgamma/EgammaHLTProducers/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaHLTProducers_plugins
src_RecoEgamma_EgammaHLTProducers_plugins_parent := RecoEgamma/EgammaHLTProducers
src_RecoEgamma_EgammaHLTProducers_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaHLTProducers_plugins,src/RecoEgamma/EgammaHLTProducers/plugins,PLUGINS))
