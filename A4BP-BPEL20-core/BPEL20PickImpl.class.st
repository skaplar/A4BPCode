Class {
	#name : #BPEL20PickImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'createInstanceESet',
		'createInstance',
		'alarm',
		'messages',
		'CREATE_INSTANCE_EDEFAULT'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20PickImpl class >> annotation [
<MSEClass: #BPEL20PickImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> CREATE_INSTANCE_EDEFAULT [
^ CREATE_INSTANCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> CREATE_INSTANCE_EDEFAULT: aCREATE_INSTANCE_EDEFAULT [
^ CREATE_INSTANCE_EDEFAULT := aCREATE_INSTANCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> alarm [
^ alarm
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> alarm: aalarm [
^ alarm := aalarm
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> createInstance [
^ createInstance
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> createInstance: acreateInstance [
^ createInstance := acreateInstance
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> createInstanceESet [
^ createInstanceESet
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> createInstanceESet: acreateInstanceESet [
^ createInstanceESet := acreateInstanceESet
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> messages [
^ messages
]

{ #category : #'as yet unclassified' }
BPEL20PickImpl >> messages: amessages [
^ messages := amessages
]
