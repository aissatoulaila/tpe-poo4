Class {
	#name : #Clients,
	#superclass : #Object,
	#instVars : [
		'compte',
		'id',
		'nom'
	],
	#category : #tpepoo4
}

{ #category : #accessing }
Clients >> compte [
	^ compte
]

{ #category : #accessing }
Clients >> compte: uncompte [
	compte := uncompte
]

{ #category : #operation }
Clients >> depot: aNumber [
	self compte etat
		ifFalse: [^ false ].
	aNumber < 1
		ifTrue: [ ^ false ]
		ifFalse: [ self compte montant: self compte+ aNumber.
			^ true ]
]

{ #category : #accessing }
Clients >> id [
	^ id
]

{ #category : #accessing }
Clients >> id: anObject [
	id := anObject
]

{ #category : #initialization }
Clients >> initialize [ 
	super initialize.
	  nom:= ''.
	  id:= 0.
	  compte:= nil
]

{ #category : #accessing }
Clients >> nom [
	^ nom
]

{ #category : #accessing }
Clients >> nom: anObject [
	nom := anObject
]

{ #category : #operation }
Clients >> retirer:aNumber [
  ( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
			(self compte montant > aNumber )
			ifFalse: [ Transcript show: 'Solde insuffisant';cr.
				^false]
			ifTrue:[
				(self compte) montant:(self compte - aNumber).
				^true
				]	 
			]
	
]

{ #category : #operation }
Clients >> transferer:aNumber a: unClient [
( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
				(self retirer: aNumber) 
					ifTrue: [
						(unClient depot: aNumber)
								ifTrue: [^true]
								ifFalse: [ ^false ]
						]	
					]
]
