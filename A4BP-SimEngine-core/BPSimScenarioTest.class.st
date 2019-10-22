"
A BPSimScenarioTest is a test class for testing the behavior of BPSimScenario
"
Class {
	#name : #BPSimScenarioTest,
	#superclass : #TestCase,
	#instVars : [
		'example1',
		'example2'
	],
	#category : #'A4BP-SimEngine-core-Tests'
}

{ #category : #running }
BPSimScenarioTest >> setUp [
	"Examples taken from BPSim Implementer's Guide v1.0.2"

	self setUpExample1.
	self setUpExample2
]

{ #category : #running }
BPSimScenarioTest >> setUpElementParametersExample2Scenario1 [
	| elementParameters  |
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_6'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_2017EC19-4BD5-40D7-9014-E7D337A68E01'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_ACDC390F-49FD-43A3-ACD6-1EBB8074801D'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_C94EFA57-E605-4564-BFC4-22A84C660A6A'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_65F6E8B9-FDD3-4770-B12B-87862F37BDF6'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_F366069F-C180-4D69-B2BF-4124649EC36F'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_57EE71B2-5287-46A2-9B24-83A68131714C'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_D6383F72-7F7A-48F8-A742-A26F36A8DC10'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_DA142784-0125-46E0-A3CA-004302BD5E21'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_3D6F2455-BFFB-44BB-A052-892FB15FEEB4'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_93351D59-990B-46B0-80AB-FEEF088E9D7B'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_6E1A332C-9187-4C4A-BD0F-27167F940786'.
	example2 scenarios first addElementParameters: elementParameters.
	
	elementParameters := BPSimElementParameters new.
	elementParameters elementRef: '_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB'.
	example2 scenarios first addElementParameters: elementParameters.
	
]

{ #category : #running }
BPSimScenarioTest >> setUpExample1 [
	"Example taken from BPSim Implementer's Guide v1.0.2"
	"Example 1: Repairing a motor vehicle"

	| scenarioParameters scenario1 |
	example1 := BPSimData new.
	scenario1 := BPSimScenario new
		id: #S1;
		author: 'Tim Stephenson';
		aName: 'Scenario 1: Main flow without sub-processes'.
	scenario1
		created: '2013-03-06T21:00:00';
		modified: '2013-03-06T21:00:00'.
	scenarioParameters := BPSimScenarioParameters new.
	scenarioParameters replication: 3.
	scenario1 scenarioParameters: scenarioParameters.
	scenario1 scenarioParameters duration: 60 minutes.
	example1 addScenario: scenario1
]

{ #category : #running }
BPSimScenarioTest >> setUpExample2 [
	"Example taken from BPSim Implementer's Guide v1.0.2"
	"Example 2: Originating a home loan"

	| scenarioParameters scenario1 |
	example2 := BPSimData new.
	
	scenario1 := BPSimScenario new.
	scenario1
		id: #default;
		author: 'Tim Stephenson';
		aName: 'Scenario 1'.
	scenarioParameters := BPSimScenarioParameters new.
	scenarioParameters replication: 2.
	scenario1 scenarioParameters: scenarioParameters.
	scenario1 scenarioParameters duration: 40 minutes.
	example2 addScenario: scenario1.
	self setUpElementParametersExample2Scenario1
]

{ #category : #tests }
BPSimScenarioTest >> testEighteenElementParametersInExample2Scenario1 [
	self
		assert: example2 scenarios first elementParameters size
		equals: 1
]

{ #category : #tests }
BPSimScenarioTest >> testExample1Scenario1Parameters [
	self
		assert: example1 scenarios first scenarioParameters replication
		equals: 3.
	self
		assert: example1 scenarios first scenarioParameters duration
		equals: 60 minutes
]

{ #category : #tests }
BPSimScenarioTest >> testExample2Scenario1Parameters [
	self
		assert: example2 scenarios first scenarioParameters replication
		equals: 2.
	self
		assert: example2 scenarios first scenarioParameters duration
		equals: 40 minutes
]

{ #category : #tests }
BPSimScenarioTest >> testSetupExample1Scenario1 [
	self assert: example1 scenarios first author equals: 'Tim Stephenson'
]
