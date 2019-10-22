Class {
	#name : #A4BPUIMain,
	#superclass : #A4BPUIGLM,
	#category : #'A4BP-View-UI'
}

{ #category : #'test-open' }
A4BPUIMain class >> exampleOpen [
	| aSOAAnalyzer aSOAContext parser processModel|
	aSOAAnalyzer := A4BPSOAAnalyzer instance.
	aSOAContext := A4BPSOAContext new.
	parser := BPMN20Parser parseString: BPSimImplementerGuidev1_0_2Test tecnicalSupportProcessV1_0_1_bpmn.
	processModel := parser definitions first.
	aSOAContext addElement:processModel.
	aSOAAnalyzer addSOAContext: aSOAContext.
	A4BPUIMain open: aSOAAnalyzer
]

{ #category : #open }
A4BPUIMain >> buildBrowser [
	browser := GLMTabulator new.	
	"add the column in a glamour browser"
	browser title: A4BPUII18n msg msgSOAAnalyzerPanel.
	browser column: #BrowsePerspective.
	browser transmit
		to: #BrowsePerspective;
		andShow: [ :a | 
			A4BPUIGLMBuilder allSubclassesDo: [ :builderClass | 
				builderClass buildBrowserIn: a] 
			].
	^ browser
]

{ #category : #open }
A4BPUIMain >> initialize [
	nodeOrganizer := A4BPSOAContext new.
]

{ #category : #open }
A4BPUIMain >> open: model [
	nodeOrganizer := model.
	self buildBrowser.
	(browser openOn: self organizer) maximize
]

{ #category : #open }
A4BPUIMain >> organizer [
	^ nodeOrganizer
]
