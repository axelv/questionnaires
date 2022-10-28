Instance: AmyShaw-patient-VALID
InstanceOf: ACMEbasePatient
Usage: #example
* extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension.valueCode = #F
* identifier[ACMEcorpIdentifier].use = #usual
* identifier[ACMEcorpIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[ACMEcorpIdentifier].type.text = "Medical Record Number"
* identifier[ACMEcorpIdentifier].system = "https://fake-acme.org/fhir/NamingSystem/Patient-Identifier"
* identifier[ACMEcorpIdentifier].value = "1032702"
* active = true
* name.family = "Shaw"
* name.given[+] = "Amy"
* name.given[+] = "V."
* telecom[+].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "amy.shaw@example.com"
* gender = #female
* birthDate = "2007-02-20"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "OK"
* address.postalCode = "74047"
* address.country = "US"
* communication
  * language = $BCP47#nl-NL