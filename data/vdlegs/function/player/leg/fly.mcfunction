effect clear @s levitation
effect give @s slow_falling infinite 0 true
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{type:"player",input:{jump:true}}}} run effect give @s levitation infinite 5 true
attribute @s gravity base set 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{type:"player",input:{sneak:true}}}} run attribute @s gravity base set 0.08