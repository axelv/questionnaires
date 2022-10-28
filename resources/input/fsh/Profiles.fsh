Profile: ACMEGithubProjectPatient
Parent: ACMEbasePatient
Id: ACMEGithubProjectPatient
* obeys acme-devdays-1
* ^status = #draft
* name ..1
* photo ..0
* communication 1..
  * language from DutchOnlyVS

Invariant: acme-devdays-1
Description: "The Patient should be identifiable"
Severity: #error
Expression: "name.exists() or identifier.exists()"