Class {
	#name : #A4BPJVMSimServer,
	#superclass : #Object,
	#category : #'A4BP-JVM'
}

{ #category : #'as yet unclassified' }
A4BPJVMSimServer class >> annotation [
<MSEClass: #A4BPJVMSimServer  super: #Object >
<package: #'A4BP-JVM' >
]

{ #category : #'as yet unclassified' }
A4BPJVMSimServer class >> getPathInfo: aModel [
	| zfClass jvm ss result xml j_xml|
	jvm := A4BPJVMConfiguration currentJVM.
	zfClass := jvm findClass: #'a4bp.integration.SimulationServer'.
	ss := zfClass new.
	xml := aModel text.
	j_xml := xml asJavaString: jvm.
	result := ss getPathInfo_String:xml.
	^ result asString
]

{ #category : #'as yet unclassified' }
A4BPJVMSimServer class >> runSimulationId: processId bpmnModel: aModel numInstances: numInstances intervalInt: intervalInt intervalUnit: intervalUnit [
	"public String runSimulation(String processId, String bpmnXML,
			int numInstances, int intervalInt, String intervalUnit)
			throws Exception {"
	| zfClass jvm ss result xml j_xml j_processId j_numInstances j_intervalInt j_intervalUnit|
	jvm := A4BPJVMConfiguration instance currentJVM.
	zfClass := jvm findClass: #'a4bp.integration.SimulationServer'.
	ss := zfClass new.
	xml := aModel text.
	j_xml := JavaLangString fromString: xml jvm: jvm.
	j_processId := JavaLangString fromString: processId jvm:jvm.
	j_numInstances := JavaIntArray new: numInstances jvm: jvm.
	j_intervalInt := JavaIntArray new: intervalInt jvm: jvm.
	j_intervalUnit := JavaLangString fromString: intervalUnit jvm: jvm.
	result := ss runSimulation_String: j_processId String: j_xml int: j_numInstances int: j_intervalInt String: j_intervalUnit.
	^ result asString
]

{ #category : #'as yet unclassified' }
A4BPJVMSimServer class >> runSimulationModel: aModel [
	| zfClass jvm ss result xml j_xml|
	jvm := A4BPJVMConfiguration instance currentJVM.
	zfClass := jvm findClass: #'a4bp.integration.SimulationServer'.
	ss := zfClass new.
	xml := aModel text.
	j_xml := JavaLangString fromString: xml jvm: jvm.
	result := ss runSimulation_String: j_xml.
	^ result asString
]
