{
  "$GMObject":"",
  "%Name":"pEnemy",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"pEnemy",
  "overriddenProperties":[],
  "parent":{
    "name":"Enemies",
    "path":"folders/Objects/Entities/Enemies.yy",
  },
  "parentObjectId":{
    "name":"pEntity",
    "path":"objects/pEntity/pEntity.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"","%Name":"enemyWanderDistance","filters":[],"listItems":[],"multiselect":false,"name":"enemyWanderDistance","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"32","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemySpeed","filters":[],"listItems":[],"multiselect":false,"name":"enemySpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".75","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemyAggroRadius","filters":[],"listItems":[],"multiselect":false,"name":"enemyAggroRadius","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"48","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemyAttackRadius","filters":[],"listItems":[],"multiselect":false,"name":"enemyAttackRadius","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"16","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemyHP","filters":[],"listItems":[],"multiselect":false,"name":"enemyHP","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemyForceTouch","filters":[],"listItems":[],"multiselect":false,"name":"enemyForceTouch","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"32","varType":0,},
    {"$GMObjectProperty":"","%Name":"enemyDamageTouch","filters":[],"listItems":[],"multiselect":false,"name":"enemyDamageTouch","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.5","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":null,
  "spriteMaskId":null,
  "visible":true,
}