Class {
	#name : #BPSimBPMN20ExamplesTecnicalSupport01,
	#superclass : #Object,
	#instVars : [
		'parser',
		'processModel',
		'bpSimEngine'
	],
	#category : #'A4BP-SimEngine-BPMN20-examples'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 class >> exampleRun [
	^ self new exampleRun

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 class >> exampleRunOpen [
	^ self exampleRun plot01 open.

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 >> config [
	parser := BPMN20Parser parseString: BPSimImplementerGuidev1_0_2Test tecnicalSupportProcessV1_0_1_bpmn.
	processModel := parser definitions first.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 >> exampleRun [
	self config.
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: processModel.
	bpSimEngine runSimulationUsing: self scenario01 for: 1.
"	bpSimEngine runSimulationUsing: self scenario02 for: 1.
	bpSimEngine runSimulationUsing: self scenario03 for: 1."
	^ self
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 >> plot01 [
	| b ds i cv composer standarview ht|
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
	standarview := BPMN20StandarVisualizationSvg new.
	standarview bpObj: bpSimEngine processModel.
	standarview executeVisualization: composer view.
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
BPSimBPMN20ExamplesTecnicalSupport01 >> plot02 [
	| b ds i cv composer standarview ht|
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
	standarview := BPMN20StandarVisualizationSvg new.
	standarview bpObj: bpSimEngine processModel.
	standarview executeVisualization: composer view.
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
BPSimBPMN20ExamplesTecnicalSupport01 >> scenario01 [
|simb  gateways ts|
simb := BPSimBuilder buildScenarioId: 'TecnicalSupport'.
simb processModel: processModel.
ts := 5.

simb resource quantity: (simb numeric value: 10) inElementId:  '_10-57'. "(Get issue description from customer)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-456'. "(Solution is not effective)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-138'. "(Provide solution to customer)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-136'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-454'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-235'. "(Request 1st level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-108'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-195'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-114'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-233'. "(Solution is effective)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-42'. "(Customer issue report)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-450'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-433'. "(Solution received from 1st level of support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-920'. "(Inform customer the issue is going to be escalated)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-189'. "(Able to  provide solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-219'. "(Customer issue resolved)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-971'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-286'. "(Unable to  provide solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-217'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-744'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-380'. "(Provide solution to Front Office)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-288'. "(1st level Issue)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-356'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-723'. "(Solution received from 2nd level of support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-577'. "(Issue handled by 1st level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-303'. "(Find solution 1st level issue)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-740'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-591'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-458'. "(Request 2nd level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-378'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-509'. "(Unable to provide 1st level solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-354'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-431'. "(Able to provide  1st level solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-617'. "(Provide solution to 1st level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-593'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-779'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-977'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-746'. "(Issue handled by  2 nd level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-760'. "(Solution received from supplier)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-615'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-668'. "(Able to provide  2nd level solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-777'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-975'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-526'. "(Find solution 2nd level issue)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-511'. "(2nd  level Issue)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-721'. "(Unable to provide 2nd level solution)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-670'. "(Request supplier support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-898'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-916'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-794'. "(Find solution supplier issue)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-847'. "(Provide solution to 2nd level support)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-845'. "()BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-902'. "(Issue handled by supplier)BPMN20DefinitionsImpl" 
simb resource quantity: (simb numeric value: 10) inElementId:  '_10-781'. "(Supplier Issue)BPMN20DefinitionsImpl" 



simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-57'. "(Get issue description from customer)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-456'. "(Solution is not effective)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-138'. "(Provide solution to customer)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-136'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-454'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-235'. "(Request 1st level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-108'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-195'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-114'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-233'. "(Solution is effective)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-42'. "(Customer issue report)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-450'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-433'. "(Solution received from 1st level of support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-920'. "(Inform customer the issue is going to be escalated)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-189'. "(Able to  provide solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-219'. "(Customer issue resolved)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-971'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-286'. "(Unable to  provide solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-217'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-744'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-380'. "(Provide solution to Front Office)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-288'. "(1st level Issue)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-356'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-723'. "(Solution received from 2nd level of support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-577'. "(Issue handled by 1st level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-303'. "(Find solution 1st level issue)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-740'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-591'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-458'. "(Request 2nd level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-378'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-509'. "(Unable to provide 1st level solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-354'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-431'. "(Able to provide  1st level solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-617'. "(Provide solution to 1st level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-593'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-779'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-977'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-746'. "(Issue handled by  2 nd level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-760'. "(Solution received from supplier)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-615'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-668'. "(Able to provide  2nd level solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-777'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-975'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-526'. "(Find solution 2nd level issue)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-511'. "(2nd  level Issue)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-721'. "(Unable to provide 2nd level solution)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-670'. "(Request supplier support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-898'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-916'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-794'. "(Find solution supplier issue)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-847'. "(Provide solution to 2nd level support)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-845'. "()BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-902'. "(Issue handled by supplier)BPMN20DefinitionsImpl" 
simb timer processingTime: ( simb duration value: 10 ) inElementId:  '_10-781'. "(Supplier Issue)BPMN20DefinitionsImpl" 



gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).

gateways do:[ :g | simb control probabilityParameterOnGateway: g ].

^ simb currentScenario.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTecnicalSupport01 >> scenario02 [
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
BPSimBPMN20ExamplesTecnicalSupport01 >> scenario03 [
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
