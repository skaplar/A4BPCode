"
An A4BPBuilderSetNodesinBPWSDLPlnkTypeVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLPlnkTypeVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLPlnkTypeVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLPlnkTypeVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLPlnkTypeVisitor >> visitBPWSDLPlnkRole: aModel [
"
	*** partnerlinkExample**
	<plnk:partnerLinkType name="	"getIncomingMessageFromJMSWSDL"	">
        <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes.  In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type. A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="	"JMSInPortTypeRole"	" portType="	"tns:JMSInPortType"	"/>
    </plnk:partnerLinkType>"
	aBPObj role: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLPlnkTypeVisitor >> visitBPWSDLPlnkType: aModel [
	aBPObj lstPartnertLinkTypes add: aModel
]
