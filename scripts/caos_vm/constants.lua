CAOS = CAOS or {}

-- Direction constants
CAOS.DIRECTIONS = {
  LEFT = 0,
  RIGHT = 1,
  UP = 2,
  DOWN = 3
}

-- Agent attributes
CAOS.ATTRIBUTES = {
  CARRYABLE = 1,
  MOUSEABLE = 2,
  ACTIVATEABLE = 4,
  GREEDY_CABIN = 8,
  INVISIBLE = 16,
  FLOATABLE = 32,
  SUFFER_COLLISIONS = 64,
  SUFFER_PHYSICS = 128,
  CAMERA_SHY = 256,
  OPEN_AIR_CABIN = 512,
  ROTATABLE = 1024,
  PRESENCE = 2048
}

-- Agent permissions
CAOS.PERMISSIONS = {
  ACTIVATE_1 = 1,
  ACTIVATE_2 = 2,
  DEACTIVATE = 4,
  HIT = 8,
  EAT = 16,
  PICK_UP = 32
}

CAOS.TIME_OF_DAY = {
  DAWN = 0,
  MORNING = 1,
  AFTERNOON = 2,
  EVENING = 3,
  NIGHT = 4
}

CAOS.SEASON = {
  SPRING = 0,
  SUMMER = 1,
  AUTUMN = 2,
  WINTER = 3
}

-- Cellular automata (emit)
CAOS.CA_INDEX = {
  SOUND = 0,
  LIGHT = 1,
  HEAT = 2,
  PRECIPITATION = 3,
  NUTRIENT = 4,
  WATER = 5,
  PROTEIN = 6,            -- Fruit
  CARBOHYDRATE = 7,       -- Seeds
  FAT = 8,                -- Food
  FLOWERS = 9,
  MACHINERY = 10,
  EGGS = 11,
  NORN = 12,
  GRENDEL = 13,
  ETTIN = 14,
  NORN_HOME = 15,
  GRENDEL_HOME = 16,
  ETTIN_HOME = 17,
  GADGET = 18
}

CAOS.FAMILY = {
  INVALID = -1,
  UI = 1,
  OBJECT = 2,
  EXTENDED = 3,
  CREATURE = 4
}

CAOS.UI_GENUS = {
  INVISIBLE = 1,
  SYSTEM = 2,
  FAV_SIGN = 3,
  FAV_ICON = 4
}

CAOS.OBJECT_GENUS = {
  SELF = 0,
  HAND = 1,
  DOOR = 2,
  SEED = 3,
  PLANT = 4,
  WEED = 5,
  LEAF = 6,
  FLOWER = 7,
  FRUIT = 8,
  MANKY = 9,          -- bad fruit
  DETRITUS = 10,      -- waste matter
  FOOD = 11,
  BUTTON = 12,
  BUG = 13,
  PEST = 14,
  CRITTER = 15,
  BEAST = 16,
  NEST = 17,
  ANIMAL_EGG = 18,
  WEATHER = 19,
  BAD = 20,
  TOY = 21,
  INCUBATOR = 22,
  DISPENSER = 23,
  TOOL = 24,
  POTION = 25
}

CAOS.EXTENDED_GENUS = {
  ELEVATOR = 1,
  TELEPORTER = 2,
  MACHINERY = 3,
  CREATURE_EGG = 4,
  NORN_HOME = 5,
  GRENDEL_HOME = 6,
  ETTIN_HOME = 7,
  GADGET = 8,
  PORTAL = 9,
  VEHICLE = 10
}

CAOS.CREATURE_GENUS = {
  NORN = 1,
  GRENDEL = 2,
  ETTIN = 3,
  SOMETHING = 4
}

CAOS.UI_SYSTEM = {
  SPEECH_BUBBLE = 10
}

CAOS.EVENT = {
  DEACTIVATE = 0,
  ACTIVATE_1 = 1,   -- push
  ACTIVATE_2 = 2,   -- pull
  HIT = 3,
  PICKUP = 4,
  DROP = 5,
  COLLIDE = 6,
  BUMP = 7,
  IMPACT = 8,
  TIMER = 9,
  CREATED = 10,
  
  EATEN = 12,
  
  
  KEY_DOWN = 73,
  KEY_UP = 74,
  MOUSE_MOVED = 75,
  MOUSE_DOWN = 76,
  MOUSE_UP = 77,
  MOUSE_WHEEL = 78,
  
  MOUSE_CLICKED = 92,
  
  WIRE_BROKEN = 118,
  
  VEHICLE_PICKUP = 121,
  VEHICLE_DROP = 122,
  WINDOW_RESIZED = 123,
  
  WORLD_LOADED = 128,
  
  NET_CONNECTED = 135,
  NET_DISCONNECTED = 136,
  USER_ONLINE = 137,
  USER_OFFLINE = 138,
  
  AGENT_EXCEPTION = 255
}

ov00 = "ov00"
ov01 = "ov01"
ov02 = "ov02"
ov03 = "ov03"
ov04 = "ov04"
ov05 = "ov05"
ov06 = "ov06"
ov07 = "ov07"
ov08 = "ov08"
ov09 = "ov09"
ov10 = "ov10"
ov11 = "ov11"
ov12 = "ov12"
ov13 = "ov13"
ov14 = "ov14"
ov15 = "ov15"
ov16 = "ov16"
ov17 = "ov17"
ov18 = "ov18"
ov19 = "ov19"
ov20 = "ov20"
ov21 = "ov21"
ov22 = "ov22"
ov23 = "ov23"
ov24 = "ov24"
ov25 = "ov25"
ov26 = "ov26"
ov27 = "ov27"
ov28 = "ov28"
ov29 = "ov29"
ov30 = "ov30"
ov31 = "ov31"
ov32 = "ov32"
ov33 = "ov33"
ov34 = "ov34"
ov35 = "ov35"
ov36 = "ov36"
ov37 = "ov37"
ov38 = "ov38"
ov39 = "ov39"
ov40 = "ov40"
ov41 = "ov41"
ov42 = "ov42"
ov43 = "ov43"
ov44 = "ov44"
ov45 = "ov45"
ov46 = "ov46"
ov47 = "ov47"
ov48 = "ov48"
ov49 = "ov49"
ov50 = "ov50"
ov51 = "ov51"
ov52 = "ov52"
ov53 = "ov53"
ov54 = "ov54"
ov55 = "ov55"
ov56 = "ov56"
ov57 = "ov57"
ov58 = "ov58"
ov59 = "ov59"
ov60 = "ov60"
ov61 = "ov61"
ov62 = "ov62"
ov63 = "ov63"
ov64 = "ov64"
ov65 = "ov65"
ov66 = "ov66"
ov67 = "ov67"
ov68 = "ov68"
ov69 = "ov69"
ov70 = "ov70"
ov71 = "ov71"
ov72 = "ov72"
ov73 = "ov73"
ov74 = "ov74"
ov75 = "ov75"
ov76 = "ov76"
ov77 = "ov77"
ov78 = "ov78"
ov79 = "ov79"
ov80 = "ov80"
ov81 = "ov81"
ov82 = "ov82"
ov83 = "ov83"
ov84 = "ov84"
ov85 = "ov85"
ov86 = "ov86"
ov87 = "ov87"
ov88 = "ov88"
ov89 = "ov89"
ov90 = "ov90"
ov91 = "ov91"
ov92 = "ov92"
ov93 = "ov93"
ov94 = "ov94"
ov95 = "ov95"
ov96 = "ov96"
ov97 = "ov97"
ov98 = "ov98"
ov99 = "ov99"

mv00 = "mv00"
mv01 = "mv01"
mv02 = "mv02"
mv03 = "mv03"
mv04 = "mv04"
mv05 = "mv05"
mv06 = "mv06"
mv07 = "mv07"
mv08 = "mv08"
mv09 = "mv09"
mv10 = "mv10"
mv11 = "mv11"
mv12 = "mv12"
mv13 = "mv13"
mv14 = "mv14"
mv15 = "mv15"
mv16 = "mv16"
mv17 = "mv17"
mv18 = "mv18"
mv19 = "mv19"
mv20 = "mv20"
mv21 = "mv21"
mv22 = "mv22"
mv23 = "mv23"
mv24 = "mv24"
mv25 = "mv25"
mv26 = "mv26"
mv27 = "mv27"
mv28 = "mv28"
mv29 = "mv29"
mv30 = "mv30"
mv31 = "mv31"
mv32 = "mv32"
mv33 = "mv33"
mv34 = "mv34"
mv35 = "mv35"
mv36 = "mv36"
mv37 = "mv37"
mv38 = "mv38"
mv39 = "mv39"
mv40 = "mv40"
mv41 = "mv41"
mv42 = "mv42"
mv43 = "mv43"
mv44 = "mv44"
mv45 = "mv45"
mv46 = "mv46"
mv47 = "mv47"
mv48 = "mv48"
mv49 = "mv49"
mv50 = "mv50"
mv51 = "mv51"
mv52 = "mv52"
mv53 = "mv53"
mv54 = "mv54"
mv55 = "mv55"
mv56 = "mv56"
mv57 = "mv57"
mv58 = "mv58"
mv59 = "mv59"
mv60 = "mv60"
mv61 = "mv61"
mv62 = "mv62"
mv63 = "mv63"
mv64 = "mv64"
mv65 = "mv65"
mv66 = "mv66"
mv67 = "mv67"
mv68 = "mv68"
mv69 = "mv69"
mv70 = "mv70"
mv71 = "mv71"
mv72 = "mv72"
mv73 = "mv73"
mv74 = "mv74"
mv75 = "mv75"
mv76 = "mv76"
mv77 = "mv77"
mv78 = "mv78"
mv79 = "mv79"
mv80 = "mv80"
mv81 = "mv81"
mv82 = "mv82"
mv83 = "mv83"
mv84 = "mv84"
mv85 = "mv85"
mv86 = "mv86"
mv87 = "mv87"
mv88 = "mv88"
mv89 = "mv89"
mv90 = "mv90"
mv91 = "mv91"
mv92 = "mv92"
mv93 = "mv93"
mv94 = "mv94"
mv95 = "mv95"
mv96 = "mv96"
mv97 = "mv97"
mv98 = "mv98"
mv99 = "mv99"

va00 = "va00"
va01 = "va01"
va02 = "va02"
va03 = "va03"
va04 = "va04"
va05 = "va05"
va06 = "va06"
va07 = "va07"
va08 = "va08"
va09 = "va09"
va10 = "va10"
va11 = "va11"
va12 = "va12"
va13 = "va13"
va14 = "va14"
va15 = "va15"
va16 = "va16"
va17 = "va17"
va18 = "va18"
va19 = "va19"
va20 = "va20"
va21 = "va21"
va22 = "va22"
va23 = "va23"
va24 = "va24"
va25 = "va25"
va26 = "va26"
va27 = "va27"
va28 = "va28"
va29 = "va29"
va30 = "va30"
va31 = "va31"
va32 = "va32"
va33 = "va33"
va34 = "va34"
va35 = "va35"
va36 = "va36"
va37 = "va37"
va38 = "va38"
va39 = "va39"
va40 = "va40"
va41 = "va41"
va42 = "va42"
va43 = "va43"
va44 = "va44"
va45 = "va45"
va46 = "va46"
va47 = "va47"
va48 = "va48"
va49 = "va49"
va50 = "va50"
va51 = "va51"
va52 = "va52"
va53 = "va53"
va54 = "va54"
va55 = "va55"
va56 = "va56"
va57 = "va57"
va58 = "va58"
va59 = "va59"
va60 = "va60"
va61 = "va61"
va62 = "va62"
va63 = "va63"
va64 = "va64"
va65 = "va65"
va66 = "va66"
va67 = "va67"
va68 = "va68"
va69 = "va69"
va70 = "va70"
va71 = "va71"
va72 = "va72"
va73 = "va73"
va74 = "va74"
va75 = "va75"
va76 = "va76"
va77 = "va77"
va78 = "va78"
va79 = "va79"
va80 = "va80"
va81 = "va81"
va82 = "va82"
va83 = "va83"
va84 = "va84"
va85 = "va85"
va86 = "va86"
va87 = "va87"
va88 = "va88"
va89 = "va89"
va90 = "va90"
va91 = "va91"
va92 = "va92"
va93 = "va93"
va94 = "va94"
va95 = "va95"
va96 = "va96"
va97 = "va97"
va98 = "va98"
va99 = "va99"
