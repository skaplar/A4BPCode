"
A BPMN20ProcessImplTest is a test class for testing the behavior of BPMN20ProcessImpl
"
Class {
	#name : #BPMN20ProcessImplTest,
	#superclass : #BPMN20ObjectTest,
	#category : #'A4BP-Tests-BPMN20-core-model'
}

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testActivities [
	|toTest|
	toTest := pVerySimple01 process values first activities.
	self assert: toTest isCollection.
	self assert: toTest size = 1.
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testGateways [
	|toTest|
	toTest := pTsunamiv3 process values first gateways.
	self assert: toTest isCollection.
	"self assert: toTest size = 1."
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testMetricCFCRel [
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testMetricProcessDifficulty [
	"Process Difificulty
	 D = ( n1 / 2 ) * ( N2 / n2) 
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	|toTest d|
	toTest := pVerySimple01 process values first.
	d := toTest metricProcessDifficulty.
	self assert: d = 0.
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testMetricProcessLength [
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testMetricProcessVolume [
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testNumberOfActivities [
]

{ #category : #'tests-metrics' }
BPMN20ProcessImplTest >> testNumberOfGateways [
]
