//!!!!!!!!!!NOTE: You must add the APOC plugin to the db you plan to install this in.

//Roles and assignment
CREATE 
	(:Role {
		pbotID: apoc.create.uuid(),
		name: "admin"
    }),
    (:Role {
		roleID: apoc.create.uuid(),
		name: "user"
    });

//Public group
CREATE
    (g:Group {
        pbotID: apoc.create.uuid(),
        name: "public"
    }),
    (g)-[:ELEMENT_OF]->(g);

// People/Person/Users are the highest level of independence in the db schema (at least at this moment) so they get created first
// Should there be a metadata log for who enters the enterers?
// My current philosophy as to what should be a node as opposed to a property of a node is that if the propetry is something that you want to have metadata
// of its own, then it should be a new node. If not, then it should be a property - i.e., properties should be terminal information.
// So, in this case, whether a user is an Admin should be signified by attachment to an Admin node rather than it being stated as a property of the Person node.
MATCH
    (admin:Role {name: "admin"}),
    (user:Role {name: "user"}),
    (public:Group {name: "public"})
WITH admin, user, public    
    CREATE 
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "guest",
        surname: "guest",
        email: "guest"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Andrew",
        surname: "Zaffos",
        email: "azaffos@arizona.edu",
        orcid: "0000-0002-4731-6091"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Scott",
        surname: "Wing",
        email: "wing@si.edu",
        orcid: "0000-0002-2954-8905"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Amanda",
        surname: "Ash"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Leo",
        surname: "Hickey"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Kirk",
        surname: "Johnson"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Dori",
        surname: "Contreras",
        email: "dori.contreras@perotmuseum.org",
        orcid: "0000-0001-6820-7364"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Ellen",
        surname: "Currano",
        email: "ecurrano@uwyo.edu",
        orcid: "0000-0002-5242-8573"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Beth",
        surname: "Ellis"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "John",
        surname: "Mitchell"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Douglas",
        surname: "Daly",
        email: "ddaly@nybg.org"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Peter",
        surname: "Wilf",
        email: "pwilf@psu.edu",
        orcid: "0000-0001-6813-1937"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Claire",
        surname: "Cleveland",
        email: "clairecleveland@psu.edu",
        orcid: "0000-0002-0403-3243"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Simon",
        surname: "Goring",
        email: "simon.j.goring@gmail.com",
        orcid: "0000-0002-2700-4605"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Douglas",
        surname: "Meredith",
        email: "douglasm@arizona.edu"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Rebecca",
        surname: "Koll",
        email: "rebecca.koll@perotmuseum.org",
        orcid: "0000-0001-5601-6632"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user),
    (p)-[:HAS_ROLE]->(admin)
WITH admin, user, public
    CREATE
    (p:Person {
        pbotID: apoc.create.uuid(),
        given: "Shanan",
        surname: "Peters",
        email: "peters@geology.wisc.edu",
        orcid: "0000-0002-3346-4317"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user)
WITH admin, user, public
    CREATE
    (p:Person {
    pbotID: apoc.create.uuid(),
        given: "Mark",
        surname: "Uhen",
        email: "muhen@gmu.edu",
        orcid: "0000-0002-2689-0801"
    })-[:MEMBER_OF]->(public),
    (p)-[:HAS_ROLE]->(user);
    
    
MATCH 
    (p:Person),
    (eP:Person {surname:"Meredith"})
CREATE
    (p)<-[:ENTERED_BY {timestamp: datetime()}]-(eP);
    	

// Create two new references as Andrew Zaffos
MATCH 
    (person:Person {given: "Andrew", surname: "Zaffos"}),
    (public:Group {name: "public"})
CREATE (ref1:Reference {
      pbotID: apoc.create.uuid(),
      title: "Manual of Leaf Architecture - Morphological description and categorization of dicotyledonous and net-veined monocotyledonous angiosperms",
      year: "1999",
      publisher: "Smithsonian Institution",
      doi:"10.13140/2.1.3674.5282"
      })-[:ENTERED_BY {timestamp: datetime()}]->(person),
      (ref1)-[:ELEMENT_OF]->(public),
      (ref2:Reference {
      pbotID: apoc.create.uuid(),
      title: "Manual of Leaf Architecture",
      year: "2009",
      publisher: "Cornell University Press"
      })-[:ENTERED_BY {timestamp: datetime()}]->(person),
      (ref2)-[:ELEMENT_OF]->(public);

// Assign authors to the Smithsonian (1999) reference
UNWIND [{lastname: "Ash", order: 1},
		{lastname: "Ellis", order: 2},
		{lastname: "Wing", order: 3},
		{lastname: "Hickey", order: 4},
		{lastname: "Johnson", order: 5},
		{lastname: "Wilf", order: 6}] as author
MATCH (person:Person {surname: author.lastname}), (reference:Reference {publisher: "Smithsonian Institution"})
CREATE (reference)-[:AUTHORED_BY {order: author.order}]->(person);

// Assign authors to the Cornell (2009) reference
UNWIND [{lastname: "Ellis", order: 1},
		{lastname: "Wing", order: 2},
		{lastname: "Hickey", order: 3},
		{lastname: "Johnson", order: 4},
		{lastname: "Wilf", order: 5},
		{lastname: "Mitchell", order: 6},
		{lastname: "Daly", order: 7}] as author
MATCH (person:Person {surname: author.lastname}), (reference:Reference {publisher: "Cornell University Press"})
CREATE (reference)-[:AUTHORED_BY {order: author.order}]->(person);

// Create two new schemas to go with the references above as Andrew Zaffos
MATCH 
    (person:Person {given: "Andrew", surname: "Zaffos"}),
    (public:Group {name: "public"})
CREATE (s1:Schema {
      pbotID: apoc.create.uuid(),
      title: "Smithsonian, 1999",
      year: "1999"
      })-[:ENTERED_BY {timestamp: datetime()}]->(person),
      (s1)-[:ELEMENT_OF]->(public),
      (s2:Schema {
      pbotID: apoc.create.uuid(),
      title: "Cornell, 2009",
      year: "2009"
      })-[:ENTERED_BY {timestamp: datetime()}]->(person),
      (s2)-[:ELEMENT_OF]->(public);

MATCH (schema:Schema {title: "Smithsonian, 1999"}), (reference:Reference {publisher: "Smithsonian Institution"})
CREATE (reference)-[:CITED_BY]->(schema);

MATCH (schema:Schema {title: "Cornell, 2009"}), (reference:Reference {publisher: "Cornell University Press"})
CREATE (reference)-[:CITED_BY]->(schema);

// Assign authors to the Smithsonian schema
UNWIND [{lastname: "Ash", order: 1},
		{lastname: "Ellis", order: 2},
		{lastname: "Wing", order: 3},
		{lastname: "Hickey", order: 4},
		{lastname: "Johnson", order: 5},
		{lastname: "Wilf", order: 6}] as author
MATCH (person:Person {surname: author.lastname}), (schema:Schema {title: "Smithsonian, 1999"})
CREATE (schema)-[:AUTHORED_BY {order: author.order}]->(person);


// Assign authors to the Cornell schema
UNWIND [{lastname: "Ellis", order: 1},
		{lastname: "Wing", order: 2},
		{lastname: "Hickey", order: 3},
		{lastname: "Johnson", order: 4},
		{lastname: "Wilf", order: 5},
		{lastname: "Mitchell", order: 6},
		{lastname: "Daly", order: 7}] as author
MATCH (person:Person {surname: author.lastname}), (schema:Schema {title: "Cornell, 2009"})
CREATE (schema)-[:AUTHORED_BY {order: author.order}]->(person);

// Identify as user Rebecca Koll and add a chracter "leaf attachement" to reference and also specify the enterer relationship
// Note that characters and states refer to the Smithsonian (1999) Manual of leaf architecture
// This is not an exhaustive list

//------------------- Smithsonian, 1999 --------------------------------
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaf Attachment"})-[:CHARACTER_OF]->(schema),
    (character)-[:ELEMENT_OF]->(public),
	(character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1:State {pbotID: apoc.create.uuid(), name: "alternate", definition: "one leaf at each node"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "opposite", definition: "two leaves at each node"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "whorled", definition: "three or more leaves at each node"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "decussate", definition: "each leaf attached at 90 from those above and below (can be opposite or alternate)"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state4)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaf Organization"})-[:CHARACTER_OF]->(schema),
	(character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
	(character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "simple", definition: "consisting of a single lamina"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "palmately compound", definition: "a leaf with separate subunits attached at the apex of a petiole"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "sessile", definition: "subunits attached directly to apex petiole"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "petiolulate", definition: "subunits have their own petioles, which then attach to the apex petiole"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "trifoliate", definition: "a compound leaf with three leaflets"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "pinnately compound", definition: "a leaf with leaflets arranged along a rachis"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
			(state41:State {pbotID: apoc.create.uuid(), name: "odd-pinnate", definition: "rachis contains an odd number of leaflets"})-[:STATE_OF]->(state4),
			(state41)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state41)-[:ELEMENT_OF]->(public),
			(state42:State {pbotID: apoc.create.uuid(), name: "even-pinnate", definition: "rachis contains an even number of leaflets"})-[:STATE_OF]->(state4),
			(state42)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state42)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "bipinnate", definition: "compound leaf dissected twice with leaflets arranged along rachillae that are attached to the rachis (alternate term is twice pinnatley compound)"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "tripinnate", definition: "a compound leaf with leaflets attached to secondary rachillae that are in turn attached to rachillae, which are borne on the rachis (alternate term is thrice pinnately compound)"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state6)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Petiol Features"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "base swollen", definition: "petiole thickens at the base where it attaches to the node"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "pulvinate", definition: "having an abruptly swollen portion near the node around which the leaf can flex"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar Size", definition: "area of the leaf"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "leptophyll", definition: "blade class wherein area of leaf in mm^2 = <25"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "nanophyll", definition: "blade class wherein area of leaf in mm^2 = 25-225"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "microphyll", definition: "blade class wherein area of leaf in mm^2 = 225-2025"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "notophyll", definition: "blade class wherein area of leaf in mm^2 = 2025-4500"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "mesophyll", definition: "blade class wherein area of leaf in mm^2 = 4500-18,225"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "macrophyll", definition: "blade class wherein area of leaf in mm^2 = 18,225-164,025"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state6)-[:ELEMENT_OF]->(public),
		(state7:State {pbotID: apoc.create.uuid(), name: "megaphyll", definition: "blade class wherein area of leaf in mm^2 = >164,025"})-[:STATE_OF]->(character),
		(state7)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state7)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar Shape"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "elliptic", definition: "the widest part of the leaf is on an axis in the middle fith of the long axis of the leaf"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obovate", definition: "widest part of the leaf is on an axis in the apical 2/5 of the leaf"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "ovate", definition: "widest part of the leaf is on an axis in the basal 2/5 of the leaf"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "oblong", definition: "widest part of the leaf is a zone in the middle 1/3 of the long axis where the opposite margins are roughly parallel"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "special", definition: "leaf is not described by any of the shapes listed here"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state5)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar Symmetry"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "symmetrical", definition: "lamina approximately the same shape on either side of the midvein"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "asymmetrical", definition: "lamina different size or shape on either side of the midvein (whole lamina)"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "base asymmetrical", definition: "base of the lamina of markedly different shape on either side of the midline (base only)"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state3)-[:ELEMENT_OF]->(public);

//NOTE: This is a quantitative character. I"ve implemented this by attaching a State with name "quantity".
//OTUs will add the value as a property of the HAS_STATE relationship.
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar L:W Ratio"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "quantity"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state1)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Base Angle", definition: "the angle from the vertex to the points where a line perpendicular to the midvein at 0.25 midvein length from the base intersects the margin"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "acute", definition: "base angle <90"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obtuse", definition: "base angle >90"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "wide obtuse", definition: "a special case of obtuse such that the base angle is >180"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Apex Angle", definition: "the angle from the apical termination of the midvein to the pair of points where a line perpendicular to the midvein and 0.75 midvein length from the base intersects the margin"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "acute", definition: "apex angle <90"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obtuse", definition: "apex angle 90-180"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "wide obtuse", definition: "a special case of obtuse such that the apex angle is >180"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "odd-lobed acute apex"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "odd-lobed obtuse apex"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state5)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Base Shape", definition: "basal 25% of the lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "cuneate", definition: "the margin between the base and 0.25L has no significant curvature"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "convex", definition: "the margin between the base and 0.25L curves away from the center of the leaf"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "rounded", definition: "subtype of convex in which the margin forms a smooth arc across the base"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "truncate", definition: "subtype of convex in which the base terminates abruptly as if cut, with margin perpendicular to the midvein or nearly so"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "concave", definition: "the margin between the base and 0.25L curves toward the center of the leaf"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "concavo-convex", definition: "the margin between the base and 0.25L is concave basally and convex apically"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state6)-[:ELEMENT_OF]->(public),
		(state7:State {pbotID: apoc.create.uuid(), name: "decurrent", definition: "subtype of either concave or concavo-convex in which the laminar tissue extends basally along he petiole at a gradually decreasing angle"})-[:STATE_OF]->(character),
		(state7)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state7)-[:ELEMENT_OF]->(public),
		(state8:State {pbotID: apoc.create.uuid(), name: "complex", definition: "there are more than two inflection points in the curve of the margin between the base and 0.25L"})-[:STATE_OF]->(character),
		(state8)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state8)-[:ELEMENT_OF]->(public),
		(state9:State {pbotID: apoc.create.uuid(), name: "cordate", definition: "the leaf base is embayed in a sinus with straight or convex sides"})-[:STATE_OF]->(character),
		(state9)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state9)-[:ELEMENT_OF]->(public),
		(state10:State {pbotID: apoc.create.uuid(), name: "lobate", definition: "rounded projections with inner margins (those towards the petiole) concave in part"})-[:STATE_OF]->(character),
		(state10)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state10)-[:ELEMENT_OF]->(public),
		(state11:State {pbotID: apoc.create.uuid(), name: "sagittate", definition: "narrow pointed lobes with apices directed basally (at an angle 125 or greater from the leaf axis)"})-[:STATE_OF]->(character),
		(state11)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state11)-[:ELEMENT_OF]->(public),
		(state12:State {pbotID: apoc.create.uuid(), name: "hastate", definition: "two narrow pointed lobes that have apices directed exmedially (90-125 from the leaf axis)"})-[:STATE_OF]->(character),
		(state12)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state12)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Position of Petiolar Attachment"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "marginal", definition: "petiolar insertion at the margin of the leaf"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "peltate central", definition: "petiole attached within the boundaries of the leaf margin and near the center of the leaf"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "eccentric", definition: "petiole attached near the edge but inside the boundaries of the leaf margin"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Apex Shape", definition: "states of the apical 25% of the lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "straight", definition: "the margin between the apex and the 0.75L has no significant curvature"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "convex", definition: "the margin between the apex and 0.75L curves away from the center of the leaf"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "rounded", definition: "subtype of convex in which the margin forms a smooth arc across the apex"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "truncate", definition: "the apex terminates abruptly as if cut, with margin perpendicular to midvein or nearly so"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "acuminate", definition: "the margin between the apex and 0.75L is concave, curving toward the center of the leaf, or is convex basally and concave apically (category includes drip tips)"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "complex", definition: "there are more than two inflection points in the curve of the margin between the apex and 0.75L"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state6)-[:ELEMENT_OF]->(public),
		(state7:State {pbotID: apoc.create.uuid(), name: "retuse", definition: "the length of the midvein is 95-99% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state7)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state7)-[:ELEMENT_OF]->(public),
		(state8:State {pbotID: apoc.create.uuid(), name: "emarginate", definition: "the length of the midvein is 75-95% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state8)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state8)-[:ELEMENT_OF]->(public),
		(state9:State {pbotID: apoc.create.uuid(), name: "lobed", definition: "the length of the midvein is <75% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state9)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state9)-[:ELEMENT_OF]->(public);


MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Margin Type"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "dentate", definition: "teeth pointed with their axes perpendicular to the trend of the leaf margin"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "serrate", definition: "teeth pointed with their axes inclined to the trend of the leaf margin"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "crenate", definition: "teeth smoothly rounded without a pointed apex"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "entire", definition: "margin is smooth, without teeth"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "revolute", definition: "margins are turned under or rolled up like a scroll"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "erose", definition: "margins are irregular as if chewed"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state6)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Smithsonian, 1999"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Lobation", definition: "marginal indentations that reach 1/4 or more of the distance to the midvein, measured parallel to the axis of symmetry of the lobe"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "unlobed"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "bilobed"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "palmately lobed"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "pinnately lobed"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public);


//------------------- Cornell, 2009 --------------------------------
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaf Attachment"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "petiolate", definition: "a petiole attaches the leaf to the axis"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "sessile", definition: "leaf attaches directly to the axis without a petiole"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaf Arrangement", definition: "the placement of adjacent leaves on the nodes of the axis (more than one may apply)"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "alternate", definition: "adjacent leaves occur above or below others on the axis"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "subopposite", definition: "adjacent leaves occur in pairs that are nearly but not strictly opposite"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "opposite", definition: "leaves occur in opposed pairs that arise from the same node along the axis (leaf pairs may be decussate, distichous, or spirodecussate)"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "whorled", definition: "three or more leaves are borne at each node"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaf Organization"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "simple", definition: "leaf consists of a single lamina attached to a simple petiole"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "compound", definition: "leaf has more than two separate laminar sub-units (leaflets)"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "palmately compound", definition: "leaf has more than two separate laminar sub-units (leaflets) attached at the apex of the petiole"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "pinnately compound", definition: "leaf has more than two separate laminar sub-units (leaflets) attached at the apex of the petiole"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
				(state221:State {pbotID: apoc.create.uuid(), name: "once compound", definition: "leaflet arranged along a rachis (with a single order of pinnate leaflets)"})-[:STATE_OF]->(state22),
				(state221)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state221)-[:ELEMENT_OF]->(public),
				(state222:State {pbotID: apoc.create.uuid(), name: "bipinnately compound", definition: "leaflet arranged along a rachis (dissected twice with leaflets arranged along rachillae that are attached to the rachis)"})-[:STATE_OF]->(state22),
				(state222)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state222)-[:ELEMENT_OF]->(public),
				(state223:State {pbotID: apoc.create.uuid(), name: "tripinnately compound", definition: "leaflet arranged along a rachis (leaflets are attached to secondary rachillae that are in turn attached to rachillae, which are borne along the rachis)"})-[:STATE_OF]->(state22),
				(state223)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state223)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaflet Arrangement"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "alternate", definition: "leaflets are arranged alternately on the rachis"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "subopposite", definition: "leaflets are in pairs that are nearly, but not strictly, opposite"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "opposite", definition: "leaflets are in pairs that arise on opposite sides of the rachis (odd-pinnately compound or even-pinnately compound)"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
			(state31:State {pbotID: apoc.create.uuid(), name: "odd-pinnately compound"})-[:STATE_OF]->(state3),
			(state31)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state31)-[:ELEMENT_OF]->(public),
			(state32:State {pbotID: apoc.create.uuid(), name: "even-pinnately compound"})-[:STATE_OF]->(state3),
			(state32)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state32)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "unknown", definition: "fossil only, not preserved"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Leaflet Attachment"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "petiolulate", definition: "leaflet is attached to the rachis by means of a petiolule (stalk analogous to the petiole of a leaf)"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "sessile", definition: "leaflet is attached directly to the rachis"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Petiole Base"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "sheathing", definition: "petiole expands to clasp the stem"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "pulvin(ul)ate", definition: "having an abruptly swollen portion near the node around which the leaf(let) can flex (may occur with or without an abscission joint)"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Glands", definition: "swollen areas of secretory tissue, often paired"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "petiolar", definition: "glands are borne along the petiole"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "acropetiolar", definition: "glands are borne at the distal end of the petiole, below the base of the leaf"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
        (state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Petiole-cross Section"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "terete", definition: "round"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "semiterete", definition: "semicircular"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "canaliculate", definition: "having a longitudinal channel or groove"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "angular"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "alate", definition: "with lateral ridges or flanked by laminar tissue (also referred to as winged)"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public);

//NOTE: This is a present or not character. I"ve implemented this with true/false states.
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Phyllodes", definition: "petiole or rachis is expanded to make a lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
        (state1:State {pbotID: apoc.create.uuid(), name: "true"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "false"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Position Of Lamina Attachment", definition: "the point from which the lamina is borne"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "marginal", definition: "leaf is attached at its margin"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "Peltate central", definition: "leaf is borne from a position near the center of the lamina"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "Peltate excentric", definition: "leaf is borne from a position within the boundaries of the lamina but not near its center"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar Size"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "leptophyll", definition: "<25 mm2"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "nanophyll", definition: "<25-225 mm2"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "microphyll", definition: "<225-2,025 mm2"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "notophyll", definition: "<2,025-4,500 mm2"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "mesophyll", definition: "<4,500-18,225 mm2"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "macrophyll", definition: "<18,225-164,025 mm2"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state6)-[:ELEMENT_OF]->(public),
		(state7:State {pbotID: apoc.create.uuid(), name: "megaphyll", definition: ">164,025 mm2"})-[:STATE_OF]->(character),
		(state7)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state7)-[:ELEMENT_OF]->(public);

//NOTE: This is a quantitative character. I"ve implemented this by attaching a State with name "quantity".
//OTUs will add the value as a property of the HAS_STATE relationship.
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar L:W Ratio"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "quantity"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Laminar Shape"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "elliptic", definition: "the widest part of the leaf is in the middle one-fifth"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obovate", definition: "the widest part of the leaf is in the distal two-fifths"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "ovate", definition: "the widest part of the leaf is in the proximal two-fifths"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "oblong", definition: "the opposite margins are roughly parallel for at least the middle one-third of the leaf"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "linear", definition: "the L:W ratio of a leaf is greater than or equal to 10:1, regardless of the position of the widest part of the leaf"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public),
		(state6:State {pbotID: apoc.create.uuid(), name: "special", definition: "outlines that do not fall readily into one of the shape classes above"})-[:STATE_OF]->(character),
		(state6)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state6)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Medial Symmetry", definition: "determined by the width ratio in the middle of the leaf"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "symmetrical", definition: "width ratio (x/y)>0.9 from 0.25L to 0.75L"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "asymmetrical", definition: "width ratio (x/y)<0.9L from 0.25L to 0.75L"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Base Symmetry", definition: "determined by the width ratio in the base of the leaf"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "base symmetrical", definition: "base lacks any of the asymmetries identified below"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "base asymmetrical"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "basal width asymmetrical", definition: "basal width ratio (x/y)<0.9"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "basal extension asymmetrical", definition: "basal extension length on one side is >0.75 of the other side"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
			(state23:State {pbotID: apoc.create.uuid(), name: "basal insertion asymmetrical", definition: "insertion points of lamina base on either side of the petiole are separated by >3 mm"})-[:STATE_OF]->(state2),
			(state23)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state23)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Lobation", definition: "marginal projection with a corresponding sinus incised 25% or more of the distance from the projection apex to the midvein, measured parallel to the axis of symmetry and along the apical side of the projection (or basal side of a terminal projection)"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "unlobed", definition: "leaf has no lobes"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "lobed", definition: "leaf has lobes"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "palmately lobed", definition: "major veins of the lobes are primary veins that arise from the base of the leaf"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
				(state211:State {pbotID: apoc.create.uuid(), name: "palmatisect", definition: "special case of palmately lobed in which the incision goes almost to the petiole but without resulting in distinct leaflets (alternate terms include palmatifid and palmatipartite)"})-[:STATE_OF]->(state21),
				(state211)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state211)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "pinnately lobed", definition: "major veins of the lobes are formed by costal secondaries"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
				(state221:State {pbotID: apoc.create.uuid(), name: "pinnatisect", definition: "special case of pinnately lobed in which the incision goes almost to the midvein but without resulting in distinct leaflets (alternate terms include pinnatifid and pinnatipartite)"})-[:STATE_OF]->(state22),
				(state221)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state221)-[:ELEMENT_OF]->(public),
			(state23:State {pbotID: apoc.create.uuid(), name: "palmately and pinnately lobed", definition: "at least one lobe in a palmately lobed leaf is pinnately lobed"})-[:STATE_OF]->(state2),
			(state23)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state23)-[:ELEMENT_OF]->(public),
			(state24:State {pbotID: apoc.create.uuid(), name: "bilobed", definition: "leaf has two lobes"})-[:STATE_OF]->(state2),
			(state24)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state24)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Margin Type", definition: "features of the edge of the lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "untoothed", definition: "margin has no teeth"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "toothed", definition: "margin has no teeth"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "dentate", definition: "majority of the teeth have axes of symmetry directed perpendicular to the trend of the leaf margin"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "serrate", definition: "majority of the teeth have axes of symmetry directed at an angle to the trend of the leaf margin"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
			(state23:State {pbotID: apoc.create.uuid(), name: "crenate", definition: "majority of the teeth are smoothly rounded, without a pointed apex"})-[:STATE_OF]->(state2),
			(state23)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state23)-[:ELEMENT_OF]->(public);

//NOTE: Section 15, Special Margin Features, was a problem. Rather than listing states/substates, the next level below were two standalone characters. I"ve implemented this by dumping Special Margin Features as a Character itself and only implementing the two characters it contained.
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Special Margin Features: appearance of the edge of the leaf blade"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
 		(state1:State {pbotID: apoc.create.uuid(), name: "erose", definition: "margin is minutely irregular, as if chewed"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "sinuous", definition: "margin forms a series of shallow and gentle curves that lack principal veins (projections are not considered teeth)"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public);
        
MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Special Margin Features: appearance of the abaxial-adaxial plane of the leaf blade"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "revolute", definition: "margin is turned down or rolled (in the manner of a scroll) in the abaxial direction"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "involute", definition: "margin is turned up or rolled in the adaxial direction"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "undulate", definition: "margin forms a series of smooth curves in the abaxial-adaxial plane (in and out of the plane of the leaf)"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Apex Angle", definition: "the vertex of the apex angle lies at the center of the midvein where it terminates at the apex of the leaf"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "acute", definition: "apex angle <90"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obtuse", definition: "apex angle between 90 and 180"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "reflex", definition: "apex angle >180"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Apex Shape", definition: "shape of the distal 25% of the lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "straight", definition: "margin between the apex and 0.75L has no significant curvature"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "convex", definition: "margin between the apex and 0.75L curves away from the midvein"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "rounded", definition: "subtype of convex in which the margin forms a smooth arc across the apex"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "truncate", definition: "apex terminates abruptly as if cut, with margin perpendicular to midvein or nearly so"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "acuminate", definition: "margin between the apex and 0.75L is convex proximally and concave distally, or concave only (often encompasses drip tips)"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "emarginate", definition: "midvein length is 75-90% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "lobed", definition: "midvein length is <75% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Base Angle", definition: "the vertex of the base angle lies in the center of the midvein next to the point where the basalmost laminar tissue joins the petiole (or joins the proximal margin in the case of sessile leaves)"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "acute", definition: "angle <90"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "obtuse", definition: "angle >90 but <180"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "reflex", definition: "special case of obtuse in which angle is >180 but <360"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "circular", definition: "special case of reflex in which angle is >360 (includes leaves in which the basal extension overlaps across the midline, as well as peltate leaves)"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Base Shape", definition: "shape of the proximal 25% of the lamina"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "no basal extension"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
			(state11:State {pbotID: apoc.create.uuid(), name: "straight", definition: "margin between the base and 0.25L has no significant curvature (alternate term is cuneate)"})-[:STATE_OF]->(state1),
			(state11)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state11)-[:ELEMENT_OF]->(public),
			(state12:State {pbotID: apoc.create.uuid(), name: "concave", definition: "margin between the base and 0.25L curves toward the midvein"})-[:STATE_OF]->(state1),
			(state12)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state12)-[:ELEMENT_OF]->(public),
			(state13:State {pbotID: apoc.create.uuid(), name: "convex", definition: "margin between the base and 0.25L curves away from the midvein"})-[:STATE_OF]->(state1),
			(state13)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state13)-[:ELEMENT_OF]->(public),
				(state131:State {pbotID: apoc.create.uuid(), name: "rounded", definition: "margin forms a smooth arc across the base"})-[:STATE_OF]->(state13),
				(state131)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state131)-[:ELEMENT_OF]->(public),
				(state132:State {pbotID: apoc.create.uuid(), name: "truncate", definition: "base terminates abruptly as if cut perpendicular to the midvein or nearly so"})-[:STATE_OF]->(state13),
				(state132)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state132)-[:ELEMENT_OF]->(public),
			(state14:State {pbotID: apoc.create.uuid(), name: "concavo-convex", definition: "margin between the base and 0.25L is convace proximally and convex distally"})-[:STATE_OF]->(state1),
			(state14)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state14)-[:ELEMENT_OF]->(public),
			(state15:State {pbotID: apoc.create.uuid(), name: "complex", definition: "margin curvature has more than one inflection point (change of curvature) between the base and 0.25L"})-[:STATE_OF]->(state1),
			(state15)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state15)-[:ELEMENT_OF]->(public),
			(state16:State {pbotID: apoc.create.uuid(), name: "decurrent", definition: "special case in which the laminar tissue extends along the petiole at a gradually decreasing angle (can occur in concave, concavo-convex, or complex bases)"})-[:STATE_OF]->(state1),
			(state16)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state16)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "basal extension"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
			(state21:State {pbotID: apoc.create.uuid(), name: "cordate", definition: "leaf base forms a single sinus with the petiole generally inserted at the deepest point of the sinus"})-[:STATE_OF]->(state2),
			(state21)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state21)-[:ELEMENT_OF]->(public),
			(state22:State {pbotID: apoc.create.uuid(), name: "lobate", definition: "leaf base is lobed on both sides of the midvein"})-[:STATE_OF]->(state2),
			(state22)-[:ENTERED_BY {timestamp: datetime()}]->(person),
			(state22)-[:ELEMENT_OF]->(public),
				(state221:State {pbotID: apoc.create.uuid(), name: "sagittate", definition: "leaf base has two narrow, usually pointed projections (technically these may not qualify as lobes because they are not bounded by distal sinuses) with apices directed proximally at an angle 125 or greater from the midvein"})-[:STATE_OF]->(state22),
				(state221)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state221)-[:ELEMENT_OF]->(public),
				(state222:State {pbotID: apoc.create.uuid(), name: "hastate", definition: "leaf base has two narrow lobes with apices directed exmedially at 90-125 from the midvein"})-[:STATE_OF]->(state22),
				(state222)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state222)-[:ELEMENT_OF]->(public),
				(state223:State {pbotID: apoc.create.uuid(), name: "runcinate", definition: "lobate lamina with two or more pairs of downward-pointing angular lobes"})-[:STATE_OF]->(state22),
				(state223)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state223)-[:ELEMENT_OF]->(public),
				(state224:State {pbotID: apoc.create.uuid(), name: "auriculate", definition: "lobate lamina having a pair of rounded basal lobes that are oriented downward, with their axes of symmetry at an angle >125 from the midvein of the leaf"})-[:STATE_OF]->(state22),
				(state224)-[:ENTERED_BY {timestamp: datetime()}]->(person),
				(state224)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Terminal Apex Feature", definition: "region where the midvein terminates"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "mucronate", definition: "midvein terminates in an opaque, peg-shaped, nondeciduous exension of the midvein"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "spinose", definition: "midvein extends through the margin at the apex; the spine may be short or long, but it is not always sharp"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "retuse", definition: "midvein terminates in a shallow sinus such that midvein length is 95-99% of midvein length + apical extension length"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Surface Texture"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "smooth", definition: "lacking indentations, projections, hairs, or other roughness"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "pitted", definition: "having indentations"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "papillate", definition: "having small projections originating from the laminar surface"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "rugose", definition: "rough"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public),
		(state5:State {pbotID: apoc.create.uuid(), name: "pubescent", definition: "having hairs"})-[:STATE_OF]->(character),
		(state5)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state5)-[:ELEMENT_OF]->(public);

MATCH 
    (person:Person {given: "Rebecca", surname: "Koll"}), (schema:Schema {title: "Cornell, 2009"}),
    (public:Group {name: "public"})
CREATE
    (character:Character {pbotID: apoc.create.uuid(), name: "Surficial Glands", definition: "placement of secretory structures"})-[:CHARACTER_OF]->(schema),
    (character)-[:ENTERED_BY {timestamp: datetime()}]->(person),
    (character)-[:ELEMENT_OF]->(public),
		(state1:State {pbotID: apoc.create.uuid(), name: "laminar", definition: "glands present on the surface (may be clustered)"})-[:STATE_OF]->(character),
		(state1)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state1)-[:ELEMENT_OF]->(public),
		(state2:State {pbotID: apoc.create.uuid(), name: "marginal", definition: "glands present only near or on the blade margin"})-[:STATE_OF]->(character),
		(state2)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state2)-[:ELEMENT_OF]->(public),
		(state3:State {pbotID: apoc.create.uuid(), name: "apical", definition: "glands present only near the blade apex"})-[:STATE_OF]->(character),
		(state3)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state3)-[:ELEMENT_OF]->(public),
		(state4:State {pbotID: apoc.create.uuid(), name: "basilaminar", definition: "glands present only near the base of the blade"})-[:STATE_OF]->(character),
		(state4)-[:ENTERED_BY {timestamp: datetime()}]->(person),
		(state4)-[:ELEMENT_OF]->(public);

        
        
        
