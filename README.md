# Popolo-ORI
Popolo-ORI is an extension of the [Popolo specification](http://popoloproject.com), or more specifically, the [Popolo Ontology](https://raw.githubusercontent.com/argu-co/popolo-spec/gh-pages/ontology.owl). It is designed to standardize data that stems from the meeting software used by Dutch municipalities. It is part of the [Open-Raadsinformatie project](https://openraadsinformatie.nl) ([github](https://github.com/openstate/open-raadsinformatie)).

Quick links:
* [Auto-generated documentation which includes Popolo](http://www.essepuntato.it/lode/imported/reasoner/https://raw.githubusercontent.com/argu-co/popolo-ori/master/popolo-ext.owl).

## New classes
The amount of classes in an ontology should be kept as low as possible. For each added class, a reason is stated for including it here.

### AgendaItem
An item in a list of topics to be discussed at an event.

Vanilla Popolo knows only Events, which can have child Events. This could be used to describe items in an agenda, but this causes a few issues. Firstly, if some front-end application were to list all Events, it would show both meetings and their agenda items. Secondly, Agenda Items have a position (index) in their parent Event. This attribute would not make sense in an Event. Thirdly,

### Attachment
A file that is attached to something.

Most meeting software used by (Dutch) municipalities use a lot of attachments. These are mostly linked to Agenda Items. Popolo does not have a Model for these kind of items.

### Amendment
A proposal to modify another proposal.

This sub-class of the Motion item has the added 'amends' property.

## Using JSON-LD @context
If your API needs to comply with Popolo-ORI, you will need to include the @context JSON object in your API responses. You can do this in the body of the JSON response or as a link in the HTTP header. Read more about applying this in the [W3C spec of JSON-LD](https://www.w3.org/TR/json-ld/#advanced-context-usage).

## Generating the JSON-LD @context file
*   Follow the install instructions from the [owl2jsonld repo](https://github.com/stain/owl2jsonld/).
*   Run the following command with the correct directories for owl2json and popolo-ori: `java -jar ~/Dev/tools/owl2jsonld/target/uberjar/owl2jsonld-0.2.2-SNAPSHOT-standalone.jar file:///home/joep/Dev/popolo-ori/popolo-ori.owl > ~/Dev/popolo-ori/context.jsonld`
