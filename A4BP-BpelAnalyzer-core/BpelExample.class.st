"
A set of message to execute mondrian shapes

"
Class {
	#name : #BpelExample,
	#superclass : #Object,
	#category : #'A4BP-BpelAnalyzer-core-example'
}

{ #category : #'analitics-example' }
BpelExample >> BPVCSOAContextProcessCFC [
	"
	self new BPVCSOAContextProcessCFC
	"

	| v soa rel |
	soa := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := RTMondrian new.	"generate information to draw for each iteration of nodes"
	v shape rectangle withoutBorder.
	v
		node: 'bpel'
		forIt: [ 
			v interaction
				popupText: [ :a | '(CFCxNoRel)=(' , a calculateCFC asString , 'x' , a numberOfRelations asString , ')' ];
				action: #inspect.
			v shape rectangle
				height: [ :a | a calculateCFC * 5 ];
				width: [ :a | a numberOfRelations * 5 ].
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v shape circle
						size: 1;
						fillColor: (Color blue alpha: 0.3).
					v nodes: p lstActivities.
					v shape circle
						size: 1;
						fillColor: (Color lightGreen alpha: 0.3).
					v nodes: p lstVariables.
					v layout grid ] ].
	v open
]

{ #category : #'analitics-example' }
BpelExample >> BPVCSOAContextSimple [
	"
	self new BPVCSOAContextSimple
	"

	| v soa rel lst1 lst2 i size| 
	soa := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := RTMondrian new.	"generate information to draw for each iteration of nodes"
	
	lst1:=OrderedCollection new.	
	lst2:=OrderedCollection new.	
	i:=0.
	size :=soa lstElements size.
	soa lstBPWSDLs do:[:a| (i < (size / 2 )) ifTrue:[lst1 add: a];ifFalse:[lst2 add: a]. i:=i+1].
	
	self BPVCSOAContextSimple: v onlst: lst1. 
		
	v
		node: 'bpel'
		forIt: [ 
			"---------------------------------------------------------------------------------------------------------------------------"
			"------------------------------------------------------BPEL-----------------------------------------------------------------"
			"---------------------------------------------------------------------------------------------------------------------------"
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p variables.
							v layout grid ].
					v
						node: 'activities'
						forIt: [ 
							v shape circle size: 10.
							v nodes: p lstActivities.
							v layout verticalLine ] ] ].
				
	self BPVCSOAContextSimple: v onlst: lst2. 
	soa allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].	
	v layout verticalLine .
	v open
]

{ #category : #'analitics-example' }
BpelExample >> BPVCSOAContextSimple: v onlst: nodes [
	v
		node: 'wsdl'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color yellow.
			v
				nodes: nodes
				forEach: [ :p | 
					v shape label.
					v interaction forward.
					v shape rectangle
						withoutBorder;
						fillColor: Color yellow.
					v
						node: 'lstRelations'
						forIt: [ 
							v shape rectangle
								size: 5;
								if: [ :var | var class = BPProcess ] fillColor: Color red;
								if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
							v nodes: p lstRelations.
							v gridLayout ] ].
			v horizontalLineLayout ]
]

{ #category : #'CFCMetric_Examples' }
BpelExample >> CFC_example01_bankLoanProcessV001 [
	"
	self new CFC_example01_bankLoanProcessV001
	"
	| parser view |
	parser := BPEL20Parser new.
	parser parseString: BPCFCMetricScenarios new bankLoanProcessV001.
	view := RTMondrian new.
	view nodes: (1 to: 500).
	view open
]

{ #category : #examples }
BpelExample >> example01 [
	"
	self new example01
	"
	| parser processNames b |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: 
	[ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	b := ROMondrianViewBuilder new.
	b interaction
			popupText: #processName;
			action: #inspect.
			
	b shape rectangle
				width: #numberOfVariables;
				height: [ :p | p numberOfInvokes].
	b nodes: parser processes.
	b open
]

{ #category : #examples }
BpelExample >> example01_1 [
	"
	self new example01
	"
	| b  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	
	b := ROMondrianViewBuilder new.
	b interaction
			popupText: #name;
			action: #inspect.
			
	b shape rectangle
				width: #numberOfVariables;
				height: #numberOfInvokes.
				
	b nodes: soaWorld allBPProcess.
	b open
]

{ #category : #examples }
BpelExample >> example02 [
	"
	self new example02
	"

	| parser processNames b |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: [ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	"Create de principal object to draw"	
	b := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	b interaction
			popupText: #processName;
			action: #inspect.
	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
				height: [:v|v numberOfVariables * 10];
				width: [:v|v numberOfActivities * 10 ].
	"add the nodes to paint, int this case the node represent the process"
	b nodes: parser processes forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		b shape label.
		b shape rectangle withoutBorder.
		b node: 'variables' forIt: [ 
			b shape rectangle 
						size: [ :v | v numberOfInvokes];
						if: [ :v | '*Operation*' match: v variableName ] fillColor: Color red;
						if: [ :v | '*Account*' match: v variableName ] fillColor: Color blue.
			b nodes: p variables.
			b gridLayout ].
		b verticalLineLayout.
	].
	b gridLayout.
	b open
]

{ #category : #examples }
BpelExample >> example02_1 [
	"
	self new example02_1
	"

	| soaWorld b |
	soaWorld := SOAContextTest soaWorldBase.	"Create de principal object to draw"
	b := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	b interaction
		popupText: #name;
		action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
		height: [ :p | p numberOfVariables ];
		width: [ :p | p numberOfActivities ].	"add the nodes to paint, int this case the node represent the process"
	b
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			b shape rectangle withoutBorder.
			b
				node: p name
				forIt: [ 
					b interaction
						popupText: #name;
						action: #inspect.
					b shape rectangle size: [ :v | v numberOfInvokes * 15 ].
					b nodes: p variables.
					b gridLayout ].
			b verticalLineLayout ].
	b gridLayout.
	b open
]

{ #category : #examples }
BpelExample >> example03 [
	"
	self new example03
	"

	| parser processNames v |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: [ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	v interaction
		popupText: #processName;
			action: #inspect.
	"add a new shape to paint a rectangle a set the instructions to define height and width"
	v shape rectangle
				height: #numberOfVariables;
				width: [ :p | p numberOfInvokes].
	"add the nodes to paint, int this case the node represent the process"
	v nodes: parser processes forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v shape rectangle withoutBorder.
		v verticalLineLayout.
	].
	v gridLayout.
	v open
]

{ #category : #examples }
BpelExample >> example04 [
	"
	self new example04
	"

	| b soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	b := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	b interaction
		popupText: #processName;
		action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
		height: #numberOfVariables;
		width: [ :p | p numberOfInvokes ].	"add the nodes to paint, int this case the node represent the process"
	b nodes: soaWorld allBPProcess
		forEach: [ :p | 
			| processRelations |
			"each process have many of rectangle wich represent information of their state and references"
			"each process have many of rectangle wich represent information of their state and references"
			b shape label.
			b node: p processName.
			b shape rectangle withoutBorder.	"find relations of process"
			processRelations := p allRelations.
			b node: ''
				forIt: [ 
					b shape rectangle size: 10.
					b interaction popupText: 'all the same'.
					b nodes: processRelations.
					"b edges: (ROEdge linesFor:processRelations)."
					b sugiyamaLayout ].
			b shape rectangle withoutBorder.
			b verticalLineLayout ].
		"b edges: (ROEdge linesFor:(soaWorld allBPProcess from: [ #processName ] toAll: [ :p | p allRelations ]))." 
	b circleLayout.
	b open
]

{ #category : #examples }
BpelExample >> example05 [
	"
	self new example05
	"
	| soaWorld view rawView |
	soaWorld := SOAContextTest soaWorldBase.
	rawView := ROView new.
	view := ROMondrianViewBuilder view: rawView.
	view interaction
		popupText: #processName;
		action: #inspect.
	view
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			view node: ''.
			view edgesFrom: p ].
	view edgesFrom: [ :p | p allRelations ].
	view circleLayout.
	ROEaselMorphic new populateMenuOn: view.
	view open
]

{ #category : #examples }
BpelExample >> example06 [
	"
	self new example06
	"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (e -> n) ] ] ].
	edges := ROEdge linesFor: rel.
	v addAll: edges.
	ROCircleLayout new on: v elements.

	v open
	
]

{ #category : #examples }
BpelExample >> example07 [
	"
	self new example07
	"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: e -> n ] ] ].
	edges := ROEdge linesFor: rel.
	v addAll: edges.
	ROCircleLayout new on: v elements.
	v open
]

{ #category : #examples }
BpelExample >> example08 [
	"
	self new example08
	"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (e -> n) ] ] ].
	edges := (ROEdge linesFor: rel) do:[ :ed | ed+(ROLine new add:ROArrow new)].
	v addAll: edges.
	ROTreeLayout new on: v elements.
	v @ROMiniMap.
	v open
	
]

{ #category : #examples }
BpelExample >> example09 [
	"
	self new example09
	"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (n -> e) ] ] ].
	edges := ROEdge linesFor: rel.
	v addAll: edges.
	ROTreeLayout new on: v elements.
	v @ ROMiniMap.
	v open
	
]

{ #category : #examples }
BpelExample >> example10 [
	"
	self new example10
	"

	| v soaWorld rel |
	soaWorld := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v
		node: 'process'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
			v shape rectangle
				height: #numberOfVariables;
				width: [ :p | p numberOfInvokes ].	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soaWorld allBPProcess
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					v shape label.
					v node: p processName.
					v shape rectangle withoutBorder.
					v
						node: 'v'
						forIt: [ 
							v shape rectangle
								size: [ :var | var numberOfInvokes * 15 ];
								if: [ :var | '*Operation*' match: var aName ] fillColor: Color red;
								if: [ :var | '*Account*' match: var aName ] fillColor: Color blue.
							v nodes: p variables lstVariables .
							v gridLayout ].
					v gridLayout ].
			v gridLayout ].	"---------------------------------------------------------------
				---------------------------------------------------------------
		---------------------------------------------------------------"
	v
		node: 'wsdl'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v
				nodes: soaWorld allBPWSDL
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					v shape label.
					v node: p name.
					v shape rectangle withoutBorder.
					v verticalLineLayout ].
			v gridLayout ].
	v gridLayout.
	v open
]

{ #category : #examples }
BpelExample >> example10_1 [
	"
	self new example10_1
	"
	| v  soaWorld nwsdl|
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	v interaction
			popupText: #aName;
			action: #inspect.
	
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p aName.
		v shape rectangle withoutBorder.
		v node: 'lstRelations' forIt: [ 
			v shape rectangle 
						size: 10;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v verticalLineLayout.
	].			
	nwsdl:= v nodes.
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p processName.
		v node: 'variables' forIt: [ 
			v shape rectangle 
						size: [ :var | var numberOfInvokes * 15 ].
			v nodes: p variables lstVariables.
			v gridLayout ].
		v node: 'activities' forIt:[
			| |
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | object isARelationableActivity ifTrue: [ {object bpPartnerLink bpwsdl} ] ifFalse: [ #() ] ] using: ROLine red.
				
			v nodes: p lstActivities .	
			
			v gridLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	v open	
]

{ #category : #examples }
BpelExample >> example10_2_colors [
	"
	self new example10_2_colors
	"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.	"rel := OrderedCollection new."	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v
		node: 'bpel'
		forIt: [ 
			"---------------------------------------------------------------------------------------------------------------------------"
			"------------------------------------------------------BPEL-----------------------------------------------------------------"
			"---------------------------------------------------------------------------------------------------------------------------"
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soaWorld allBPProcess
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					"v shape label."
					"v node: p processName."
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p variables lstVariables.
							v gridLayout ].
					v
						node: 'activities'
						forIt: [ 
							| lstAct lstwsdl |
							v shape circle size: 10.
							v interaction
								action: #inspect;
								dynamicEdgeToAll: [ :object | 
											object isARelationableActivity
												ifTrue: [ {(object bpPartnerLink bpwsdl)} ]
												ifFalse: [ #() ] ]
									using: ROLine red.
							v nodes: p lstActivities.
							lstAct := p lstActivities select: [ :act | act isARelationableActivity ].
							lstwsdl := lstAct collect: [ :act | act bpPartnerLink bpwsdl ].
							v verticalLineLayout ]	"v edgesFrom: soaWorld allBPWSDL." ] ].	"---------------------------------------------------------------------------------------------------------------------------"	"------------------------------------------------------WSDL-----------------------------------------------------------------"	"---------------------------------------------------------------------------------------------------------------------------"
	v interaction
		popupText: #name;
		action: #inspect.
	v shape rectangle fillColor: Color yellow.
	v
		nodes: soaWorld allBPWSDL
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape label.	"v node: p aName."
			v interaction forward.
			v shape rectangle withoutBorder.
			v
				node: 'lstRelations'
				forIt: [ 
					v shape rectangle
						size: 5;
						if: [ :var | var class = BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
					v nodes: p lstRelations.
					v gridLayout ].
			v verticalLineLayout ].
	soaWorld allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	ROEaselMorphic new populateMenuOn: v.
	v open
]

{ #category : #'examples-Roassal2' }
BpelExample >> example10_2_colors_Roassal2 [
	"self new example10_2_colors_Roassal2"
	"this example produce high effort to process"
	| v  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := RTMondrian new.
	"generate information to draw for each iteration of nodes"
	
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------BPEL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"


	v shape rectangle fillColor:Color green.
	
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v nodes: 'variables' forEach: [ 
			v shape rectangle size: [ :var | var numberOfInvokes ].
			v nodes: p variables lstVariables .
			v gridLayout ].
		v nodes: 'activities' forEach:[
			|lstAct lstwsdl|
			v shape circle size:10.
			v nodes: p lstActivities.	
			lstAct:= p lstActivities select: [ :act | act isARelationableActivity].
			lstwsdl:=(lstAct collect:[ :act | act bpPartnerLink bpwsdl]).
			v edgesFrom: lstwsdl.
			v horizontalLineLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].
	
			
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------WSDL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"

	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		"v node: p aName."
		"v shape rectangle withoutBorder."
		v nodes: 'lstRelations' forEach: [ 
			v shape rectangle 
						size: 5;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p | 
		v shape line color: (Color gray alpha: 0.4).
		v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ] . 
	
	v clusterLayout.
	"Next sentences dont́ work in Roassal2"
	"ROEaselMorphic new populateMenuOn: v."
	v open	
]

{ #category : #'examples-Roassal2' }
BpelExample >> example10_2_colors_Roassal2_byStep [
	"self new example10_2_colors_Roassal2_byStep"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.	
		"Create de principal object to draw"
	v := RTMondrian new.	
		"generate information to draw for each iteration of nodes"	
			"---------------------------------------------------------------------------------------------------------------------------"	"------------------------------------------------------BPEL-----------------------------------------------------------------"	
					"---------------------------------------------------------------------------------------------------------------------------"
	v shape rectangle fillColor: Color green.	
		"add the nodes to paint, int this case the node represent the process"
	v
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape circle
				size: 1;
				fillColor: Color red.
			v nodes: p lstVariables.
			v shape rectangle fillColor: Color blue.
			v nodes: p lstAllActivities.	
				"v edgesFrom: soaWorld allBPWSDL."	"layout"
			v gridLayout ].	
			"---------------------------------------------------------------------------------------------------------------------------"	           "------------------------------------------------------WSDL-----------------------------------------------------------------"	
			"---------------------------------------------------------------------------------------------------------------------------"
	v shape rectangle fillColor: Color yellow.
	v
		nodes: soaWorld allBPWSDL
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape circle
				size: 1;
				fillColor: Color green.
			v nodes: p lstRelations.
			v gridLayout ].
	soaWorld allBPWSDL
		do: [ :w | 
			A4BPLog l: w name.
			A4BPLog l: w hash ].	
			"---------------------------------------------------------------------------------------------------------------------------"	     "------------------------------------------------------add Relations--------------------------------------------------------"	
					"---------------------------------------------------------------------------------------------------------------------------"
	soaWorld allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstAllActivities from: #yourself to: [ :obj | obj bpPartnerLink bpwsdl ] ].
	v gridLayout.	
		"Next sentences dont́ work in Roassal2"	"ROEaselMorphic new populateMenuOn: v."
	v open
]

{ #category : #examples }
BpelExample >> example10_2_colors_optimized [
	"
	self new example10_2_colors_optimized
	"
	| v  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	
	
	"-----------------------------------------------------------------------------"
	"--------BPEL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.

	v node:'process' forIt:[
	v shape rectangle fillColor:Color green.
		"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p name.
		v shape circle size:10;fillColor:Color red.
		v nodes: p variables lstVariables.
		v shape rectangle size:10;fillColor:Color blue.
		v nodes: p lstAllActivities forEach:[
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | 
					object isARelationableActivity 
					ifTrue: [ {object bpPartnerLink bpwsdl} ] 
					ifFalse: [ #() ] 
				] using: ROLine red
		].
		v gridLayout.
	].
		v verticalLineLayout.
	].
	
			
	"-----------------------------------------------------------------------------"
	"--------WSDL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.
	v node:'wsdl' forIt:[
	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		v shape label.
		v node: p name.
		"each process have many of rectangle wich represent information of their state and references"
		v shape circle size:1;fillColor:Color green.
		v nodes: p lstRelations.
		v gridLayout 
	].
	v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p |
		v shape line color: (Color red alpha: 0.4);size:2.
		v edges: p lstAllActivities  from: #yourself to: [ :act | act bpPartnerLink bpwsdl ] ] . 
	
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	ROEaselMorphic new populateMenuOn: v.
	v open	
]

{ #category : #examples }
BpelExample >> example10_2_colors_optimized_001 [
	"
	self new example10_2_colors_optimized_001
	"
	| v  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	
	
	"-----------------------------------------------------------------------------"
	"--------BPEL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.

	v shape rectangle fillColor:Color green.
		"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p name.
		"draw variable"
		v shape circle size:10;fillColor:Color red.
		v nodes: p variables lstVariables .
		"draw activities"
		v shape rectangle size:10;if:[:act | act bpPartnerLink bpwsdl class = BPWSDLWsdl]fillColor: Color blue.
		
		v nodes: p lstAllActivities forEach:[
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | 
					object isARelationableActivity 
					ifTrue: [ {object bpPartnerLink bpwsdl} ] 
					ifFalse: [ #() ] 
				] using: ROLine red
		].
		v gridLayout.
	].
	
			
	"-----------------------------------------------------------------------------"
	"--------WSDL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.
	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		v shape label.
		v node: p name.
		"each process have many of rectangle wich represent information of their state and references"
		v shape circle size:1;fillColor:Color green.
		v nodes: p lstRelations.
		v gridLayout 
	].
	v verticalLineLayout.

	soaWorld allBPProcess do: [ :p |
		v shape line color: (Color red alpha: 0.4);size:2.
		v edges: p lstAllActivities  from: #yourself to: [ :act | 
			BPLog d:(act ).
			BPLog d:(act bpPartnerLink).
			BPLog d:(act bpPartnerLink bpwsdl). 
			act bpPartnerLink bpwsdl ] ] . 
	
	v circleLayout  .
	ROEaselMorphic new populateMenuOn: v.
	v open	
]

{ #category : #examples }
BpelExample >> example10_3_matrix [
	"self new example10_3_matrix"
	| v  soaWorld nwsdl|
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := RTMondrian new.
	"generate information to draw for each iteration of nodes"
	v interaction
			popupText: #aName;
			action: #inspect.
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------WSDL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"

	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		"v node: p aName."
		v interaction forward.
		v shape rectangle withoutBorder.
		v node: 'lstRelations' forIt: [ 
			v shape rectangle 
						size: 5;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v horizontalLineLayout.
	].
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------BPEL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"


	v shape rectangle fillColor:Color green.
	nwsdl:= v nodes.
	
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v node: 'variables' forIt: [ 
			v shape rectangle size: [ :var | var numberOfInvokes ].
			v nodes: p variables lstVariables .
			v gridLayout ].
		v node: 'lstActivities' forIt:[
			|lstAct lstwsdl|
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | object isARelationableActivity ifTrue: [ {object bpPartnerLink bpwsdl} ] ifFalse: [ #() ] ] using: RTLine red
				"on: ROMouseEnter do: [ :evt | 
					(evt model isARelationableActivity) 
						ifTrue: [ ROBlink on: (v elementFromModel: evt model bpPartnerLink bpwsdl) ] ]".
				
			v nodes: p lstActivities .	
			lstAct:= p lstActivities select: [ :act | act isARelationableActivity].
			lstwsdl:=(lstAct collect:[ :act | act bpPartnerLink bpwsdl]).
			A4BPLog d: p aName.
			A4BPLog d: lstwsdl.
			v edgesFrom: lstwsdl.
			v edgesFrom: nwsdl.
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] .   
			v edges: p lstActivities from: #yourself toAll: nwsdl .  
			"v edges: p lstActivities from: #yourself to: 1 ."
			v edge: 1 toAll: p lstActivities.
			v edge: 1 toAll: lstwsdl. 
			"v edgesFromAssociations: (lstwsdl select:[:w| (w = BPEmptyObj instance ) not ])."
			v edge: 1 toAll:nwsdl.
			v horizontalLineLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p | 
		v shape line color: (Color gray alpha: 0.4).
		v edges: p lstActivities  from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ] . 
	
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	"v circleLayout."
	"ROEaselMorphic new populateMenuOn: v."
	v open	
]

{ #category : #examples }
BpelExample >> example10_4 [
	"
	self new example10_4
	"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
		
	v shape rectangle withoutBorder.
	v
		node: 'list of wsdl'
		forIt: [ 
			v interaction
				action: #inspect;
				popupText: #name.
			v shape rectangle
				size: 30;
				if: [ :var | var class = BPWSDLWsdl ] fillColor: (Color darkGray alpha: 0.3).
			v nodes: soaWorld allBPWSDL.
			v gridLayout ].
	v gridLayout.
	v open
]

{ #category : #examples }
BpelExample >> example10_5 [
	"
	self new example10_5
	"

	| v soa rel |
	soa := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v gridLayout.
	v
		node: 'bpel'
		forIt: [ 
			v interaction
				popupText: [ :a | '(CFCxNoRel)=(' , a calculateCFC asString , 'x' , a numberOfRelations asString , ')' ];
				action: #inspect.
			v shape rectangle
				height: [ :a | a calculateCFC * 5 ];
				width: [ :a | a numberOfRelations * 5 ].
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v shape circle
						size: 1;
						fillColor: (Color blue alpha: 0.3).
					v nodes: p lstActivities.
					v shape circle
						size: 1;
						fillColor: (Color lightGreen alpha: 0.3).
					v nodes: p lstVariables.
					v gridLayout ] ].
	v open
]

{ #category : #examples }
BpelExample >> example11 [
	"self new example11"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (n -> e) ] ] ].
	edges := (ROEdge linesFor: rel) do:[ :ed | ed+(ROLine new add:ROArrow new)].
	v addAll: edges.
	ROTreeLayout new on: v elements.
	v @ROMiniMap.
	v open
	
]

{ #category : #'examples-Roassal2' }
BpelExample >> exampleR2GridLayout001 [
	"self new exampleR2GridLayout001"
	| view elements soaCtx nodes elementv |
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := RTView new.
	nodes:=soaCtx getChildrenNodes .
	elementv := BPUIModelR2ElementBuilderVisitor new.
	elements  := OrderedCollection new.
	
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		view add: el
	].
	
	
	elements do: [ :el |
		el model allRelations do:[ :m |
			|lstel|
			lstel:= view elements select:[:e| e model == m].
			lstel do:[:el2|
				view add: (RTLine edgeFrom: el to: el2  ).
			]
		]	
	].	
	
	RTGridLayout on: elements.	
	view open.

]

{ #category : #'examples-Roassal3d' }
BpelExample >> exampleR3CityBuilder001 [
	"self new exampleR3CityBuilder001"
	| b  soaCtx|
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	b := R3CityBuilder new.
	b nodes: soaCtx lstBPProcess.
	b open
]

{ #category : #'examples-Roassal3d' }
BpelExample >> exampleR3GridLayout [
	"self new exampleR3GridLayout"
	| view elements soaCtx nodes colorv|
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := R3View new.
	
	view camera translateUp: 5.
	view camera rotateDown:30.
	view camera translateBackward:30.
	"
	view camera translateUp: 20.
	view camera rotateX: 0.531 y: 18.372 z: 30.698.	
	nodes:=(1 to:100).
	"
	
	nodes:=soaCtx lstBPProcess.	
	colorv :=BPUIBPModelColorBuilderVisitor new.	
	elements  := OrderedCollection new.
	nodes do: [ :n |
		| el r3cs mat|
		r3cs:=R3CubeShape new.
		r3cs height: n numberOfVariables .
		r3cs width: n numberOfPartnerLinks .
		r3cs depth: n numberOfActivities.
		mat := R3Material new diffuse: Color lightGray.
		mat specular: (n accept:colorv).
		mat shininess: 10.0.
		r3cs material: mat.
		"
		r3cs color:(n accept:colorv).
		"
		el := r3cs element.
		elements add: el.
		view add: el
	].
	
	R3XLineLayout on: elements.
	R3YAlign upOn: elements.
	"
	R3XZGridLayout on: elements.
	"
	view addInteraction: R3MKControl.
	view open.

]

{ #category : #'examples-Roassal3d' }
BpelExample >> exampleR3GridLayout001 [
	"self new exampleR3GridLayout001"
	| view elements soaCtx nodes elementv |
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := R3View new.
	
	view camera translateUp: 5.
	view camera rotateDown:30.
	view camera translateBackward:30.
	"
	view camera translateUp: 20.
	view camera rotateX: 0.531 y: 18.372 z: 30.698.	
	nodes:=(1 to:100).
	"

	nodes:=soaCtx getChildrenNodes .	
	elementv := BPUIModelR3ElementBuilderVisitor new.
	elements  := OrderedCollection new.
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		view add: el
	].
	
	
	elements do: [ :el |
		el model allRelations do:[ :m |
			|lstel|
			lstel:= view elements select:[:e| e model == m].
			lstel do:[:el2|
				view add: (R3LineShape blue elementFrom: el to: el2  ).
			]
		]	
	].	
	
	
	R3XZGridLayout on: elements.
	"
	R3XZGridLayout on: elements.
	R3XLineLayout on: elements.
	R3YAlign upOn: elements.
	"
	view addInteraction: R3MKControl.
	view open.

]

{ #category : #'examples-Roassal3d' }
BpelExample >> exampleR3GridLayout002 [
	"self new exampleR3GridLayout002"
	| view elements soaCtx nodes elementv bigElement|
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := R3View new.
	
	view camera translateUp: 5.
	view camera rotateDown:30.
	view camera translateBackward:30.
	"
	view camera translateUp: 20.
	view camera rotateX: 0.531 y: 18.372 z: 30.698.	
	nodes:=(1 to:100).
	"
	elementv := BPUIModelR3ElementBuilderVisitor new.
	elements  := OrderedCollection new.
	
	bigElement := (R3CubeShape new elementOn:'bpProcess').
	
	nodes:=soaCtx allBPProcess.	
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		bigElement add: el
	].
	view add:bigElement .
	
	bigElement := (R3CubeShape new elementOn:'bpWSDL').
	nodes:=soaCtx allBPWSDL.	
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		el translateToX: 1 y: 5 z: 1.
		bigElement add: el
	].
	view add:bigElement .
	
	elements do: [ :el |
		el model allRelations do:[ :m |
			|lstel|
			lstel:= view elements select:[:e| e model == m].
			lstel do:[:el2|
				view add: (R3LineShape blue elementFrom: el to: el2  ).
			]
		]	
	].	
	
	
	R3XZGridLayout on: elements.
	"
	R3XZGridLayout on: elements.
	R3XLineLayout on: elements.
	R3YAlign upOn: elements.
	
	"
	view addInteraction: R3MKControl.
	view open.

]

{ #category : #'analitics-example' }
BpelExample >> matrix_relation_process_example [
   "
	self new matrix_relation_process_example
	"
	| b soaWorld |
	"Create de principal object to draw"	
	b := RTDepMatrix new.
	"Build soaWorld"
	soaWorld := SOAContextTest soaWorldBase.
	
	b shape rectangle size: 10.
	b horizontal: soaWorld allBPWSDL.
	b vertical:  soaWorld allBPProcess.
	b function: [ :v :h |  v iHaveRelationWith: h].
	b open
	
]

{ #category : #'analitics-example' }
BpelExample >> processRelationAndCFC [
	"self new processRelationAndCFC"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := RTView new.
	ce := RTElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model calculateCFC.
			n height: n model numberOfVariables.
			n @ RTDraggable.
			"n + (ROLabel new text: n model aName)."

			n model allInvokes
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (n -> e) ] ] ].
	edges := (RTEdge linesFor: rel) do:[ :ed | ed+ (RTLine new)].
	v addAll: edges.
	RTTreeLayout new on: v elements.
	v open
	
]

{ #category : #'analitics-example' }
BpelExample >> processRelationAndCFC_Roassal2 [
	"self new processRelationAndCFC_Roassal2"

	| view els soaWorld n nodes|
	soaWorld := SOAContextTest soaWorldBase.
	nodes:=soaWorld allBPProcess.
	view := RTView new.
	
	n := RTGrayLinearColor new command: #calculateCFC.
	els := (RTBox new
		height: [ :p | p numberOfInvokes * 10 ];
		width: [ :p | p numberOfActivities * 10];
		color:Color blue) elementsOn: nodes.
	els do:[:e| e + (RTLabel new text: e model aName)].
	els @ RTDraggable.
	view addAll: els.
	
	"conecta cada nodo con sus relaciones "
	RTEdge
		buildEdgesFromObjects: nodes
		from: #yourself
		toAll: #allInvokesProcess
		using:
			(RTLine new
				attachPoint: RTShorterDistanceAttachPoint new;
				color: Color veryDarkGray)
				+
					(RTArrow new
						attachPoint: RTShorterDistanceAttachPoint new;
						color: Color veryDarkGray)
		inView: view.
	
	RTGridLayout on: els.
	view open
]

{ #category : #'analitics-example' }
BpelExample >> processRelationAndCFC_Roassal2_MBuilder [
	"self new processRelationAndCFC_Roassal2_MBuilder"
	| v soaWorld nodes|
	soaWorld := SOAContextTest soaWorldBase.	
		"Create de principal object to draw"
	v := RTMondrian new.	
		
	nodes:=soaWorld allBPProcess.
	
	v shape rectangle fillColor:Color blue;
		height: [ :p | p calculateCFC * 2 ];
		width: [ :p | p numberOfActivities * 2].
	v nodes: nodes.
	v shape directedLine.
	v edges: nodes from:#yourself  toAll:#allInvokesProcess.
	v gridLayout.
	v open
]

{ #category : #'analitics-example' }
BpelExample >> treeMapBPProcessMetric [
	"Actually this example don't work because the node is not a number"
	"self new treeMapBPProcessMetric"
	| view rawView builder soaWorld|
	soaWorld := SOAContextTest soaWorldBase.
	rawView := ROViewStack new.
	view := ROMondrianViewBuilder view: rawView.
	rawView addView: ROView new.	"-------------"	"-------------"
	builder := ROTreeMapBuilder new.
	builder weightBlock: [ :el | el ].
	builder nodes: (1 to: 10).
	builder nodes:soaWorld allBPProcess.
	"builder nestingFromAssociations: (builder nodes allButFirst collect: [ :each | each // 2 -> each ])."
	builder withShadesOnWeightFromColor: Color lightBlue toColor: Color blue.
	builder extent: 400 @ 400.
	"builder origin: 0 @ 0."
	"builder withShadedFrames."
	builder drawOn: rawView.	
	ROEaselMorphic new populateMenuOn: view.
	view open
]
