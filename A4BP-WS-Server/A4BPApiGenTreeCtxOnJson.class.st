"
find the context list in the data base 
base on user parameters
		
example: 
{            
    ""children"": [  
          {
            ""name"": ""Branch"",
            ""children"": [                     
              {
                ""name"": ""Branch"",
                ""children"": [                     
                { 
                  ""name"": ""Leaf""                        
                },
                {
                  ""name"": ""Leaf""                        
                }                      
              ]                           
              }   ,
              {
                ""name"": ""Branch"",
                ""children"": [                     
                { 
                  ""name"": ""Leaf""                        
                },
                {
                  ""name"": ""Leaf""                        
                }                      
              ]                           
              }                      
            ]
          }        
        ]
      }

"
Class {
	#name : #A4BPApiGenTreeCtxOnJson,
	#superclass : #Object,
	#instVars : [
		'sbjson',
		'sbclose',
		'nodekey'
	],
	#category : #'A4BP-WS-Server-Biz'
}

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> genNodes: aModel level:level alevel:alevel [
	|nodes|
	nodes := aModel getChildrenNodes.
	nodes ifNil:[ ^ self].
	(alevel > level or:nodes isEmpty)
	ifTrue:[
		self increasenodekey.
		sbjson := sbjson , '{',(self genid:aModel),',"name":"', aModel name , '"}'.
	] 
	ifFalse:[
		nodes do:[ :n |
			self increasenodekey.
			sbjson := sbjson , '{',(self genid:aModel),',"name":"', n name , '","children":['.
			self genNodes: n level:level alevel:alevel + 1 .
			sbjson := sbjson , ']},'.
		].
		"Remove the last character"
		[sbjson := sbjson copyFrom: 1 to: (sbjson size - 1).] on: Error do:[ :e |  A4BPLog d: e].
	].
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> generate: aModel level: level [
	sbjson := ''.
	[
		sbclose := ']}]}'.
		nodekey := 0.
		sbjson := '{"children":[{',(self genid:aModel),',"name":"', aModel name ,'","children":['.
		self genNodes: aModel level:level alevel:0.
		sbjson := sbjson , sbclose.
	] on: Error do:[ :e | 
		sbjson := sbjson , sbclose.
		sbjson := sbjson, 'ERROR:{',e messageText asString,'}'.
	].
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> genid [
	^ self pre,self nodekey
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> genid:aModel [
	^ '"id":"',self pre,self nodekey,'","key":"', aModel key,'"'
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> increasenodekey [
	nodekey := nodekey + 1.
	^ nodekey
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> nodekey [
	^ nodekey asString
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> pre [
	^ 'node-'.
]

{ #category : #generate }
A4BPApiGenTreeCtxOnJson >> result [
	^ sbjson 
]
