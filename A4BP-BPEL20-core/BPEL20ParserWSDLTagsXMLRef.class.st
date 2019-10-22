Class {
	#name : #BPEL20ParserWSDLTagsXMLRef,
	#superclass : #BPEL20ParserTagsXMLRef,
	#category : #'A4BP-BPEL20-core-parser'
}

{ #category : #'as yet unclassified' }
BPEL20ParserWSDLTagsXMLRef class >> annotation [
<MSEClass: #BPEL20ParserWSDLTagsXMLRef  super: #BPEL20ParserTagsXMLRef >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #getset }
BPEL20ParserWSDLTagsXMLRef class >> fillTags [
	tags addAll: self lstOfWSDLTagClass.
	^ tags
]

{ #category : #getset }
BPEL20ParserWSDLTagsXMLRef class >> lstOfWSDLTagClass [
	|lstItems|
	lstItems := Dictionary new.
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:definitions' objClass: BPWSDLDefinition).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'definitions' objClass: BPWSDLDefinition).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:message' objClass: BPWSDLMessage).	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'message' objClass: BPWSDLMessage).	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:part' objClass: BPWSDLPart).	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'part' objClass: BPWSDLPart).	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:types' objClass: BPWSDLTypes).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'types' objClass: BPWSDLTypes).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:portType' objClass: BPWSDLPortType).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'portType' objClass: BPWSDLPortType).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:schema' objClass: BPXSDSchema).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'schema' objClass: BPXSDSchema).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'wsdl:import' objClass: BPXSDImport).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'import' objClass: BPXSDImport).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'plnk:role' objClass: BPWSDLPlnkRole).
	
	
	"wsdl for bpel"	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'plnk:partnerLinkType' objClass: BPWSDLPlnkType).

	"bpws:property
	bpws:propertyAlias"
	^ lstItems
	
]
