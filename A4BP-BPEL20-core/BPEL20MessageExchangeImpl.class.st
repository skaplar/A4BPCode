Class {
	#name : #BPEL20MessageExchangeImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'name'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20MessageExchangeImpl class >> annotation [
<MSEClass: #BPEL20MessageExchangeImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20MessageExchangeImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20MessageExchangeImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]
