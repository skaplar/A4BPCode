"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricCFC,
	#superclass : #A4BPMetricCFC,
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricCFC class >> annotation [
<MSEClass: #BPMetricCFC  super: #BPMetricAbstractForBPActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #metric }
BPMetricCFC class >> calculateCFC: aModel [
	| metric visitor |
	metric := 0.
	visitor := self new.
	metric := aModel accept: visitor.
	^ metric
]

{ #category : #initialization }
BPMetricCFC >> initialize [
	"comment stating purpose of message"

	super initialize.

]

{ #category : #visitors }
BPMetricCFC >> visitBPActivity: aBPActivity [
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	This activity waits for an incoming message. This
	element allows a business process to do a blocking
	wait for a particular message to arrive. In our
	example, the activity is used to wait for the answer
	from the Registrar’s office after registering a student
	using the registration system. Since basic activities
	do not involve an interaction or relationship with
	other activities, we assign a complexity value of 1
	(one) to all of them.
	---------------------------------------------------
	CFC BPEL Act (a) = 1, a is a basic activity
	---------------------------------------------------
	In our perspective, assigning a value to a variable,
	receiving or replying to a message, or terminating
	a process, has the same complexity from a control-
	flow perspective. This is because the CFC captures
	the control-flow in a process and the basic activities
	do not include any control-flow semantics. This fact
	will become clear when we study the complexity of
	structured activities
	"

	^ 1
]

{ #category : #visitors }
BPMetricCFC >> visitBPActivityComposite: aBPActivityComposite [
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	A BPEL sequence activity contains a list of activities
	that are to be executed in lexical order, i.e. the order
	they are placed within the sequence element (i.e.
	<sequence>). The sequence activity stops when
	all activities within it are done.
	<sequence attributes>
	activity+
	</sequence>
	As illustrated in the previous fragment, a
	sequence has one or more activities. The formal
	definition of a sequence S is S = {a 1 , a 2 , . . . , a n },
	where a i , i ∈ {1, . . . , n}, are activities. The CFC of
	a sequence of activities is calculated has follows: lows:
	--------------------------------------------------------
	CFC BPEL Act (S) = Summation[ CFC BPEL Act (a) ]{aES} :(BS, S is a sequence
	--------------------------------------------------------
	From our viewpoint, the control-flow involved in
	a sequence of activities is marginal because all the
	activities are invoked in sequence. Therefore, we
	express this fact by simply adding the CFC of the
	activities of a sequence.
	"

	| metric |
	metric := 1.
	aBPActivityComposite lstActivities do: [ :act | metric := metric + (act accept: self) ].
	^ metric
]

{ #category : #visitors }
BPMetricCFC >> visitBPFlow: aBPFlow [
	"Concurrency and synchronization of activities are
	offered by the flow activity. According to van der
	Aalst et al. (2000), this BPEL construct corresponds
	to a parallel split. The flow activity enables the
	creation of splits and joins (van der Aalst, 1998).
	This pattern defines the structure of a process that
	is split into several threads of control, all executed
	concurrently in parallel. The order in which they
	are processed is not defined.
	
	<flow attributes>
		elements
		<links>?
			<link name=ncname/>+
		</links>?
		activity+
	</flow>
	The flow activity allows the synchronization (join)
	of activities within the flow. A flow activity is
	completed when all its activities are completed. The
	formal definition of a while F is F = {a 1 , a 2 , . . . , a n },
	where a i , i ∈ {1, . . . , n}, are activities. The CFC of a
	flow activity is calculated as follows:
	----------------------------------------------------------------
	CFC BPEL Act (F) = (n − l)! * Summation[CFC BPEL act (a)] a E F , 

	F is a flow structured activity, a is an activity,
	n = |F|, l = cross boundary links	
	----------------------------------------------------------------
	"

	| n l metric |
	n := aBPFlow numberOfActivities.
	l := aBPFlow numberOfLinks.
	metric := (n - l) factorial * ( self visitBPActivityComposite: aBPFlow).
	^ metric
]

{ #category : #visitors }
BPMetricCFC >> visitBPObject: aBPObject [
	"comment stating purpose of message"

	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]"

	^ 1
]

{ #category : #visitors }
BPMetricCFC >> visitBPProcess: aBPProcess [
	"comment stating purpose of message"
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]
	"
	|metric|
	metric:=0.
	aBPProcess lstActivities do:[ :act | metric:= metric + ( act accept:self)].
	^ metric.
]

{ #category : #visitors }
BPMetricCFC >> visitBPScope: aBPScope [
	|metric|
	metric:=1.
	aBPScope lstActivities do:[ :act | metric:= metric + ( act accept:self)].
	^ metric.
]

{ #category : #visitors }
BPMetricCFC >> visitBPSequence: aBPSequence [
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	A BPEL sequence activity contains a list of activities
	that are to be executed in lexical order, i.e. the order
	they are placed within the sequence element (i.e.
	<sequence>). The sequence activity stops when
	all activities within it are done.
	<sequence attributes>
	activity+
	</sequence>
	As illustrated in the previous fragment, a
	sequence has one or more activities. The formal
	definition of a sequence S is S = {a 1 , a 2 , . . . , a n },
	where a i , i ∈ {1, . . . , n}, are activities. The CFC of
	a sequence of activities is calculated has follows: lows:
	--------------------------------------------------------
	CFC BPEL Act (S) = Summation[ CFC BPEL Act (a) ]{aES} :(BS, S is a sequence
	--------------------------------------------------------
	From our viewpoint, the control-flow involved in
	a sequence of activities is marginal because all the
	activities are invoked in sequence. Therefore, we
	express this fact by simply adding the CFC of the
	activities of a sequence.
	"
	|metric|
	metric:=0.
	aBPSequence lstActivities do:[ :act | metric:= metric + ( act accept:self)].
	^ metric.
]

{ #category : #visitors }
BPMetricCFC >> visitBPSwitch: aBPSwitch [
	"
		[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal
	]
	A BPEL switch structured activity is a construct
	for introducing conditions based on the evaluation
	of a Boolean expression. According to van der
	Aalst et al. (2000), this BPEL construct can be
	classified as an exclusive choice. The exclusive
	choice structure defines a point in the process at
	which a certain flow is taken, based on a decision.
	Most programming languages, such as C, Java, and
	Perl, provide exclusive choice structures. In BPEL,
	the representation of a switch activity is as follows:
	<switch attributes>
	elements
	<case condition="

	"bool-expr"

	">+
	activity
	</case>
	<otherwise>?
	activity
	</otherwise>
	</switch>
	As illustrated in the previous fragment, the switch
	activity consists of an ordered list of conditions
	specified by a case element followed by one optional
	otherwise element. The activity specified in a case
	element is executed when the Boolean expression
	associated with the case is true. When none of the
	cases are true, the activity in the otherwise element
	is executed. The formal definition of a switch Sw
	is Sw = {a 1 , a 2 , . . . , a n }, where a i , and i ∈ {1, . . . , n},
	are activities. The CFC of a switch of activities is
	calculated as follows:
	-------------------------------------------------------
	CFC BPELAct (Sw) = n * ( Summation[CFC BPELAct (a)]{a E Sw} , Sw is a switch, n = |Sw| )
	-------------------------------------------------------
	In our perspective, the control-flow introduced by
	a switch activity is significant. The switch with
	‘n’ conditional activities leads to the exclusive
	execution of ‘n’ distinct activities. The CFC metric
	for the switch is calculated by multiplying the
	number of activities in a switch (denoted as |Sw|)
	by the sum of the CFC of all the activities. The sum
	of the CFC of all the activities is multiplied by |Sw|
	to express the effect that the Boolean expression
	(conditions) has on the complexity of an ordered set
	of activities. The complexity is linearly dependent
	on the number of Boolean expressions. sions.
	"

	| metric n |
	metric := 0.
	n := aBPSwitch numberOfCase.	
	"CFC BPELAct (Sw) = n * ( Summation[CFC BPELAct (a)]{a E Sw} , Sw is a switch, n = |Sw| )"
	metric := n * 0.
	^ metric
]

{ #category : #visitors }
BPMetricCFC >> visitBPWhile: aBPWhile [
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	The while structured activity offers the possibility
	of executing an activity in an iterative way. The
	activity in a while structure is executed as long as
	the Boolean expression in the condition attribute is
	true. This construct is also implemented by most
	programming languages. BPEL represents a while
	activity in the following way:
	<while condition="

	"bool-expr"

	"attributes>
	activity
	</while>
	The formal definition of a while W is W = {a},
	where ‘a’ is an activity. The CFC of a while is
	calculated as follows:
	--------------------------------------------------------
	CFC BPEL Act (W) = log2 (CFC Act (a) + 2) CFC Act (a),
	W is a while structured activity, a is an activity,
	a ∈ W
	--------------------------------------------------------
	In our perspective, the control-flow introduced
	by a while activity is directly dependent on the
	CFC of the activity affected by the while. This
	means that the more the activities covered by a
	while, the greater the complexity. For example,
	if a while element is applied to a basic activity,
	such as <invoke>, the CFC is log 2 (1 + 2) ∗ 1 = 1, 6.
	This makes sense since the complexity of the basic
	activity <invoke> is 1 and the <while> increases
	the overall local complexity. If, for example, the
	while element is applied to a sequence composed
	of two basic activities, the CFC is log 2 (2 + 2) ∗ 2 = 4.
	Figure 2 shows a graph that depicts the increase in
	complexity of a while activity applied to a sequence
	activity composed of a variable number of basic
	activities ranging from 1 to 20. The CFC varies
	linearly with the number of basic activities in the
	sequence.
	"

	| metric base |
	"CFC BPEL Act (W) = log2 (CFC Act (a) + 2) CFC Act (a),"
	"metric = CFC Act (a) +  2"
	base := self visitBPActivityComposite: aBPWhile.
	metric := (base + 2 log: 2) * base.
	^ metric
]
