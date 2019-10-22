"
A BPSimUIGLMTblScenario is static code to print the result
in tables base on bpsim model.

"
Class {
	#name : #BPSimUIGLMTblScenario,
	#superclass : #Object,
	#category : #'A4BP-SimEngine-View-UI'
}

{ #category : #'as yet unclassified' }
BPSimUIGLMTblScenario class >> displayIn: a usingScenario: scenario [
	|eps table|
	eps := scenario elementParameters select:[ :e | e elementRef aName size > 0 ].
	"tobserver := BPSimGLMTableObserver new.
	table := a table.
	tobserver table:table.
   bpSimExecution addObserver: tobserver."
	a accordionArrangement.
	table := a table.
	table
		title: 'Time Parameters';
		shouldValidate:true;
		act: [ :b "Refresh Menu" | b update ]
			icon: GLMUIThemeExtraIcons glamorousRefresh
			entitled: A4BPUII18n msg msgOpenNewSOAContext;
		display: [ eps];
		column: 'Element' evaluated: [ :each | each elementRef aName ];
		column: 'Processing' evaluated: [ :each | each processing vv asString ];
		column: 'Historical' evaluated: [ :each | each historical vv asString ];
		column: 'ValidationTime' evaluated: [ :each | each validation vv asString ];
		column: 'QueueTime' evaluated: [ :each | each queue vv asString ];
		column: 'TransferTime' evaluated: [ :each | each transfer vv asString ];
		column: 'WaitTime' evaluated: [ :each | each wait vv asString ];
		column: 'EeworkTime' evaluated: [ :each | each rework vv asString ];
		column: 'SetUpTime' evaluated: [ :each | each setUp vv asString ].
	table := a table.	
	table
		title: 'Resources Parameters';
		shouldValidate:true;
		act: [ :b "Refresh Menu" | b update ]
			icon: GLMUIThemeExtraIcons glamorousRefresh
			entitled: A4BPUII18n msg msgOpenNewSOAContext;
		display: [ eps ];
		column: 'Element' evaluated: [ :each | each elementRef aName ];
		column: 'Quantity' evaluated: [ :each | each quantity vv asString ];
		column: 'Availability' evaluated: [ :each | each availability vv asString ].
	
	table := a table.	
	table
		title: 'Cost Parameters';
		shouldValidate:true;
		act: [ :b "Refresh Menu" | b update ]
			icon: GLMUIThemeExtraIcons glamorousRefresh
			entitled: A4BPUII18n msg msgOpenNewSOAContext;
		display: [ eps ];
		column: 'Element' evaluated: [ :each | each elementRef aName ];
		column: 'UnitCost' evaluated: [ :each | each unitCost vv asString ].
		
	table := a table.	
	table
		title: 'Control Parameters';
		shouldValidate:true;
		act: [ :b "Refresh Menu" | b update ]
			icon: GLMUIThemeExtraIcons glamorousRefresh
			entitled: A4BPUII18n msg msgOpenNewSOAContext;
		display: [ eps ];
		column: 'Element' evaluated: [ :each | each elementRef aName ];
		column: 'probability' evaluated: [ :each | each probability vv asString ].
]
