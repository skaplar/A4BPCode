Class {
	#name : #BPEL20ForEachImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'completionCondition',
		'startCounterValue',
		'activity',
		'parallel',
		'counterName',
		'finalCounterValue',
		'PARALLEL_EDEFAULT'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl class >> annotation [
<MSEClass: #BPEL20ForEachImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> PARALLEL_EDEFAULT [
^ PARALLEL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> PARALLEL_EDEFAULT: aPARALLEL_EDEFAULT [
^ PARALLEL_EDEFAULT := aPARALLEL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> completionCondition [
^ completionCondition
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> completionCondition: acompletionCondition [
^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> counterName [
^ counterName
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> counterName: acounterName [
^ counterName := acounterName
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> finalCounterValue [
^ finalCounterValue
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> finalCounterValue: afinalCounterValue [
^ finalCounterValue := afinalCounterValue
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> parallel [
^ parallel
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> parallel: aparallel [
^ parallel := aparallel
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> startCounterValue [
^ startCounterValue
]

{ #category : #'as yet unclassified' }
BPEL20ForEachImpl >> startCounterValue: astartCounterValue [
^ startCounterValue := astartCounterValue
]
