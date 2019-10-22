Class {
	#name : #BPSimBPMN20ExamplesCarPairProcess01,
	#superclass : #Object,
	#instVars : [
		'parser',
		'processModel',
		'bpSimEngine'
	],
	#category : #'A4BP-SimEngine-BPMN20-examples'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 class >> exampleRun [
	^ self new exampleRun

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 class >> exampleRunOpen [
	^ self exampleRun plot01 open.

]

{ #category : #accessing }
BPSimBPMN20ExamplesCarPairProcess01 >> config [
	parser := BPMN20Parser parseString: BPSimImplementerGuidev1_0_2Test carRepairProcessV1_0_bpmn.
	processModel := parser definitions first
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 >> exampleRun [
	self config.
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: processModel.
	bpSimEngine runSimulationUsing: self scenario01 for: 1.
"	bpSimEngine runSimulationUsing: self scenario02 for: 1.
	bpSimEngine runSimulationUsing: self scenario03 for: 1."
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 >> plot01 [
	| b ds i cv composer standardview ht|
	composer := RTComposer new.
	composer gap: 100.
	ht := RTHighlightable allSibblings.
	ht highlightedColor: Color lightOrange.
	b := RTGrapher new.
	b view: composer view.
	b extent: 800 @ 600.
	b interaction popup.
	b view @ RTDraggableView.
	i:=0.
	cv := Dictionary new.
	
	"======="
	standardview := BPMN20StandarVisualizationSvg new.
	standardview bpObj: bpSimEngine processModel.
	standardview executeVisualization: composer view.
	composer layout: RTVerticalLineLayout new.
	composer propagateHighlight.
	composer group:#BPMN.
	composer propagateHighlightToAll.
	"======"
	
	composer view elements do:[ :el |
		el when: TRMouseClick do: [ :evt | 
			bpSimEngine simulations
			do: [ :s | 
				(s fullOutputScenario getParameterAt: el model) inspect ].
		].
	].
	
	bpSimEngine simulations first fullOutputScenario elementParameters do:[:p | 
		cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].

	" each simulation is a scenario to display"
	bpSimEngine simulations
		do: [ :s | 
			|y |
			i := i + 1.
			y:=i.
			ds := RTDataSet new.
			ds interaction popup text:[ :el | el aName].
			ds dotShape rectangle
				"width: [ :el | | p |  p :=  s fullOutputScenario getParameterAt: el. (p processingTime mean v asInteger) * 10];"
				width: 10;
				height: 20;
				color: [ :p | cv at: p id].
			ds points: s processModel allActivities.
			ds x: [ :el | |p v| 
				p :=  s fullOutputScenario getParameterAt: el.
				v:= p historicalTime v v asInteger * 10. 
				v = 0 ifTrue:[v := 1]. 
				v].
			ds y: [ :p |  y ].			
			b add: ds ].
		
	b axisX title:'Time'.
	b axisY title:'Simulation'.
	b build.
	
	composer propagateHighlight.
	composer group:#Time.
	"======"
	composer move: #Time onTheLeftOf: #BPMN.
	composer nameGroup: #BPMN as: 'Business Process Notation'.
	composer nameGroup: #Time as: 'Time information'.
	composer view canvas camera focusOnCenterScaled.
	^ composer view
	  
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 >> scenario01 [
|simb ts gateways |
simb := BPSimBuilder buildScenarioId: 'TecnicalSupport'.
simb processModel: processModel.
ts := 5.

simb resource quantity: (simb numeric value: 10) inElementId:   '_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E'. "(Initial Estimate Accepted)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2'. "(Repair Car)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C'. "(Customer Arrives)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_9088D441-44C5-462B-8695-47D60A7BC451'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_222A5787-C138-497B-8638-02121C5E0477'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA'. "(Make Estimate)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0'. "(Verify if Estimate Accepted)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_3654E294-536A-4CD2-9950-11F02657EE60'. "(Initial Estimate Not Accepted)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_78172A06-7EC8-47CC-B49B-01EAD0676195'. "(Remit Car)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_0884CEBC-44CE-4BE2-958F-8941946BDA64'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_CB71865E-954A-4D3D-874F-8DB33A5B391B'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_12A4A22E-9449-4E50-BDFC-AC00C8DE8660'. "(Accept Payment)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_4CFC937C-2E42-4671-859E-42E710931963'. "(Customer Leaves Shop)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_87E52808-857B-45B0-93E8-F6D7AC0B4B3E'. "(Initial Estimate Not Accepted)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_956694A6-DFD0-4422-800E-A7DF51A627C0'. "(Prepare Invoice)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_1F31B20E-FE41-440D-9D44-E7437D1639C6'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_F7498C3B-5925-415A-80D7-D16758B353C9'. "(Accepted?)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_79CF3D66-DDC0-4E70-A721-206B98C9106D'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:   '_896FB358-BF3A-4609-8E83-8405D72DEA9B'. "()BPMN20DefinitionsImpl" 




simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E'. "(Initial Estimate Accepted)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2'. "(Repair Car)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C'. "(Customer Arrives)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_9088D441-44C5-462B-8695-47D60A7BC451'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_222A5787-C138-497B-8638-02121C5E0477'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA'. "(Make Estimate)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0'. "(Verify if Estimate Accepted)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_3654E294-536A-4CD2-9950-11F02657EE60'. "(Initial Estimate Not Accepted)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_78172A06-7EC8-47CC-B49B-01EAD0676195'. "(Remit Car)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_0884CEBC-44CE-4BE2-958F-8941946BDA64'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_CB71865E-954A-4D3D-874F-8DB33A5B391B'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_12A4A22E-9449-4E50-BDFC-AC00C8DE8660'. "(Accept Payment)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_4CFC937C-2E42-4671-859E-42E710931963'. "(Customer Leaves Shop)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_87E52808-857B-45B0-93E8-F6D7AC0B4B3E'. "(Initial Estimate Not Accepted)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_956694A6-DFD0-4422-800E-A7DF51A627C0'. "(Prepare Invoice)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_1F31B20E-FE41-440D-9D44-E7437D1639C6'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_F7498C3B-5925-415A-80D7-D16758B353C9'. "(Accepted?)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_79CF3D66-DDC0-4E70-A721-206B98C9106D'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementName:  '_896FB358-BF3A-4609-8E83-8405D72DEA9B'. "()BPMN20DefinitionsImpl" 




gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).

gateways do:[ :g | simb control probabilityParameterOnGateway: g ].

^ simb currentScenario.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 >> scenario02 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario02'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 10.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T1 : Detect tsunami risk'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T2 : Inform tsunami start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T14 : Detect tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T15 : Inform tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.


	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesCarPairProcess01 >> scenario03 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario03'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 12.
		simb timer processingTime: ( simb duration value: ts ) inElementName: 'T1 : Detect tsunami risk'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T2 : Inform tsunami start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T14 : Detect tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T15 : Inform tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.



	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]
