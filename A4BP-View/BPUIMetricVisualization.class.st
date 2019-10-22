"
A BPUICodeNavigator is glamour implementation to view the 
soa xml implementation in a path.

Instance Variables
	browser:		<Object>

browser
	- xxxxx

"
Class {
	#name : #BPUIMetricVisualization,
	#superclass : #A4BPUIGLM,
	#category : #'A4BP-View-UI-metric'
}

{ #category : #'as yet unclassified' }
BPUIMetricVisualization class >> go [
	BPUIMetricVisualization open: A4BPSOAAnalyzer instance.
]

{ #category : #'as yet unclassified' }
BPUIMetricVisualization class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	(aBuilder item: #'MetricVisualization')
			"icon: A4BPUIIcons mainIcon;"
			parent:#'A4BP';
			action:[self go];
			label:'Metric Visualization';
			help: 'Show a easy interface to explore the metrics in the objects'.
]

{ #category : #'glamour-examples' }
BPUIMetricVisualization >> actionsFor: aPresentation [
	| actions |
	aPresentation isMultiple
		ifTrue: [ actions := aPresentation selection ifNil: [ OrderedCollection new ] ]
		ifFalse: [ actions := OrderedCollection with: aPresentation selection ].
	^ actions
		collect: [ :i | 
			GLMGenericAction new
				action: [ :each | self inform: 'Menu - Item' , i printString ];
				title: 'Menu - Item' , i printString;
				yourself ]
]

{ #category : #'glamour-builder' }
BPUIMetricVisualization >> buildBrowser [
	browser := GLMTabulator new.	"add the column in a glamour browser"
	browser
		row: [ :c | 
					c
						column: #allSOAModels;
						addColumn: #view span: 3 ];
		row: [ :c | 
					c
						column: #tpObj;
						column: #width;
						column: #heigth;
						column: #alpha ].
	browser transmit
		to: #allSOAModels;
		andShow: [ :a | self displaySOAModelsIn: a ].
	browser transmit
		to: #tpObj;
		from: #allSOAModels;
		andShow: [ :a | self displaylstClassTypeIn: a ].
	browser transmit
		to: #width;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'width' ].
	browser transmit
		to: #heigth;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'heigth' ].
	browser transmit
		to: #alpha;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'alpha' ].
	browser transmit
		to: #view;
		from: #allSOAModels;
		from: #tpObj;
		from: #width;
		from: #heigth;
		from: #alpha;
		andShow: [ :a | self displayViewCanvasIn: a ].
	^ browser
]

{ #category : #'glamour-builder' }
BPUIMetricVisualization >> childrenOf: rootPackage on: organizer [
	^ rootPackage getChildrenNodes
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> displayMetricIn: constructor title: aTitle [
	constructor list
		title: aTitle;
		display: [ :org | self lstOfMessageFrom: org ];
		format: #name
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> displaySOAModelsIn: constructor [
	| actiontreev |
	"build the list of options base on the selected element"
	actiontreev := A4BPUIGLMRClick new.
	constructor tree
		title: 'SOA Models';
		children: [ :root :childs | self childrenOf: root on: childs ];
		icon: [ :el |  el accept: A4BPUIBVFactory iconVisitor ];
		format: #name.
	^ constructor
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> displayViewCanvasIn: constructor [
	constructor roassal2
		title: 'view';
		painting: [ :view :obj :tpObj :one :two :three |
			self 
			executeVisualization: view 
			obj:obj 
			tpObj:tpObj 
			methods:(Array with:one with:two with:three).
		].
	^ constructor
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> displaylstClassTypeIn: constructor [
	constructor list
		title: 'Element Types';
		display: [ :org | 
					| lstClass |
					lstClass := Dictionary new.
					org getChildrenNodes do: [ :k | 
						|ct|
						ct := (BPUIMetricClassType build: k class).
						ct := lstClass at: (ct key) ifAbsent:[ lstClass at: ct key put: ct].
						ct elements add:k.
					].
					lstClass ];
		format: #name
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> evaluate: element with: method [
	|value methodName|
	methodName := method messageType.
	value := [element perform: methodName] on:Error do:[0].
	value = 0 ifTrue:[value := 1].
	^ value
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> executeVisualization: view  obj:obj  tpObj:tpObj  methods: methods [
	| action mondrian one two three|
	mondrian := RTMondrian new.
	mondrian view:view.
	
	one := methods at:1.
	two := methods at:2.
	three := methods at:3.
	
	action := BPUIMetricVizActionInClass new.
	action rootObj: obj.
	"Find the nodes to show base on the Element type selected"
	tpObj new accept: action.
	
	"Execute the vizualization"			
	mondrian shape rectangle
		width: [ :o | self evaluate: o with:one ];
		height: [ :o | self evaluate: o with: two ];
		fillColor: [ :o | Color gray alpha: (1 / (self evaluate: o with: three))].
	mondrian nodes: action nodes.
	
	mondrian build.

]

{ #category : #initialization }
BPUIMetricVisualization >> initialize [
	nodeOrganizer := A4BPSOAContext new.
]

{ #category : #'glamour-builder-display' }
BPUIMetricVisualization >> lstOfMessageFrom: org [
	| messageNames metricMessageTypes|
	messageNames := BPUIMetricFindMetricMessageNames findMetrics: org classType.
	metricMessageTypes := messageNames collect:[:m | BPUIMetricMessageType build:m].
	^ metricMessageTypes
]

{ #category : #'glamour-builder' }
BPUIMetricVisualization >> open: model [
	nodeOrganizer := model.
	self buildBrowser.
	(browser openOn: self organizer) maximize
]

{ #category : #'as yet unclassified' }
BPUIMetricVisualization >> organizer [
^ nodeOrganizer
]
