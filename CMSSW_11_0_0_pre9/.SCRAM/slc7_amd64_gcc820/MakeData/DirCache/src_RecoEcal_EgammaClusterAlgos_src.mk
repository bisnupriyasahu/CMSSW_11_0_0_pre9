ifeq ($(strip $(RecoEcal/EgammaClusterAlgos)),)
ALL_COMMONRULES += src_RecoEcal_EgammaClusterAlgos_src
src_RecoEcal_EgammaClusterAlgos_src_parent := RecoEcal/EgammaClusterAlgos
src_RecoEcal_EgammaClusterAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaClusterAlgos_src,src/RecoEcal/EgammaClusterAlgos/src,LIBRARY))
RecoEcalEgammaClusterAlgos := self/RecoEcal/EgammaClusterAlgos
RecoEcal/EgammaClusterAlgos := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_files := $(patsubst src/RecoEcal/EgammaClusterAlgos/src/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaClusterAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEcalEgammaClusterAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaClusterAlgos/BuildFile
RecoEcalEgammaClusterAlgos_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math CondFormats/ESObjects CondFormats/DataRecord RecoEcal/EgammaCoreTools Geometry/CaloGeometry Geometry/CaloTopology RecoParticleFlow/PFClusterTools RecoEgamma/EgammaTools clhep
RecoEcalEgammaClusterAlgos_EX_LIB   := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_EX_USE   := $(foreach d,$(RecoEcalEgammaClusterAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaClusterAlgos_PACKAGE := self/src/RecoEcal/EgammaClusterAlgos/src
ALL_PRODS += RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_CLASS := LIBRARY
RecoEcal/EgammaClusterAlgos_forbigobj+=RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEgammaClusterAlgos,src/RecoEcal/EgammaClusterAlgos/src,src_RecoEcal_EgammaClusterAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
