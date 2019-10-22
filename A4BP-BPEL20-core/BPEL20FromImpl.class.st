Class {
	#name : #BPEL20FromImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'opaqueESet',
		'partName',
		'variable',
		'expression',
		'type',
		'ENDPOINT_REFERENCE_EDEFAULT',
		'endpointReferenceESet',
		'OPAQUE_EDEFAULT',
		'serviceRef',
		'literalESet',
		'part',
		'property',
		'literal',
		'query',
		'opaque',
		'LITERAL_EDEFAULT',
		'unsafeLiteral',
		'endpointReference',
		'UNSAFE_LITERAL_EDEFAULT',
		'partnerLink'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20FromImpl class >> annotation [
<MSEClass: #BPEL20FromImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> ENDPOINT_REFERENCE_EDEFAULT [
^ ENDPOINT_REFERENCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> ENDPOINT_REFERENCE_EDEFAULT: aENDPOINT_REFERENCE_EDEFAULT [
^ ENDPOINT_REFERENCE_EDEFAULT := aENDPOINT_REFERENCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> LITERAL_EDEFAULT [
^ LITERAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> LITERAL_EDEFAULT: aLITERAL_EDEFAULT [
^ LITERAL_EDEFAULT := aLITERAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> OPAQUE_EDEFAULT [
^ OPAQUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> OPAQUE_EDEFAULT: aOPAQUE_EDEFAULT [
^ OPAQUE_EDEFAULT := aOPAQUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> UNSAFE_LITERAL_EDEFAULT [
^ UNSAFE_LITERAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> UNSAFE_LITERAL_EDEFAULT: aUNSAFE_LITERAL_EDEFAULT [
^ UNSAFE_LITERAL_EDEFAULT := aUNSAFE_LITERAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> endpointReference [
^ endpointReference
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> endpointReference: aendpointReference [
^ endpointReference := aendpointReference
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> endpointReferenceESet [
^ endpointReferenceESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> endpointReferenceESet: aendpointReferenceESet [
^ endpointReferenceESet := aendpointReferenceESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> expression [
^ expression
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> expression: aexpression [
^ expression := aexpression
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> literal [
^ literal
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> literal: aliteral [
^ literal := aliteral
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> literalESet [
^ literalESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> literalESet: aliteralESet [
^ literalESet := aliteralESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> opaque [
^ opaque
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> opaque: aopaque [
^ opaque := aopaque
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> opaqueESet [
^ opaqueESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> opaqueESet: aopaqueESet [
^ opaqueESet := aopaqueESet
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> part [
^ part
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> part: apart [
^ part := apart
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> partName [
^ partName
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> partName: apartName [
^ partName := apartName
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> partnerLink: apartnerLink [
^ partnerLink := apartnerLink
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> property [
^ property
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> property: aproperty [
^ property := aproperty
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> query [
^ query
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> query: aquery [
^ query := aquery
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> serviceRef [
^ serviceRef
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> serviceRef: aserviceRef [
^ serviceRef := aserviceRef
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> type: atype [
^ type := atype
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> unsafeLiteral [
^ unsafeLiteral
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> unsafeLiteral: aunsafeLiteral [
^ unsafeLiteral := aunsafeLiteral
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> variable [
^ variable
]

{ #category : #'as yet unclassified' }
BPEL20FromImpl >> variable: avariable [
^ variable := avariable
]
