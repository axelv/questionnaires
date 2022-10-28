## {{page-title}}

@```
from StructureDefinition
where url = 'http://fake-acme.org/fhir/StructureDefinition/ACMEGithubProjectPatient'
select name, url, id, version
```

## Scope and Usage

This Resource covers data about patients and animals involved in a wide
range of health-related activities, including:

-   Curative activities
-   Psychiatric care
-   Social services
-   Pregnancy care
-   Nursing and assisted living
-   Dietary services
-   Tracking of personal health and exercise data

The data in the Resource covers the "who" information about the patient:
its attributes are focused on the demographic information necessary to
support the administrative, financial and logistic procedures. A Patient
record is generally created and maintained by each organization
providing care for a patient. A patient or animal receiving care at
multiple organizations may therefore have its information present in
multiple Patient Resources.

Not all concepts are included within the base resource (such as race,
ethnicity, organ donor status, nationality, etc.), but may be found in
profiles defined for specific jurisdictions (e.g., US Meaningful Use
Program) or standard extensions. Such fields vary widely between
jurisdictions and often have different names and valuesets for the
similar concepts, but they are not similar enough to be able to map and
exchange.

## Resource Content

{{tree:http://fake-acme.org/fhir/StructureDefinition/ACMEGithubProjectPatient, hybrid}}

### Terminology bindings

@```
from StructureDefinition
where url = 'http://fake-acme.org/fhir/StructureDefinition/ACMEGithubProjectPatient'
select
  title,
  join differential.element.where(binding.strength.exists())
  {
     path,
     binding.strength,
     binding.valueSet
  }
order by title
```

### Constraints

@```
from StructureDefinition
where url = 'http://fake-acme.org/fhir/StructureDefinition/ACMEGithubProjectPatient'
select differential.element {
   path,
   join constraint {
      key,
      severity,
      human,
      expression
    }
  }
```

Notes:

-   multipleBirth can be either expressed as a Boolean (just indicating
    whether the patient is part of a multiple birth) or as an integer,
    indicating the actual birth order.
-   Patient records may only be in one of two statuses: in use
    (active=true) and not in use (active=false). A normal record is
    active, i.e. it is in use. Active is set to 'false' when a record is
    created as a duplicate or in error. A record does not need to be
    linked to be inactivated.
-   The *link* element is used to assert that two or more Patient
    resources are both about the same actual patient. See below for
    further discussion
-   There should be only one preferred language (Language.preference =
    true) per mode of expression.
-   The Contact for a Patient has an element *organization*, this is for
    use with guardians or business related contacts where just the
    organization is relevant.