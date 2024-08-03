"
`Counter` is a simple concrete class which supports incrementing and
decrementing.

Its API is:
 - `increment` and `decrement`
 - `count`
Its creation message is `startAt:`
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: n [
	^ self new count: n
	
]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: n [
	count := n
]

{ #category : 'API' }
Counter >> decrement [
	count := count - 1.
]

{ #category : 'accessing' }
Counter >> increment [
	count := count + 1.
]

{ #category : 'initialization' }
Counter >> initialize [
	count := 0.
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count asString.
]
