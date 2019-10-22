Class {
	#name : #BPVCSOAContextSimple,
	#superclass : #BPVCSOAContext,
	#category : #'A4BP-BpelAnalyzer-view-Visualization'
}

{ #category : #visualization }
BPVCSOAContextSimple >> executeVisualization: view [
	| v soa lst1 lst2 i size |
	v := RTMondrian new.
	view @ RTDraggableView.
	v view: view.
	soa := bpObj.
	lst1 := OrderedCollection new.
	lst2 := OrderedCollection new.
	i := 0.
	size := soa lstElements size.
	soa lstBPWSDLs
		do: [ :a | 
			i < (size / 2)
				ifTrue: [ lst1 add: a ];
				ifFalse: [ lst2 add: a ].
			i := i + 1 ].
	self viewWSDLBuilder: v onlst: lst1.
	self viewProcessBuilder: v onlst:soa lstBPProcess.
 	self viewWSDLBuilder: v onlst: lst2.
	soa allBPProcess
		do: [ :p | 
			self addInspect: v.
			v shape line color: (Color gray alpha: 0.4).
			v edges objects: p lstAllActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].
	v layout verticalLine
]

{ #category : #visualization }
BPVCSOAContextSimple >> executeVisualizationOnGLMC: glmc [
	self executeInRoassal2: glmc
]

{ #category : #view }
BPVCSOAContextSimple >> viewProcessBuilder: v onlst: nodes [
	| c |
	c := A4BPUIBPModelColorBuilderVisitor new.
	v
		node: 'bpel'
		forIt: [ 
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: nodes
				forEach: [ :p | 
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p lstVariables.
							v layout grid ].
					v shape rectangle fillColor: Color lightGray.
					v
						node: 'activities'
						forIt: [ 
							v shape circle
								size: 10;
								color: [ :n | 
											| color |
											color := n accept: c.
											color ].
							v nodes: p lstAllActivities.
							v edges connectFrom: #parent.
							v layout tree ] ] ]
]

{ #category : #view }
BPVCSOAContextSimple >> viewWSDLBuilder: v onlst: nodes [
	self addInspect: v.
	v
		node: 'wsdl'
		forIt: [ 
			v shape rectangle fillColor: Color yellow.
			v
				nodes: nodes
				forEach: [ :p | 
					v shape label.
					v shape rectangle;
						fillColor: Color yellow.
					v
						node: 'lstRelations'
						forIt: [ 
							v shape rectangle
								size: 5;
								if: [ :var | var class = BPProcess ] fillColor: Color red;
								if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
							v nodes: p lstRelations.
							v layout grid ] ].
			v layout horizontalLine ]
]
