Class {
	#name : #BPEL20ScopeImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'variables',
		'correlationSets',
		'isolatedESet',
		'faultHandlers',
		'EXIT_ON_STANDARD_FAULT_EDEFAULT',
		'exitOnStandardFault',
		'terminationHandler',
		'exitOnStandardFaultESet',
		'partnerLinks',
		'ISOLATED_EDEFAULT',
		'activity',
		'isolated',
		'compensationHandler',
		'messageExchanges',
		'eventHandlers'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl class >> annotation [
<MSEClass: #BPEL20ScopeImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> EXIT_ON_STANDARD_FAULT_EDEFAULT [
^ EXIT_ON_STANDARD_FAULT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> EXIT_ON_STANDARD_FAULT_EDEFAULT: aEXIT_ON_STANDARD_FAULT_EDEFAULT [
^ EXIT_ON_STANDARD_FAULT_EDEFAULT := aEXIT_ON_STANDARD_FAULT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> ISOLATED_EDEFAULT [
^ ISOLATED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> ISOLATED_EDEFAULT: aISOLATED_EDEFAULT [
^ ISOLATED_EDEFAULT := aISOLATED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> compensationHandler [
^ compensationHandler
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> compensationHandler: acompensationHandler [
^ compensationHandler := acompensationHandler
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> correlationSets [
^ correlationSets
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> correlationSets: acorrelationSets [
^ correlationSets := acorrelationSets
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> eventHandlers [
^ eventHandlers
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> eventHandlers: aeventHandlers [
^ eventHandlers := aeventHandlers
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> exitOnStandardFault [
^ exitOnStandardFault
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> exitOnStandardFault: aexitOnStandardFault [
^ exitOnStandardFault := aexitOnStandardFault
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> exitOnStandardFaultESet [
^ exitOnStandardFaultESet
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> exitOnStandardFaultESet: aexitOnStandardFaultESet [
^ exitOnStandardFaultESet := aexitOnStandardFaultESet
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> faultHandlers [
^ faultHandlers
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> faultHandlers: afaultHandlers [
^ faultHandlers := afaultHandlers
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> isolated [
^ isolated
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> isolated: aisolated [
^ isolated := aisolated
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> isolatedESet [
^ isolatedESet
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> isolatedESet: aisolatedESet [
^ isolatedESet := aisolatedESet
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> messageExchanges [
^ messageExchanges
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> messageExchanges: amessageExchanges [
^ messageExchanges := amessageExchanges
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> partnerLinks [
^ partnerLinks
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> partnerLinks: apartnerLinks [
^ partnerLinks := apartnerLinks
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> terminationHandler [
^ terminationHandler
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> terminationHandler: aterminationHandler [
^ terminationHandler := aterminationHandler
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> variables [
^ variables
]

{ #category : #'as yet unclassified' }
BPEL20ScopeImpl >> variables: avariables [
^ variables := avariables
]
