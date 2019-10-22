"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State the name of the class with one line description: For example, I'm xxx the root of the hierarchy of visitor objects.

For the Responsibility part: Three sentences about my main responsibility, what I'm doing, what services do I offer.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- what is the way to create instances is a plus.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	project:		<Object>


    Implementation Points
"
Class {
	#name : #ConfigurationOfA4BP,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : #ConfigurationOfA4BP
}

{ #category : #'development support' }
ConfigurationOfA4BP class >> DevelopmentSupport [

"See the methods in the 'development support' category on the class-side of MetacelloBaseConfiguration. Decide what development support methods you would like to use and copy them the the class-side of your configuration."
	<apiDocumentation>

]

{ #category : #private }
ConfigurationOfA4BP class >> baseConfigurationClassIfAbsent: aBlock [

	^Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			self ensureMetacelloBaseConfiguration.
			Smalltalk at: #MetacelloBaseConfiguration ifAbsent: aBlock ].

]

{ #category : #private }
ConfigurationOfA4BP class >> catalogDescription [
	^ 'A4BP (Assessment for Business Process).
See more here: http://a4bp.com/'
]

{ #category : #private }
ConfigurationOfA4BP class >> catalogKeywords [
	^ #(#development #BPMN)
]

{ #category : #private }
ConfigurationOfA4BP class >> ensureMetacello [

	(self baseConfigurationClassIfAbsent: []) ensureMetacello
]

{ #category : #private }
ConfigurationOfA4BP class >> ensureMetacelloBaseConfiguration [

	Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			| repository version |
			repository := MCHttpRepository location: 'http://seaside.gemstone.com/ss/metacello' user: '' password: ''.
			repository
				versionReaderForFileNamed: 'Metacello-Base-DaleHenrichs.2.mcz'
				do: [ :reader | 
					version := reader version.
					version load.
					version workingCopy repositoryGroup addRepository: repository ] ]
]

{ #category : #'metacello tool support' }
ConfigurationOfA4BP class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #loading }
ConfigurationOfA4BP class >> load [
	"Load the #stable version defined for this platform. The #stable version is the version that is recommended to be used on this platform."

	"self load"

	<apiDocumentation>
	^(self project version: #stable) load
]

{ #category : #loading }
ConfigurationOfA4BP class >> loadBleedingEdge [
	"Load the latest versions of the mcz files defined for this project. It is not likely that the #bleedingEdge has been tested."

	"self loadBleedingEdge"

	<apiDocumentation>
	^(self project version: #bleedingEdge) load
]

{ #category : #loading }
ConfigurationOfA4BP class >> loadDevelopment [
	"Load the #development version defined for this platform. The #development version will change over time and is not expected to be stable."

	"self loadDevelopment"

	<apiDocumentation>
	^(self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfA4BP class >> project [

	^self new project
]

{ #category : #'development support' }
ConfigurationOfA4BP class >> validate [
	"Check the configuration for Errors, Critical Warnings, and Warnings (see class comment for MetacelloMCVersionValidator for more information). 
	Errors identify specification issues that will result in unexpected behaviour when you load the configuration. 
	Critical Warnings identify specification issues that may result in unexpected behavior when you load the configuration.
	Warnings identify specification issues that are technically correct, but are worth take a look at."

	"self validate"

	<apiDocumentation>
	self ensureMetacello.
	^ ((Smalltalk at: #MetacelloToolBox) validateConfiguration: self debug: #() recurse: false) explore
]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline014: spec [
	<version: '0.14-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'SciSmalltalk' with: [
				spec
					className: #ConfigurationOfSciSmalltalk;
					versionString: '0.24';
					repository: 'http://smalltalkhub.com/mc/SergeStinckwich/SciSmalltalk/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.3.8';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.0';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'JNIPort' with: [
				spec
					className: #ConfigurationOfJNIPort;
					versionString: '3.0-baseline';
					repository: 'http://smalltalkhub.com/mc/JNIPort/JNIPort/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ]; 
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ]].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline015: spec [
	<version: '0.15-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'SciSmalltalk' with: [
				spec
					className: #ConfigurationOfSciSmalltalk;
					versionString: '0.24';
					repository: 'http://smalltalkhub.com/mc/SergeStinckwich/SciSmalltalk/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.3.8';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.0';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'JNIPort' with: [
				spec
					className: #ConfigurationOfJNIPort;
					versionString: '3.0-baseline';
					repository: 'http://smalltalkhub.com/mc/JNIPort/JNIPort/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline016: spec [
	<version: '0.16-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.3.8';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.0';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'JNIPort' with: [
				spec
					className: #ConfigurationOfJNIPort;
					versionString: '3.0-baseline';
					repository: 'http://smalltalkhub.com/mc/JNIPort/JNIPort/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline017: spec [
	<version: '0.17-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.3.8';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.0';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'JNIPort' with: [
				spec
					className: #ConfigurationOfJNIPort;
					versionString: '3.0-baseline';
					repository: 'http://smalltalkhub.com/mc/JNIPort/JNIPort/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline018: spec [
	<version: '0.18-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.3.8';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.0';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline019: spec [
	<version: '0.19-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline020: spec [
	<version: '0.20-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Glamour-Roassal2-Presentations'. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline021: spec [
	<version: '0.21-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.9';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Glamour-Roassal2-Presentations';
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline022: spec [
	<version: '0.22-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Glamour-Roassal2-Presentations';
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline023: spec [
	<version: '0.23-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec 
			package: 'A4BP-core';
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Glamour-Roassal2-Presentations';
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline024: spec [
	<version: '0.24-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline025: spec [
	<version: '0.25-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline026: spec [
	<version: '0.26-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline027: spec [
	<version: '0.27-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3-baseline';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline028: spec [
	<version: '0.28-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'Glamour' with: [
				spec
					className: #ConfigurationOfGlamour;
					versionString: '3.3.3';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline029: spec [
	<version: '0.29-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'GlamourCore' with: [
				spec
					className: #ConfigurationOfGlamourCore;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline030: spec [
	<version: '0.30-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'GlamourCore' with: [
				spec
					className: #ConfigurationOfGlamourCore;
					versionString: '4.19';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.38';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfA4BP >> baseline031: spec [
	<version: '0.31-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ajperalt/A4BP/main/'.
		spec 
			project: 'GlamourCore' with: [
				spec
					className: #ConfigurationOfGlamourCore;
					versionString: '4.19';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '11';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '9';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: '1.39';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: '2.6.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.6';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: 'A4BP-BPEL20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-BPMN20-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BPMN20-view' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: 'A4BP-BpelAnalyzer-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-BpelAnalyzer-view' with: [
				spec requires: #('A4BP-BpelAnalyzer-core' 'A4BP-core' #'A4BP-View' ). ];
			package: 'A4BP-DB' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' ). ];
			package: 'A4BP-DB-BPMN20' with: [
				spec requires: #('A4BP-DB' ). ];
			package: 'A4BP-JVM' with: [
				spec requires: #('A4BP-core' ). ];
			package: #'A4BP-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-core' 'A4BP-BPMN20-core' #'A4BP-BPMN20-view' ). ];
			package: #'A4BP-SimEngine-View' with: [
				spec requires: #(#'A4BP-View' 'A4BP-core' ). ];
			package: #'A4BP-SimEngine-core' with: [
				spec requires: #('A4BP-core' ). ];
			package: 'A4BP-Spy' with: [
				spec requires: #('A4BP-core' 'A4BP-BPMN20-core' 'A4BP-BPEL20-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-Tests-BPEL20-core' with: [
				spec requires: #('A4BP-BPEL20-core' ). ];
			package: #'A4BP-Tests-BPEL20-source' with: [
				spec requires: #('A4BP-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BPMN20-core' with: [
				spec requires: #(#'A4BP-BPMN20-view' ). ];
			package: 'A4BP-Tests-BPMN20-source' with: [
				spec requires: #('A4BP-BPMN20-core' 'A4BP-Tests-core' ). ];
			package: 'A4BP-Tests-BpelAnalyzer' with: [
				spec requires: #('A4BP-BpelAnalyzer-view' ). ];
			package: #'A4BP-Tests-SimEngine-BPMN20' with: [
				spec requires: #(#'A4BP-SimEngine-View' #'A4BP-SimEngine-BPMN20' ). ];
			package: 'A4BP-Tests-core' with: [
				spec requires: #(#'A4BP-View' ). ];
			package: #'A4BP-View' with: [
				spec requires: #('A4BP-core' 'Glamour-Roassal2-Presentations' ). ];
			package: 'A4BP-WSDL-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' ). ];
			package: 'A4BP-XSD-core' with: [
				spec requires: #('A4BP-core' 'A4BP-BpelAnalyzer-core' #'A4BP-View' ). ];
			package: 'A4BP-core';
			package: 'Glamour-Roassal2-Presentations';
			package: 'Math-Core';
			package: 'Math-Core-Distribution' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-Core-Process' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Math-DHB-Numerical' with: [
				spec requires: #('Math-Core' 'Math-Core-Distribution' 'Math-Core-Process' ). ];
			package: 'Math-Random' with: [
				spec requires: #('Math-Core' ). ];
			package: 'Roassal2GT' with: [
				spec requires: #('Roassal2' ). ]. ].

]

{ #category : #accessing }
ConfigurationOfA4BP >> customProjectAttributes [
	 "Edit to return a collection of any custom attributes e.g. for conditional loading: Array with: #'Condition1' with: #'Condition2.
	For more information see: http://code.google.com/p/metacello/wiki/CustomProjectAttrributes"

	^ #().
]

{ #category : #'symbolic versions' }
ConfigurationOfA4BP >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: '0.31-baseline'.

]

{ #category : #accessing }
ConfigurationOfA4BP >> project [

	^ project ifNil: [ 
		"Bootstrap Metacello if it is not already loaded"
		(self class baseConfigurationClassIfAbsent: []) ensureMetacello.
		"Construct Metacello project"
		project := MetacelloMCProject new projectAttributes: self customProjectAttributes. 
		(Smalltalk at: #MetacelloVersionConstructor) on: self project: project.
		project loadType: #linear. "change to #atomic if desired"
		project ]
]

{ #category : #'symbolic versions' }
ConfigurationOfA4BP >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: '1.28'.

]

{ #category : #versions }
ConfigurationOfA4BP >> version10: spec [
	<version: '1.0' imports: #('0.16-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '11/21/2015 12:01'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'JNIPort' with: '3.0-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.84';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.29';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.219';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcamop.18';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcamop.8';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcamop.88';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcamop.70';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3012';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.37';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.1';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version110: spec [
	<version: '1.10' imports: #('0.20-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.10'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/2/2016 23:40'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.88';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.90';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.73';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcamo.3020';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.46';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version111: spec [
	<version: '1.11' imports: #('0.21-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.11'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/3/2016 07:29'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.88';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.90';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.73';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcamo.3020';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.46';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version112: spec [
	<version: '1.12' imports: #('0.21-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.12'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/3/2016 07:32'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.88';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.90';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.73';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.46';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version113: spec [
	<version: '1.13' imports: #('0.21-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.13'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/3/2016 14:03'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.88';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.91';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version114: spec [
	<version: '1.14' imports: #('0.22-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.14'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/8/2016 21:35'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.13';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.88';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.91';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version115: spec [
	<version: '1.15' imports: #('0.22-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.15'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/8/2016 22:28'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.13';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.91';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version116: spec [
	<version: '1.16' imports: #('0.22-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.16'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/9/2016 14:49'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.13';
			project: 'XMLParser' with: '2.7.6';
			project: 'XMLWriter' with: '2.7.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version117: spec [
	<version: '1.17' imports: #('0.23-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.17'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '5/9/2016 20:49'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.13';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version118: spec [
	<version: '1.18' imports: #('0.23-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.18'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '6/18/2016 16:59'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.32';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version119: spec [
	<version: '1.19' imports: #('0.24-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.19'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/8/2016 12:47'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.32';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version11: spec [
	<version: '1.1' imports: #('0.16-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/13/2016 09:10'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'JNIPort' with: '3.0-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.84';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.29';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.219';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcamop.18';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcamop.8';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcamop.88';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcamop.70';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3012';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.37';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.1';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version120: spec [
	<version: '1.20' imports: #('0.25-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.20'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/8/2016 16:28'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.32';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version121: spec [
	<version: '1.21' imports: #('0.26-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.21'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/8/2016 16:36'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.32';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version122: spec [
	<version: '1.22' imports: #('0.27-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.22'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/8/2016 16:50'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.32';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-SergeStinckwich.47';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.74';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.92';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.89';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.33'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version123: spec [
	<version: '1.23' imports: #('0.27-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.23'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '11/29/2016 16:37'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.38';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-SergeStinckwich.221';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.48';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.21';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-SergeStinckwich.26';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-SergeStinckwich.3022';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-SergeStinckwich.90';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.44'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version124: spec [
	<version: '1.24' imports: #('0.28-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.24'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '6/15/2017 20:16'.
		spec 
			project: 'Glamour' with: '3.3.3';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.47';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.31';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.222';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.49';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.27';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3026';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.94';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.55'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version125: spec [
	<version: '1.25' imports: #('0.28-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.25'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '6/15/2017 21:12'.
		spec 
			project: 'Glamour' with: '3.3.3';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.47';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.31';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.222';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.49';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.27';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3027';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.95';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.55'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version126: spec [
	<version: '1.26' imports: #('0.29-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.26'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/9/2017 08:20'.
		spec 
			project: 'GlamourCore' with: '4.19.1';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.49';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.31';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.222';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.49';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.27';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.13';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3027';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.95';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.55'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version127: spec [
	<version: '1.27' imports: #('0.30-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.27'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/9/2017 08:53'.
		spec 
			project: 'GlamourCore' with: '4.19';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.38';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.222';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.49';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.23';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.27';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3025';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.92';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.56'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version128: spec [
	<version: '1.28' imports: #('0.31-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.28'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '7/9/2017 09:28'.
		spec 
			project: 'GlamourCore' with: '4.19';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9';
			project: 'Roassal2' with: '1.39';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6'.
		spec 
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.222';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.49';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.23';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-SergeStinckwich.75';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.27';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-SergeStinckwich.101';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.11';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-SergeStinckwich.17';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.14';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3025';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.92';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlvaroJosePeraltaOcampo.42';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Roassal2GT' with: 'Roassal2GT-AlexandreBergel.56'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version12: spec [
	<version: '1.2' imports: #('0.17-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/13/2016 09:13'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'JNIPort' with: '3.0-baseline';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.84';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.29';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.219';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcamop.18';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcamop.8';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcamop.88';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcamop.70';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3012';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.37';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.1';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version13: spec [
	<version: '1.3' imports: #('0.18-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.3'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/14/2016 17:37'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.84';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.29';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.219';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcamop.18';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcamop.8';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcamop.88';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3012';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.37';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.1';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version14: spec [
	<version: '1.4' imports: #('0.18-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.4'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/15/2016 16:33'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.84';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.29';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.219';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcamop.18';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcamop.8';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcamop.88';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3012';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.37';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.1';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version15: spec [
	<version: '1.5' imports: #('0.18-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.5'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/15/2016 17:36'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.85';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.220';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.19';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.89';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3013';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.39';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version16: spec [
	<version: '1.6' imports: #('0.18-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.6'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/15/2016 17:45'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.3.8';
			project: 'XMLWriter' with: '2.6.0';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.85';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.220';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.19';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.89';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3013';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.40';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version17: spec [
	<version: '1.7' imports: #('0.19-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.7'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/17/2016 12:39'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.5.8';
			project: 'XMLWriter' with: '2.6.6';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.85';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.220';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.19';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.89';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3013';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.40';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version18: spec [
	<version: '1.8' imports: #('0.20-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.8'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '1/19/2016 16:44'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.5.8';
			project: 'XMLWriter' with: '2.6.6';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.85';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.220';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.19';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.89';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3013';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.40';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlexandreBergel.41'. ].

]

{ #category : #versions }
ConfigurationOfA4BP >> version19: spec [
	<version: '1.9' imports: #('0.20-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.9'.
		spec author: 'AlvaroJosePeraltaOcampo'.
		spec timestamp: '2/22/2016 14:04'.
		spec 
			project: 'Glamour' with: '3.3-baseline';
			project: 'Roassal2' with: '1.9';
			project: 'XMLParser' with: '2.6.1';
			project: 'XMLWriter' with: '2.6.6';
			project: 'NeoCSV' with: '11';
			project: 'NeoJSON' with: '9'.
		spec 
			package: 'A4BP-core' with: 'A4BP-core-AlvaroJosePeraltaOcampo.86';
			package: 'A4BP-BPEL20-core' with: 'A4BP-BPEL20-core-AlvaroJosePeraltaOcampo.30';
			package: 'A4BP-BPMN20-core' with: 'A4BP-BPMN20-core-AlvaroJosePeraltaOcampo.220';
			package: 'A4BP-BpelAnalyzer-core' with: 'A4BP-BpelAnalyzer-core-AlvaroJosePeraltaOcampo.20';
			package: 'A4BP-WSDL-core' with: 'A4BP-WSDL-core-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-XSD-core' with: 'A4BP-XSD-core-AlvaroJosePeraltaOcampo.9';
			package: #'A4BP-SimEngine-core' with: 'A4BP-SimEngine-core-AlvaroJosePeraltaOcampo.89';
			package: #'A4BP-SimEngine-BPMN20' with: 'A4BP-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.71';
			package: #'A4BP-View' with: 'A4BP-View-AlvaroJosePeraltaOcampo.3015';
			package: #'A4BP-BPMN20-view' with: 'A4BP-BPMN20-view-AlvaroJosePeraltaOcampo.42';
			package: #'A4BP-SimEngine-View' with: 'A4BP-SimEngine-View-AlvaroJosePeraltaOcampo.25';
			package: #'A4BP-BpelAnalyzer-view' with: 'A4BP-BpelAnalyzer-view-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-DB' with: 'A4BP-DB-AlvaroJosePeraltaOcampo.7';
			package: 'A4BP-DB-BPMN20' with: 'A4BP-DB-BPMN20-AlvaroJosePeraltaOcampo.3';
			package: 'A4BP-JVM' with: 'A4BP-JVM-AlvaroJosePeraltaOcampo.9';
			package: 'A4BP-Spy' with: 'A4BP-Spy-AlvaroJosePeraltaOcampo.10';
			package: #'A4BP-Tests-SimEngine-BPMN20' with: 'A4BP-Tests-SimEngine-BPMN20-AlvaroJosePeraltaOcampo.13';
			package: 'A4BP-Tests-BpelAnalyzer' with: 'A4BP-Tests-BpelAnalyzer-AlvaroJosePeraltaOcamop.12';
			package: 'A4BP-Tests-BPEL20-core' with: 'A4BP-Tests-BPEL20-core-AlvaroJosePeraltaOcampo.2';
			package: 'A4BP-Tests-BPMN20-core' with: 'A4BP-Tests-BPMN20-core-AlvaroJosePeraltaOcampo.16';
			package: 'A4BP-Tests-core' with: 'A4BP-Tests-core-AlvaroJosePeraltaOcampo.12';
			package: #'A4BP-Tests-BPEL20-source' with: 'A4BP-Tests-BPEL20-source-AlvaroJosePeraltaOcampo.5';
			package: 'A4BP-Tests-BPMN20-source' with: 'A4BP-Tests-BPMN20-source-AlvaroJosePeraltaOcampo.14';
			package: 'Math-Core' with: 'Math-Core-StephaneDucasse.4';
			package: 'Math-Core-Distribution' with: 'Math-Core-Distribution-WernerKassens.5';
			package: 'Math-Core-Process' with: 'Math-Core-Process-StephaneDucasse.1';
			package: 'Math-DHB-Numerical' with: 'Math-DHB-Numerical-WernerKassens.47';
			package: 'Math-Random' with: 'Math-Random-SergeStinckwich.14';
			package: 'Glamour-Roassal2-Presentations' with: 'Glamour-Roassal2-Presentations-AlexandreBergel.41'. ].

]
