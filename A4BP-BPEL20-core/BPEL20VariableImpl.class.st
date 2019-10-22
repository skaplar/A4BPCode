Class {
	#name : #BPEL20VariableImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'messageType',
		'xsdElement',
		'type',
		'from'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20VariableImpl class >> annotation [
<MSEClass: #BPEL20VariableImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> from [
^ from
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> from: afrom [
^ from := afrom
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> messageType [
^ messageType
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> messageType: amessageType [
^ messageType := amessageType
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> type: atype [
^ type := atype
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> xsdElement [
^ xsdElement
]

{ #category : #'as yet unclassified' }
BPEL20VariableImpl >> xsdElement: axsdElement [
^ xsdElement := axsdElement
]
