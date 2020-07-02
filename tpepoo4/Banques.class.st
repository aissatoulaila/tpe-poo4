Class {
	#name : #Banques,
	#superclass : #Object,
	#instVars : [
		'clientList',
		'compteList'
	],
	#category : #tpepoo4
}

{ #category : #accessing }
Banques >> clientList [ 
  ^ clientList 
]

{ #category : #accessing }
Banques >> clientList: unClient [
  clientList addFirst: unClient 
]

{ #category : #accessing }
Banques >> compteList [ 
  ^ compteList 
]

{ #category : #accessing }
Banques >> compteList: unCompte [
  compteList addFirst: unCompte 
]

{ #category : #operation }
Banques >> creerCompte: unCompte client: unClient [
	| compte client banque tail|
	banque := self .
	client := unClient.
	compte := unCompte.

	client compte: compte.
	self compteList: compte.
	self clientList: client.
	 
 	client  id: (banque clientList at: 1 )id + 1 .
 
 compte  numero: (banque compteList at: 1 )numero + 1 
 
		
]

{ #category : #initialization }
Banques >> initialize [ 
	"comment stating purpose of message"
		super initialize.
		 compteList:= OrderedCollection new.
		  clientList:= OrderedCollection new 
]
