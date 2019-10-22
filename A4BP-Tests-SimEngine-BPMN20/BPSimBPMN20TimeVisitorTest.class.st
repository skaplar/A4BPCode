"
A BPSimBPMN20TimeVisitorTest is a test class for testing the behavior of BPSimBPMN20TimeVisitor
"
Class {
	#name : #BPSimBPMN20TimeVisitorTest,
	#superclass : #TestCase,
	#category : #'A4BP-Tests-SimEngine-BPMN20'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20TimeVisitorTest >> testHistoricalTime [
	"|parser inputScenario simb bpmnMetamodel  bpSimEngine  |
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	simb := BPSimBuilder buildScenarioId: 'tsunamiInputScenario01'.
	simb processModel: bpmnMetamodel.

	simb timer processingTime: ( simb duration value: 10 ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName: 'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T20 : Close tsunami reponse'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: 10 ) inElementName:'T19'' : Search distress fishermen'.

	inputScenario := simb currentScenario.
	bpSimEngine runSimulationSimpleThreadUsing: inputScenario."
	
	"Start test process"
	
	"simulation := bpSimEngine simulations first.
	self assert: simulation notNil.
	el :=  simulation out getParameterByName: 'T3 : Receive tsunami start '.
	self assert: el notNil.
	self assert: el historicalTime vv = 10.	
	el :=  simulation out getParameterByName:  'T5 : Notify functional units to start'.
	self assert: el notNil.
	self assert: el historicalTime vv = 20.	
	el :=  simulation out getParameterByName:  'T4 : Fire the flares'.
	self assert: el notNil.
	self assert: el historicalTime vv = 20.	
	el :=  simulation out getParameterByName: 'T6 : Inform by portable speakers'.
	self assert: el notNil.
	self assert: el historicalTime vv = 30."

]
