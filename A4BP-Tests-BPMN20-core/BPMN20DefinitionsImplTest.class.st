"
A BPMN20DefinitionsImplTest is a test class for testing the behavior of BPMN20DefinitionsImpl
"
Class {
	#name : #BPMN20DefinitionsImplTest,
	#superclass : #BPMN20ObjectTest,
	#category : #'A4BP-Tests-BPMN20-core-model'
}

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testMetricIC [
	|metric|
	metric := pVerySimple01 metricIC.
	self assert: metric isNumber.
	self assert: metric = 0.
]

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testMetricProcessDifficulty [
	|metric|
	metric := pVerySimple01 metricProcessDifficulty.
	self assert: metric isNumber.
	self assert: metric = (1/2).
]

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testMetricProcessLength [
	|metric|
	metric := pVerySimple01 metricProcessLength.
	self assert: metric isNumber.
	self assert: metric = 0.
]

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testMetricProcessVolume [
	|metric|
	metric := pVerySimple01 metricProcessVolume.
	self assert: metric isNumber.
	self assert: metric = 0.
]

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testNumberOfActivities [
	|metric|
	metric := pVerySimple01 numberOfActivities.
	self assert: metric isNumber.
	self assert: metric = 1.
]

{ #category : #'tests-metrics' }
BPMN20DefinitionsImplTest >> testNumberOfGateways [
	|metric|
	metric := pVerySimple01 numberOfGateways.
	self assert: metric isNumber.
	self assert: metric = 0.
]
