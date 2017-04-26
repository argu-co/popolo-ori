# Popolo-ORI
Popolo-ORI is an extension of the [Popolo specification](http://popoloproject.com), or more specifically, the [Popolo Ontology](https://raw.githubusercontent.com/joepsz/popolo-spec/ontology/ontology.owl). It is designed to standardize data that stems from the meeting software used by Dutch Municipalities.

Quick links:
* [Auto-generated documentation which includes Popolo](http://www.essepuntato.it/lode/imported/reasoner/https://raw.githubusercontent.com/joepsz/popolo-ori/master/popolo-ext.owl).
* [Auto-generated documentation which does not include vanilla Popolo](http://www.essepuntato.it/lode/owlapi/reasoner/https://raw.githubusercontent.com/joepsz/popolo-ori/master/popolo-ext.owl)

## New classes
The amount of classes in an ontology should be kept as low as possible. For each added class, a reason is stated for including it here.

### Agenda items
An item in a list of topics to be discussed at an event.

Vanilla Popolo knows only Events, which can have child Events. This could be used to describe items in an agenda, but this causes a few issues. Firstly, if some front-end application were to list all Events, it would show both meetings and their agenda items. Secondly, Agenda Items have a position (index) in their parent Event. This attribute would not make sense in an Event. Thirdly,

### Attachment
A file that is attached to something.

Most meeting software used by (Dutch) municipalities use a lot of attachments. These are mostly linked to Agenda Items. Popolo does not have a Model for these kind of items.

### Amendement
A proposal to modify another proposal.

This sub-class of the Motion item has the added 'amends' property.
