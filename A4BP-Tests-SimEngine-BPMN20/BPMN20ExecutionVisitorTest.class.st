Class {
	#name : #BPMN20ExecutionVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'bpmnMetamodel'
	],
	#category : #'A4BP-Tests-SimEngine-BPMN20'
}

{ #category : #setUp }
BPMN20ExecutionVisitorTest >> configExecution [
	|parser|
	
	parser := BPMN20Parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	bpmnMetamodel := parser definitions first process values first.
]

{ #category : #testRuning }
BPMN20ExecutionVisitorTest >> testProcessValidation [

	"|execution grabber parser inputScenario bpsimdata simb|
	
	parser := BPMN20Parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	bpmnMetamodel := parser definitions first process values first.
	execution := BPSimBPMN20ExecutionVisitor new.
	grabber := BPSimBPMN20TimeVisitor new.
	bpsimdata := BPSimParser parseString: BPMN20SampleVerySimpleProcess bpmn02WithSim.
	inputScenario := bpsimdata scenarios first.
	execution addGrabber: grabber.
	execution addInputScenario: inputScenario.
	execution resourceController: BPSimResourceControllerFactory resourceController.
	simb := [ 
		(BPSimBuilder new buildScenario timer 
			processingParameters: bpmnMetamodel flowElements) currentScenario 
			].
	
	execution addOutputScenario: simb value.
	execution addFullOutputScenario:  simb value.
	execution addProcessModel: bpmnMetamodel.
	execution runExecution."
	
]

{ #category : #testRuning }
BPMN20ExecutionVisitorTest >> testTimeValidation [

	"|execution grabber parser inputScenario bpsimdata simb|
	
	parser := BPMN20Parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	bpmnMetamodel := parser definitions first process values first.
	execution := BPSimBPMN20ExecutionVisitor new.
	grabber := BPSimBPMN20TimeVisitor new.
	bpsimdata := BPSimParser parseString: BPMN20SampleVerySimpleProcess bpmn02WithSim.
	inputScenario := bpsimdata scenarios first.
	
	execution addGrabber: grabber.
	execution addInputScenario: inputScenario.
	execution resourceController: BPSimResourceControllerFactory resourceController.
	simb := [ (BPSimBuilder new buildScenario timer processingParameters: bpmnMetamodel flowElements) currentScenario ].
	execution addOutputScenario: simb value.
	execution addFullOutputScenario:  simb value.
	execution addProcessModel: bpmnMetamodel.
	execution runExecution."

]

{ #category : #testRuning }
BPMN20ExecutionVisitorTest >> testTsunamiv3TimeValidation [

	"|execution grabber parser inputScenario simb task|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process 
	select:[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	execution := BPSimBPMN20ExecutionVisitor new.
	grabber := BPSimBPMN20TimeVisitor new.
	
	simb := BPSimBuilder new.
	simb buildScenarioId: 'tsunamiInputScenario'.
	
	task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb timer processingParameters: task config:[ :t |
			| p |
			p := BPSimDurationParameter new.
			p value: 10.
			p 
		].
		
	inputScenario := simb currentScenario.
	
	execution addGrabber: grabber.
	execution addInputScenario: inputScenario.
	execution addProcessModel: bpmnMetamodel.
	execution resourceController: BPSimResourceControllerFactory resourceController.
	simb := [ (BPSimBuilder new buildScenario timer processingParameters: bpmnMetamodel flowElements) currentScenario ].
	execution addOutputScenario: simb value.
	execution addFullOutputScenario:  simb value.
	execution runExecution."
	
	"With 10 for each task activity"
	"self assert: grabber processingTime = 200."

]
