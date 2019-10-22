Class {
	#name : #A4BPUIProcessNavigator,
	#superclass : #A4BPUIGLMBuilder,
	#category : #'A4BP-View-UI'
}

{ #category : #'glamour-examples' }
A4BPUIProcessNavigator >> actionsFor: aPresentation [
	| actions |
	aPresentation isMultiple
		ifTrue: [ actions := aPresentation selection ifNil: [ OrderedCollection new ] ]
		ifFalse: [ actions := OrderedCollection with: aPresentation selection ].
	^ [actions
		collect: [ :i | 
			GLMGenericAction new
				action: [ :each | self inform: 'Menu - Item' , i printString ];
				title: 'Menu - Item' , i printString;
				yourself ]]on:Error do:[].
]

{ #category : #'glamour-builder' }
A4BPUIProcessNavigator >> bpProcessIn: constructor [
"
old presentation
------------------------------------
constructor list
	display:[:org|org allBPProcess];
	format:#asString.
------------------------------------
"
constructor tree
	display:[:org|org];
	children:[:rootPackage :org | (self childrenOf:rootPackage on:org)];
	format:#asString.


	

]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> buildBrowserIn: browser [
	| tab |
	mainBrowser := browser.
	tab := browser tabulator.
	tab title:'Business Processes'.
	tab
		column: #ModelPerspective;
		column: #AnalyzerModels span: 5.	"set what information must be to show"
	tab transmit
		to: #ModelPerspective;
		andShow: [ :a | self displayTreeNodesIn: a ].
	tab transmit
		to: #AnalyzerModels;
		from: #ModelPerspective;
		andShow: [ :a :model| self displayAnalysisIn: a ].
	^ browser
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> childrenOf: rootPackage on: organizer [
	rootPackage ifNotNil: [ ^ rootPackage getChildrenNodes ].
	^ A4BPEmptyObj instance getChildrenNodes
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displayAnalysisIn: constructor [
	constructor finder
		title: [ :a | a name ];
		show: [ :a | 
					self displayVisualizationIn: a.
					self displayTableOfMetricsIn: a.
					self displayTreeNodesIn: a.
					self displaySourceIn: a].
	^ constructor
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displayElementIn: constructor [
	constructor finder
		title: [ :a | a name ];
		show: [ :a | 
					self displayLstOfVisualizationIn: a.
					self displayTableOfMetricsIn: a.
					self displayTreeNodesIn: a .
					self displaySourceIn: a].
	^ constructor
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displaySourceIn: a [
	| glm |
	glm := a text.
	glm 
		titleIcon: GLMUIThemeExtraIcons glamorousGrayCircle;
		display: [ :org | 
					[ org xml ]
						on: Error
						do: [ 'Error' ] ]
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displayTableOfMetricsIn: finderComposite [
	| glm |
	glm := finderComposite table.
	glm title: 't'.
	glm titleIcon: GLMUIThemeExtraIcons glamorousBrowse.
	glm
		display: [ :org | self lstOfMetricMessagesFrom: org ];
		column: [ :org | 'Metrics' ] evaluated: #asString;
		column: 'Value' evaluated: [ :org | org evaluate ]	"display tree with all children of the node"
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displayTreeNodesIn: constructor [
	| actiontreev |
	"build the list of options base on the selected element"
	actiontreev := A4BPUIGLMRClick new.
	actiontreev mainBrowser: mainBrowser.
	constructor tree
		title: A4BPUII18n msg msgModels;
		display: [ :org | org elements];
		children: [ :rootPackage :org | self childrenOf: rootPackage on: org ];
		icon: [ :el |  el accept: A4BPUIBVFactory iconVisitor ];
		"Show menu"
		act: [ :b |  self openSystemFileExplorer. b update ]
		icon: A4BPUIIcons openIcon
		entitled: A4BPUII18n msg msgOpenNewSOAContext;
		dynamicActionsOnSelection: [ :b |b selection accept: actiontreev];
		format: #label.
	^ constructor
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displayVisualizationIn: finderComposite [
	| tab |
	tab := finderComposite tabulator.
	tab title:A4BPUII18n msg msgVisualization.
	tab titleIcon: Smalltalk ui icons glamorousInspect.
	tab
		column: #lstOfViz span:2;
		column: #theview span:6.
	tab transmit
		to: #lstOfViz;
		andShow: [ :aa | self displaylstOfVisualizationIn: aa ].
	tab transmit
		to: #theview;
		from: #lstOfViz;
		andShow: [ :glmc :viewBuilder | 
					(glmc ~= nil and: viewBuilder ~= nil)
						ifTrue: [ 
							viewBuilder executeVisualizationOnGLMC: glmc.
							glmc text 
							title: 'Code';
							display: [ :dis | 
								|method|
								method := viewBuilder class methods 
								select:[:m | m selector = #executeVisualization:].
								method := method first.
								method asString
								];
							allowNil.
						] 
		]	"glmc-> glamourComposite"
]

{ #category : #'as yet unclassified' }
A4BPUIProcessNavigator >> displaylstOfVisualizationIn: tabC [
	" show as a list the visualization available in the BPVCBuilder list depent of object model selected"

	| aBPVCBuilder |
	aBPVCBuilder := A4BPVCBuilder new.
	tabC list
		title: A4BPUII18n msg msgVisualization;
		display: [ :org |  | dis |
					org class = LinkedList ifTrue: [ dis := org first ]; ifFalse: [ dis := org ].
					[dis accept: aBPVCBuilder ] on: Error do: [  ] ];
		dynamicActionsOnSelection: [ :list |  | act lst |
					lst := OrderedCollection new.
					"view Source"
					act := GLMGenericAction new.
					act action: [ list selection class browse ]; title: A4BPUII18n msg msgSource.
					lst add: act.
					"Open view"
					act := GLMGenericAction new.
					act action: [ list selection view inspect ]; title: A4BPUII18n msg msgOpenView.
					lst add: act.
					
					lst ];
		format: #name.
	^ tabC
]

{ #category : #'glamour-builder-display' }
A4BPUIProcessNavigator >> lstOfMetricMessagesFrom: aModel [
	| lstMsg messagesNames |
	lstMsg := OrderedCollection new.
	messagesNames := BPUIMetricFindMetricMessageNames findMetrics: aModel class.
	messagesNames do: [ :msg | lstMsg add: (A4BPTblItemReflexion build: aModel message: msg) ].
	^ lstMsg
]

{ #category : #open }
A4BPUIProcessNavigator >> openSystemFileExplorer [
	| f answer aSOAContext aSOAAnalyzer |
	f := MorphicUIManager new.
	answer := f chooseDirectory.
	answer ifNotNil:[
		aSOAAnalyzer := A4BPSOAAnalyzer instance.
		aSOAContext := A4BPSOAContext createBaseOnPath: answer.
		aSOAAnalyzer addSOAContext: aSOAContext
	]
]
