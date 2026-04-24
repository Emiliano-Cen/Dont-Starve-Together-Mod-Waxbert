--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "This cosa don't fit in the cosito.",
        },
        BUILD =
        {
            MOUNTED = "My strong arms can't reach that place.",
            HASPET = "I prefer keep my Fido with me.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I'm strong and brave but not an idiota.",
			GENERIC = "Puedo hacer anything, except shave that.",
			NOBITS = "There is no selva to cut!",
            REFUSE = "only_used_by_woodie",
		},
		STORE =
		{
			GENERIC = "Está full.",
			NOTALLOWED = "That cosa can't go ahí.",
			INUSE = "Don't make me wait, nena",
            NOTMASTERCHEF = "I make excellent arroz, pero no this.",
		},
        CONSTRUCT =
        {
            INUSE = "Hey hey wait your turn, nena.",
            NOTALLOWED = "Come on cosa get in there!.",
            EMPTY = "I need more than just my beautiful arms.",
            MISMATCH = "Oh wasn't this the right cosito?.",
        },
		RUMMAGE =
		{	
			GENERIC = "Puedo hacer anything, except that.",
			INUSE = "Alguien went ahead to bathe in junk.",
            NOTMASTERCHEF = "I make excellent arroz, pero no this.",
		},
		UNLOCK =
        {
        	WRONGKEY = "Ni siquiera my strong arms can do that.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Oh wasn't this the right cosito?.",
        	KLAUS = "Just breathe, nena!",
			QUAGMIRE_WRONGKEY = "Usaré my beautiful eyes to find another key.",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "Ni siquiera my strength can open this gate.",
		},
        COOK =
        {
            GENERIC = "I won't be able to cook for you today, nena.",
            INUSE = "We're connected, nena, I thought the same thing",
            TOOFAR = "My strong arms can't reach that.",
        },
        
        --warly specific action
		DISMANTLE =
		{
			COOKING = "only_used_by_warly",
			INUSE = "only_used_by_warly",
			NOTEMPTY = "only_used_by_warly",
        },
        FISH_OCEAN =
		{
			TOODEEP = "This rod wasn't made for deep sea fishing.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom"
        },

        GIVE =
        {
            GENERIC = "The cosito don't go there.",
            DEAD = "I think my arms can hold this for you, nena.",
            SLEEPING = "The siesta should not be interrupted.",
            BUSY = "Don't make me wait too long, nena.",
            ABIGAILHEART = "I should have seen that coming.",
            GHOSTHEART = "Maybe no sea good idea.",
            NOTGEM = "Would it be a good idea to put this cosito there?",
            WRONGGEM = "This shiny cosita doesn't go there.",
            NOTSTAFF = "That's not a good palo.",
            MUSHROOMFARM_NEEDSSHROOM = "Un hongo could be useful for more than sopa.",
            MUSHROOMFARM_NEEDSLOG = "A not so handsome log could work.",
            SLOTFULL = "One by one, nena",
            FOODFULL = "There's no room for my arroz.",
            NOTDISH = "It won't want to eat ésta.",
            DUPLICATE = "Oh I already have this one.",
            NOTSCULPTABLE = "Sculpture is just my sculptural body, nena.",
            NOTATRIUMKEY = "It don't seem like the right cosito.",
            CANTSHADOWREVIVE = "It's ali- oh no, it's not alive.",
            WRONGSHADOWFORM = "I can't put them together, but we can, nena.",
            NOMOON = "Mi cuerpo perfecto needs to shine in the moonlight.",
			PIGKINGGAME_MESSY = "I need to clean this chanchita first.",
			PIGKINGGAME_DANGER = "I must take care of the peligro first.",
			PIGKINGGAME_TOOLATE = "This train has already left, nena.",
        },
        GIVETOPLAYER =
        {
            FULL = "Come on golosa drop something",
            DEAD = "I think my arms can hold this for you, nena.",
            SLEEPING = "The siesta should not be interrupted.",
            BUSY = "Don't make me wait too long, nena.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Come on golosa drop something",
            DEAD = "I think my arms can hold this for you, nena.",
            SLEEPING = "The siesta should not be interrupted.",
            BUSY = "Don't make me wait too long, nena.",
        },
        WRITE =
        {
            GENERIC = "Almost as perfect as me, nena.",
            INUSE = "I think I'm your musa.",
        },
        DRAW =
        {
            NOIMAGE = "I need to find my musa, nena.",
        },
        CHANGEIN =
        {
            GENERIC = "I think está perfecto for now.",
            BURNING = "I must take care of the peligro first.",
            INUSE = "Too much style to bear, nena",
        },
        ATTUNE =
        {
            NOHEALTH = "I think I'm a little soft, nena.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "There's una cosa más fuerte que yo and that's an angry beefalo!",
            INUSE = "El que madruga dios pierde su silla, I think it was like that",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "That big Fido is very angry.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "A papá mono con bananas verdes no.",
            CANTLEARN = "Someone better read this for me.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This seems to be Europa?.",
        },
        WRAPBUNDLE =
        {
            EMPTY = "Get a gift nena I'll wrap it.",
        },
        PICKUP =
        {
			RESTRICTION = "I think I need more than just a pretty face, nena",
			INUSE = "Science can make me wait but you can't, nena.",
        },
        SLAUGHTER =
        {
            TOOFAR = "It got away.",
        },
        REPLATE =
        {
            MISMATCH = "Give me another dish, nena.", 
            SAMEDISH = "One dish at a time, nena.", 
        },
        SAIL =
        {
        	REPAIR = "Perfect like my face.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Espera...",
            BAD_TIMING1 = "I waited demasiado",
            BAD_TIMING2 = "No otra vez, baby!",
        },
        LOWER_SAIL_FAIL =
        {
            "That was not me, nena",
            "We're going faster, right?",
            "Creo I should look for another job.",
        },
        BATHBOMB =
        {
            GLASSED = "Puedo ver my beautiful reflection in this surface.",
            ALREADY_BOMBED = "That would be una abominación!",
        },
	},
	ACTIONFAIL_GENERIC = "Not even with all my musculos or my linda cara I can do that.",
	ANNOUNCE_BOAT_LEAK = "El bote is getting wet and not because of me!",
	ANNOUNCE_BOAT_SINK = "I don't know how to swim and today is not the day I learn!",
	ANNOUNCE_DIG_DISEASE_WARNING = "That looks mucho mejor.",
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, I promise that smell wasn't me, nena",
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.",
    ANNOUNCE_MOUNT_LOWHEALTH = "This big Fido seems to be wounded.",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",

	ANNOUNCE_BEES = "ABEJAAAAS!!!!",
	ANNOUNCE_BOOMERANG = "No volverá... wait yes it does!",
	ANNOUNCE_CHARLIE = "If you are going to look at me so much, give me your número, nena",
	ANNOUNCE_CHARLIE_ATTACK = "So you like these types of games, nena!",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific 
	ANNOUNCE_COLD = "I need a hot guiso!",
	ANNOUNCE_HOT = "Oh virgencita I melt and not because of you, nena!",
	ANNOUNCE_CRAFTING_FAIL = "I think I'm missing a cosito",
	ANNOUNCE_DEERCLOPS = "Finally a worthy rival, too worthy.",
	ANNOUNCE_CAVEIN = "Avalanche and not of nenas!",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"Hoy was not leg day!",
		"Alerta sísmica!",
		"Otro Deerclop?",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Can I give you my photo, nena?.",
        "Maybe my number can help you, big nena.",
        "Some chocolates always help, nena",
	},
	ANNOUNCE_SACREDCHEST_YES = "I think I'm guapo enough.",
	ANNOUNCE_SACREDCHEST_NO = "What? You are candlephobic?",
    ANNOUNCE_DUSK = "Y cayó la nocheee- oh no not yet.",
    
    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Not as good as my abuela's wax but it will do.",
		PAINFUL = "That went through the other tubito!",
		SPOILED = "I knew the verde stuff wasn't mint!",
		STALE = "Todavía sirve, it still works, nena.",
		INVALID = "I'll have to ask about that diet.",
        YUCKY = "That's already completely verde!",
        
        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "A nena weighs more than this, come on!",
        "Today was not arms day...",
        "Debería usar my knees or my back?!",
        "A nena like you shouldn't have to carry all that.",
        "How did this coso get here?...",
        "This is not very cosito...",
        "Hngh...!",
        "Cuántos kilometros should I carry this?",
        "Find something huge, hombre felíz",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"I think my nenas are calling me!",
		"That thing moved, right?!",
		"I knew I didn't have to leave the house today.",
	},
    ANNOUNCE_RUINS_RESET = "And there we go again...",
    ANNOUNCE_SNARED = "That hurts, nena!",
    ANNOUNCE_REPELLED = "There is no parry here?",
	ANNOUNCE_ENTER_DARK = "No puedo ver my beautiful body!",
	ANNOUNCE_ENTER_LIGHT = "We meet again bello yo!",
	ANNOUNCE_FREEDOM = "I'm free, nena!",
	ANNOUNCE_HIGHRESEARCH = "Lo admito I was lucky.",
	ANNOUNCE_HOUNDS = "That Fido doesn't sound very good.",
	ANNOUNCE_WORMS = "Did you feel it? No fui yo.",
	ANNOUNCE_HUNGRY = "I need my abuelita's wax now!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Something bigger than my beautiful self is near.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Oh forget it maybe it was me...",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Is wet, nena! The soil.",
	ANNOUNCE_INV_FULL = "I think I need a chaqueta with lots of pockets!",
	ANNOUNCE_KNOCKEDOUT = "Ugh, my wax!",
	ANNOUNCE_LOWRESEARCH = "I think it came out the other ear.",
	ANNOUNCE_MOSQUITOS = "Hey hey I don't have sangre!",
    ANNOUNCE_NOWARDROBEONFIRE = "Soy hot, pero eso es too hot!",
    ANNOUNCE_NODANGERGIFT = "There is no Christmas for these Grinchs!",
    ANNOUNCE_NOMOUNTEDGIFT = "There is no Christmas for big Fido.",
	ANNOUNCE_NODANGERSLEEP = "I want to wake up tomorrow, nena!",
	ANNOUNCE_NODAYSLEEP = "Do you think you could turn off the sun?",
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm eléctrico, nena!",
	ANNOUNCE_NOHUNGERSLEEP = "Una siesta without lunch is a bad siesta.",
	ANNOUNCE_NOSLEEPONFIRE = "Yes I'm hot but that's not what I mean.",
	ANNOUNCE_NODANGERSIESTA = "It's always time for siesta, except now!",
	ANNOUNCE_NONIGHTSIESTA = "Why a siesta if I can have a rejuvenating sleep, nena.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't think this place is more comfortable than my bed, nena",
	ANNOUNCE_NOHUNGERSIESTA = "Una siesta without lunch is a bad siesta!",
	ANNOUNCE_NODANGERAFK = "This hombre will never run away, nena!",
	ANNOUNCE_NO_TRAP = "Oye it wasn't that hard.",
	ANNOUNCE_PECKED = "Ay! Quit it!",
	ANNOUNCE_QUAKE = "Are we in a seismic zone, nena?.",
	ANNOUNCE_RESEARCH = "It didn't have illustrations but it wasn't bad.",
	ANNOUNCE_SHELTER = "Gracias virgencita for putting this tree here.",
	ANNOUNCE_THORNS = "Ay!",
	ANNOUNCE_BURNT = "Be careful with my wax, nena!",
	ANNOUNCE_TORCH_OUT = "My chispa!",
	ANNOUNCE_THURIBLE_OUT = "I think I left the other one in another pantalón.",
	ANNOUNCE_FAN_OUT = "Come back here fan!",
    ANNOUNCE_COMPASS_OUT = "North is up? not right?",
	ANNOUNCE_TRAP_WENT_OFF = "That shouldn't happen.",
	ANNOUNCE_UNIMPLEMENTED = "I think it's missing cositas!",
	ANNOUNCE_WORMHOLE = "I've been into things but this is la peor.",
	ANNOUNCE_TOWNPORTALTELEPORT = "You really are magical, nena",
	ANNOUNCE_CANFIX = "My big arms can handle this!",
	ANNOUNCE_ACCOMPLISHMENT = "This is great, nena!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my mama could see me now...",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "You are greedy, nena verde",
	ANNOUNCE_TOOL_SLIP = "Bueno that was embarrassing, nena",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Sólo hay una chispa!",
	ANNOUNCE_TOADESCAPING = "Oye big Pepe hey!",
	ANNOUNCE_TOADESCAPED = "Come back here Pepe!.",


	ANNOUNCE_DAMP = "Oh, chispea.",
	ANNOUNCE_WET = "They say wax is waterproof, nena.",
	ANNOUNCE_WETTER = "I'm wet and not because of you, nena!",
	ANNOUNCE_SOAKED = "Ok this is very wet, nena.",

	ANNOUNCE_WASHED_ASHORE = "Todo in excess is bad, nena",

    ANNOUNCE_DESPAWN = "Oh nena, I can see the light!",
	ANNOUNCE_BECOMEGHOST = "oOooO- Es broma",
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...",
	ANNOUNCE_PETRIFED_TREES = "Did you say something, nena?",
	ANNOUNCE_KLAUS_ENRAGE = "Stay away diablo!",
	ANNOUNCE_KLAUS_UNCHAINED = "Those chains would make a good necklace!",
	ANNOUNCE_KLAUS_CALLFORHELP = "It called sus compas!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There is a cosa inside.",
		GLASS_LOW = "Ya casi got it out.",
		GLASS_REVEAL = "Vuela libre!",
		IDOL_MED = "There is a cosa inside.",
		IDOL_LOW = "Ya casi got it out.",
		IDOL_REVEAL = "Vuela libre!",
		SEED_MED = "There is a cosa inside.",
		SEED_LOW = "Ya casi got it out.",
		SEED_REVEAL = "Vuela libre!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "Was it you, nena?",
	ANNOUNCE_BRAVERY_POTION = "Hacete el malo ahora!",
	ANNOUNCE_MOONPOTION_FAILED = "Maybe I added too much sugar...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Hey nena, let this candle help you.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Like the first time, nena!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Did you leave my body as it was?",

    ANNOUNCE_FLARE_SEEN = "What are those lights?",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Chupacabra! wait we are in the water.",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD = 
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD = 
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING = 
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Those ingredients didn't make anything.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I left it on too long.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

   ANNOUNCE_ROYALTY =
    {
        "What a posture!",
        "Now that's an entry.",
        "To serve you",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Espera is the cera conductive? It doesn't matter",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Soltame que lo mato!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Oye I feel duro.",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Estoy con toda!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Dry like my abuelita's wax",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Oh no, it wasn't that conductive, nena",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "You better not let me go, nena",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "I feel like my muscles are deflating!",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Ya se me bajó.",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Now I'm wet again like...",
    
    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK = 
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
    },

	BATTLECRY =
	{
		GENERIC = "Let's fight! Plantate!",
		PIG = "Chanchito come here!",
		PREY = "Don't run from me!",
		SPIDER = "Which of those ojos do I break first?!",
		SPIDER_WARRIOR = "So are you bad?!",
		DEER = "It's cheating to use horns!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "He surely learned his lesson, nena!",
		PIG = "I'm not running, you're running!",
		PREY = "Mis músculos are heavy!",
		SPIDER = "Too many legs, has an advantage.",
		SPIDER_WARRIOR = "I think he was something bad.",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Oye you gave me life! Mama?.",
        MULTIPLAYER_PORTAL_MOONROCK = "I'm a man of logic but this beats me, nena.",
        MOONROCKIDOL = "This doesn't look very científico.",
        CONSTRUCTION_PLANS = "I hope it has illustrations!",

        ANTLION =
        {
            GENERIC = "Surely she wants my number.",
            VERYHAPPY = "So this is a date, nena?",
            UNHAPPY = "I guess you're not on your good days, nena!",
        },
        ANTLIONTRINKET = "I don't think I like these cosas.",
        SANDSPIKE = "I really don't like that, nena!",
        SANDBLOCK = "That reminds me of someone very guapo!",
        GLASSSPIKE = "I think I prefer sand!",
        GLASSBLOCK = "That seems fragile!.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="Do you think my mama would like it?",
            LONG = "Something calls for help from there.",
            MEDIUM = "Did that flower tell me something?",
            SOON = "I don't think my mama likes this flower.",
            HAUNTED_POCKET = "They say it's better to let go.",
            HAUNTED_GROUND = "What is this supposed to be, nena?",
        },

        BALLOONS_EMPTY = "Hey can you make me a perrito?",
        BALLOON = "I need one for my nena",

        BERNIE_INACTIVE =
        {
            BROKEN = "Poor osito",
            GENERIC = "Smells like burnt.",
        },

        BERNIE_ACTIVE = "So it's a puppet?",
        BERNIE_BIG = "That looks like a very big puppet.",

        BOOK_BIRDS = "This just says pio pio.",
        BOOK_TENTACLES = "This pictures are weird.",
        BOOK_GARDENING = "I don't feel very verde reading this",
        BOOK_SLEEP = "I will definitely fall asleep reading this.",
        BOOK_BRIMSTONE = "So he was your son?",

        PLAYER =
        {
            GENERIC = "A new nena, %s!",
            ATTACKER = "%s dale plantate!",
            MURDERER = "I did not see anything!",
            REVIVER = "%s, is this like a macumba?.",
            GHOST = "%s could you prepare a macumba, nena?",
            FIRESTARTER = "Don't come near my cosas, %s.",
        },
        WILSON =
        {
            GENERIC = "Are you like a cerebrito?",
            ATTACKER = "Hey hey cerebrito calm!",
            MURDERER = "Yes you are a mad scientist, %s!",
            REVIVER = "%s It wasn't something very scientific, verdad?",
            GHOST = "Will you create something for me now?",
            FIRESTARTER = "Quemar cosas wasn't very scientific, %s.",
        },
        WOLFGANG =
        {
            GENERIC = "My gymbro, %s!",
            ATTACKER = "I want to prove you mastodonte!",
            MURDERER = "That's taking advantage of your strength!",
            REVIVER = "%s what a good mustache.",
            GHOST = "I told you you were doing too much peso compa.",
            FIRESTARTER = "No puedes realmente \"fight\" fire, %s!",
        },
        WAXWELL =
        {
            GENERIC = "So I owe you my life or not, %s?",
            ATTACKER = "Of course three against one had to be even.",
            MURDERER = "I will have to introduce you to these bombas that are my arms",
            REVIVER = "%s thank you again for this gift.",
            GHOST = "Lo prometo I'm trying %s!",
            FIRESTARTER = "%s So you don't like the dark?",
        },
        WX78 =
        {
            GENERIC = "That's good copper, %s!",
            ATTACKER = "I think you need a fix!",
            MURDERER = "%s! You would have to be disconnected!",
            REVIVER = "So you did have a heart?",
            GHOST = "So you do need a heart %s!",
            FIRESTARTER = "You are red hot, %s.",
        },
        WILLOW =
        {
            GENERIC = "So you are a crazy nena, %s!",
            ATTACKER = "%s Put down that lighter, nena",
            MURDERER = "So you plan to burn the corpse?",
            REVIVER = "%s, I owe you a date nena!",
            GHOST = "I can give you mi corazón, nena!",
            FIRESTARTER = "Otro más?",
        },
        WENDY =
        {
            GENERIC = "Greetings, little terrifying niña",
            ATTACKER = "%s you look very innocent",
            MURDERER = "Did you do this to your hermana?",
            REVIVER = "%s you really are a medium.",
            GHOST = "Crees que you could revive me too %s?.",
            FIRESTARTER = "I know it was your niña, %s.!",
        },
        WOODIE =
        {
            GENERIC = "Good beard, %s!",
            ATTACKER = "%s don't use that axe!",
            MURDERER = "You shouldn't use your axe for that",
            REVIVER = "%s sí que tiene madera!.",
            GHOST = "So you have a heart behind that beard?",
            BEAVER = "%s what good teeth!",
            BEAVERGHOST = "Recuerdas how you ate my logs, %s?",
            MOOSE = "I'm not going to make jokes about your horns!",
            MOOSEGHOST = "Is it still not a good time for horn jokes?",
            GOOSE = "You really have pluma!",
            GOOSEGHOST = "So we can't eat goose tonight?",
            FIRESTARTER = "Don't you prefer to cut it, %s?",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Good day, señora!",
            ATTACKER = "Get away, señora!",
            MURDERER = "Did you read that in your novels?",
            REVIVER = "Maybe I could read one of your books!",
            GHOST = "Did you die for your literature, señora?",
            FIRESTARTER = "where did you leave the books, señora?",
        },
        WES =
        {
            GENERIC = "Hola desgraciado, %s!",
            ATTACKER = "%s calladito but peligroso.",
            MURDERER = "What do you like to imitate?",
            REVIVER = "%s I'll buy you a perrito balloon!",
            GHOST = "You don't need to say nada, I'll help you.",
            FIRESTARTER = "Don't say anything, I see it.",
        },
        WEBBER =
        {
            GENERIC = "A cuál ojo should I look at, %s?",
            ATTACKER = "Don't make me take out the Raid niño!",
            MURDERER = "I knew you were venenoso, %s!",
            REVIVER = "So you were a niño before?",
            GHOST = "How could I deny life to such an fea araña?",
            FIRESTARTER = "Your family could live there you know niño?.",
        },
        WATHGRITHR =
        {
            GENERIC = "A brave nena, %s!",
            ATTACKER = "So do you like the rude games %s?",
            MURDERER = "%s it's time to calm down brave nena.",
            REVIVER = "%s you really make my heart accelerate nena.",
            GHOST = "You won't go to Valhalla without me nena.",
            FIRESTARTER = "%s you really know how to heat things up nena.",
        },
        WINONA =
        {
            GENERIC = "oh hardworking señorita, %s!",
            ATTACKER = "%s you better save those catapults señorita.",
            MURDERER = "I'll have to turn you off señorita!",
            REVIVER = "Yes you have a good hand señorita, %s.",
            GHOST = "Apuesto you didn't expect that battery to explode.",
            FIRESTARTER = "I think the topic of being hot got out of control señorita.",
        },
        WORTOX =
        {
            GENERIC = "El diablo, %s!!",
            ATTACKER = "The virgencita doesn't trust you %s!",
            MURDERER = "I have more strength than a cabra roja!",
            REVIVER = "I'm not going to make deals with the chamuco!",
            GHOST = "So you weren't el diablo?",
            FIRESTARTER = "%s isn't it too hot for you?",
        },
        WORMWOOD =
        {
            GENERIC = "Hi verdecito, %s!",
            ATTACKER = "%s seems to have grown crooked.",
            MURDERER = "Time to break up this grass, %s!",
            REVIVER = "%s Pachamama, is that you?",
            GHOST = "Isn't a little water enough?",
            FIRESTARTER = "It's not time to turn it on, %s!",
        },
        WARLY =
        {
            GENERIC = "Chefsito, %s!",
            ATTACKER = "Those knives are only for the kitchen!",
            MURDERER = "You won't be able to cook me I'm not sabroso realmente.",
            REVIVER = "Could you prepare the wax like abuelita did?",
            GHOST = "Did someone leave the gas tap open?",
            FIRESTARTER = "I don't think that's the right way to ahumar.",
        },

        WURT =
        {
            GENERIC = "Pejelagarto girl, %s!",
            ATTACKER = "Today you are not in the mood verde girl",
            MURDERER = "You are the same as the rest of the pejelagartos!",
            REVIVER = "Now I stink of pescado, %s!",
            GHOST = "Do pejelagartos go to heaven?",
            FIRESTARTER = "Niña verde, you're going to dry out!",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "This could bring my nenas to me!",
            OPEN = "Which of my nenas will I reach?",
            FULL = "There seems to be a lot of traffic there.",
        },
        GLOMMER = 
        {
            GENERIC = "A little ball with wings tan tierna como fea.",
            SLEEPING = "So cute while sleeping and so feo.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "shines under the moon como mi bello cuerpo.",
            DEAD = "Vuela alto!",
        },
        GLOMMERWINGS = "Do you think they would look good on me, nena?",
        GLOMMERFUEL = "Do you think this stains, nena?",
        BELL = "It would be a good gift for my nena",
        STATUEGLOMMER =
        {
            GENERIC = "Art is abstract but this goes beyond.",
            EMPTY = "I made it much more abstract.",
        },

        LAVA_POND_ROCK = "That's candente but not in a good way!",

		WEBBERSKULL = "Pobre niño. He deserves a proper funeral.",
		WORMLIGHT = "No sé if it looks luxurious or appetizing.",
		WORMLIGHT_LESSER = "it's like a raisin!",
		WORM =
		{
		    PLANT = "It doesn't look bad, nena.",
		    DIRT = "Nada interesting.",
		    WORM = "What does it remind you of, nena?",
		},
        WORMLIGHT_PLANT = "It doesn't look bad, nena.",
		MOLE =
		{
			HELD = "You would be a good pet for my nena",
			UNDERGROUND = "Something is under my feet.",
			ABOVEGROUND = "How would you look between two panes?",
		},
		MOLEHILL = "My muscles don't fit that hole.",
		MOLEHAT = "I think leather does look good on me, nena!",

		EEL = "Un pejelagarto!",
		EEL_COOKED = "Espero it tastes better than it looks.",
		UNAGI = "This isn't raw, right, nena?",
		EYETURRET = "I know I'm irresistible but please no me mires, nena!",
		EYETURRET_ITEM = "I hope it's siesta time",
		MINOTAURHORN = "Nunca fui cuerneado and it won't be the first!",
		MINOTAURCHEST = "I hope it is a large amount of non-vegetable wax!",
		THULECITE_PIECES = "This sure looks luxurious, nena!",
		POND_ALGAE = "Algo de algas.",
		GREENSTAFF = "This might be helpful, nena.",
		GIFT = "It wasn't necessary, nena!",
        GIFTWRAP = "Oh no hay nothing inside.",
		POTTEDFERN = "A pretty azul like my eyes, creo.",
        SUCCULENT_POTTED = "Suculenta like me, nena.",
		SUCCULENT_PLANT = "My abuelita says this is good.",
		SUCCULENT_PICKED = "It looks really suculenta but I shouldn't eat it.",
		SENTRYWARD = "So this is science?",
        TOWNPORTAL =
        {
			GENERIC = "I'm sure I could move this pyramid with mis brazos.",
			ACTIVE = "Ready for the rodeo",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "Is this like mini magic?",
			ACTIVE = "Esto no debe ser a good way to take care of your mind.",
		},
        WETPAPER = "Let's see the papel dry",
        WETPOUCH = "Entiendo it is something that I generate a lot.",
        MOONROCK_PIECES = "I know I could break it with just my bellos dedos",
        MOONBASE =
        {
            GENERIC = "I'm not going to put anything of mine in that hole.",
            BROKEN = "And that's why you don't have to put anything in there.",
            STAFFED = "Y ahora what?",
            WRONGSTAFF = "I think this cosa doesn't belong here",
            MOONSTAFF = "This stone could make my statuesque body shine.",
        },
        MOONDIAL = 
        {
			GENERIC = "I don't understand what's happening but it's going well, nena.",
			NIGHT_NEW = "New moon, new nena.",
			NIGHT_WAX = "The moon está encerando... wax joke.",
			NIGHT_FULL = "Full moon perfecta for tanning.",
			NIGHT_WANE = "Wane moon is menguando.",
			CAVE = "...It's a cave.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "Did this get here how did I?",
		ARMORRUINS = "How would it look on me, nena?",
		ARMORSKELETON = "It's in the bones mi compa.",
		SKELETONHAT = "I don't think that's my size.",
		RUINS_BAT = "I can handle this and más!",
		RUINSHAT = "I hope my nenas like it with this on.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "Todo chill.",
            WARN = "This is no longer science.",
            WAXING = "Está encerando! Wax joke.",
            STEADY = "It is as stable as we are.",
            WANING = "Is this rewinding?",
            DAWN = "La pesadilla is almost gone!",
            NOMAGIC = "This is completely science.",
		},
		BISHOP_NIGHTMARE = "You don't look very good compa!",
		ROOK_NIGHTMARE = "I'm not afraid of anything but that cosa...",
		KNIGHT_NIGHTMARE = "That's not my burrito.",
		MINOTAUR = "I can help with your hair problem.",
		SPIDER_DROPPER = "I will need my abuelita's chancla!",
		NIGHTMARELIGHT = "How is this supposed to work?",
		NIGHTSTICK = "This is the real chispa!",
		GREENGEM = "My nena would like it like a ring.",
		MULTITOOL_AXE_PICKAXE = "I can do your job with my strong hands.",
		ORANGESTAFF = "Esto podría help me with leg day.",
		YELLOWAMULET = "Brilla almost as much as I do.",
		GREENAMULET = "Everything at half price for my nena!",
		SLURPERPELT = "Is this good for suerte?",	

		SLURPER = "Peludo amigo",
		SLURPER_PELT = "Is this good for suerte?",
		ARMORSLURPER = "Peludo also suits me.",
		ORANGEAMULET = "Esto podría help me with leg day.",
		YELLOWSTAFF = "Brilla almost as much as I do.",
		YELLOWGEM = "Amarilla, brilla almost as much as I do.",
		ORANGEGEM = "Naranja, esto podría help me with leg day.",
        OPALSTAFF = "All gems deserve a good palo.",
        OPALPRECIOUSGEM = "My abuelita deserves this gem.",
        TELEBASE = 
		{
			VALID = "Todo perfecto.",
			GEMS = "Creo it needs another shiny stone.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.",
			GEMS = "Creo it need a shiny stone",
		},
		STAFFLIGHT = "Podría ser my little light at night",
        STAFFCOLDLIGHT = "You're cold nena.",

        ANCIENT_ALTAR = "It looks older than my abuelita.",

        ANCIENT_ALTAR_BROKEN = "I think it needs some love.",

        ANCIENT_STATUE = "A statue of pejelagarto.",

        LICHEN = "A little natural protein.",
		CUTLICHEN = "Mhh proteina!.",

		CAVE_BANANA = "You like this nena!",
		CAVE_BANANA_COOKED = "This is from my hogar.",
		CAVE_BANANA_TREE = "Cómo did this get here?.",
		ROCKY = "Your nails don't look good nena.",
		
		COMPASS =
		{
			GENERIC="Now I can locate you nena!",
			N = "Norte.",
			S = "Sur.",
			E = "Este.",
			W = "Oeste.",
			NE = "Noreste.",
			SE = "Sudeste.",
			NW = "Noroeste.",
			SW = "Sudoeste.",
		},

        HOUNDSTOOTH = "Not even this can get through my perfecta piel!",
        ARMORSNURTLESHELL = "Caracol col col.",
        BAT = "Are you revenge?",
        BATBAT = "Nothing is worse, my abuelita said.",
        BATWING = "I hate those things, even when they're dead.",
        BATWING_COOKED = "I don't want to remember this...",
        BATCAVE = "I have seen deeper things.",
        BEDROLL_FURRY = "This is for good siestas.",
        BUNNYMAN = "His paw must be very lucky.",
        FLOWER_CAVE = "I want a bouquet.",
        GUANO = "I need a bolsita!",
        LANTERN = "Do you really think this is better than me?",
        LIGHTBULB = "I am also natural luz!",
        MANRABBIT_TAIL = "I feel luck by my side.",
        MUSHROOMHAT = "Looks psychedelic!",
        MUSHROOM_LIGHT2 =
        {
            ON = "Blue is obviously the most scientific color.",
            OFF = "We could make a prime light source with some primary colors.",
            BURNT = "I didn't mildew it, I swear.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Oh no my nena can't have another light!",
            OFF = "There's only room for one light here!",
            BURNT = "He deserved it.",
        },
        SLEEPBOMB = "Siesta time!.",
        MUSHROOMBOMB = "Makes you feel psychedelic nena!",
        SHROOM_SKIN = "My big Pepe.",
        TOADSTOOL_CAP =
        {
            EMPTY = "I'm not going to put anything in there.",
            INGROUND = "Hey nena what is this?",
            GENERIC = "Doesn't it make you remember something nena?",
        },
        TOADSTOOL =
        {
            GENERIC = "My compa big Pepe!",
            RAGE = "You don't seem to be in the mood today Pepe!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "I didn't trust this!",
            BURNT = "Don't breathe that smoke nena!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Ok ok this time you beat me.",
            BLOOM = "Oh come on also it shines?",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "Almost like my muscles.",
            BLOOM = "I don't know if I should be offended.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Oh look at him how small, nena",
            BLOOM = "You need to shine brighter I still beat you!",
        },
        MUSHTREE_TALL_WEBBED = "In the end he was no mejor que yo.",
        SPORE_TALL =
        {
            GENERIC = "I don't think that's very natural firefly.",
            HELD = "No puedes reemplazarme but some help doesn't hurt.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "These fireflies are big.",
            HELD = "No puedes reemplazarme but some help doesn't hurt.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Are there fireflies down here?",
            HELD = "No puedes reemplazarme but some help doesn't hurt.",
        },
        RABBITHOUSE =
        {
             GENERIC = "That must be the mama carrot!",
            BURNT = "Mama carrot is hot.",
        },
        SLURTLE = "Caracol col col.",
        SLURTLE_SHELLPIECES = "Like my abuelita's vase.",
        SLURTLEHAT = "Will this be good for the skin?",
        SLURTLEHOLE = "Everything disgusting always comes out of a hole.",
        SLURTLESLIME = "I promise this isn't mine nena.",
        SNURTLE = "Caracolin!",
        SPIDER_HIDER = "Te veo spider!",
        SPIDER_SPITTER = "Can you do that too?!",
        SPIDERHOLE = "Is it a extraña decoration?",
        SPIDERHOLE_ROCK = "Is it a extraña decoration?",
        STALAGMITE = "Oh how interesting a roca.",
        STALAGMITE_TALL = "Oh how interesting more rocas.",
        TREASURECHEST_TRAP = "I knew I had to touch it with a palo first!",

        TURF_CARPETFLOOR = "Se siente bien on my feet.",
        TURF_CHECKERFLOOR = "Reminds me of my abuelita's kitchen.",
        TURF_DIRT = "A little bit of nature, nena.",
        TURF_FOREST = "A little bit of nature, nena.",
        TURF_GRASS = "A little bit of nature, nena.",
        TURF_MARSH = "A little bit of nature, nena.",
        TURF_METEOR = "A little bit of natu- this is not from here nena.",
        TURF_PEBBLEBEACH = "Me gusta feel the sand on my feet.",
        TURF_ROAD = "All roads lead to...",
        TURF_ROCKY = "A little bit of nature, nena.",
        TURF_SAVANNA = "A little bit of nature, nena.",
        TURF_WOODFLOOR = "I hope it doesn't have splinters.",

		TURF_CAVE="A little more nature.",
		TURF_FUNGUS="A little more nature.",
		TURF_SINKHOLE="A little more nature.",
		TURF_UNDERROCK="A little more nature.",
		TURF_MUD="A little more nature.",

		TURF_DECIDUOUS = "A little more nature.",
		TURF_SANDY = "A little more nature.",
		TURF_BADLANDS = "A little more nature.",
		TURF_DESERTDIRT = "A little bit of nature, nena.",
		TURF_FUNGUS_GREEN = "A little bit of nature, nena.",
		TURF_FUNGUS_RED = "A little bit of nature, nena.",
		TURF_DRAGONFLY = "I hope it doesn't make me hotter, nena",

		POWCAKE = "If it's verde it must not be good.",
        CAVE_ENTRANCE = "He entrado en worse things.",
        CAVE_ENTRANCE_RUINS = "You won't be able to hide from me nenas.",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "You won't be able to hide from me nenas",
            OPEN = "He entrado en worse things.",
            FULL = "That place is full of nenas, don't make me wait",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I think I should keep looking for my nenas.",
            OPEN = "I don't think my nenas are in this place.",
            FULL = "Come on nenas I know you're up there!",
        },

		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "Does this really work?",
		PIGGUARD = "These look in better forma.",
		ABIGAIL = "So do you have an older hermana?",
		ADVENTURE_PORTAL = "If I fall there again, will they give me life again?",
		AMULET = "This surely attracts nenas!",
		ANIMAL_TRACK = "A big Fido is nearby.",
		ARMORGRASS = "This thing stings.",
		ARMORMARBLE = "Is this heavy? Nah.",
		ARMORWOOD = "I think I got a splinter.",
		ARMOR_SANITY = "Here are the voces again",
		ASH =
		{
			GENERIC = "Ashes you are and ashes you will be.",
			REMAINS_GLOMMERFLOWER = "Its shine was consumed.",
			REMAINS_EYE_BONE = "The fuego consumes everything!",
			REMAINS_THINGIE = "I'll have to ask my trusted scientist about this.",
		},
		AXE = "Might not be necessary with my huge arms.",
		BABYBEEFALO = 
		{
			GENERIC = "It's like a mini big fido!",
		    SLEEPING = "Que sueñes con los angelitos.",
        },
        BUNDLE = "It sounds like I broke it.",
        BUNDLEWRAP = "Everything looks better wrapped!",
		BACKPACK = "I can carry this and more, nena.",
		BACONEGGS = "Enough energy for the rest of the day, nena.",
		BANDAGE = "Una buena curita.",
		BASALT = "If you give me a while I can break it!",
		BEARDHAIR = "Do you think I can use it for a peluca?",
		BEARGER = "This tlacuache doesn't look so bad.",
		BEARGERVEST = "This looks good on me, nena!",
		ICEPACK = "Protect the food from my cuerpo candente.",
		BEARGER_FUR = "This is some good leather nena.",
		BEDROLL_STRAW = "Will it be as good as it looks?",
		BEEQUEEN = "She is a big and horrible nena.",
		BEEQUEENHIVE = 
		{
			GENERIC = "With this I could be huge, nena!",
			GROWING = "This is how I want to grow, nena!",
		},
        BEEQUEENHIVEGROWN = "This is how I want to grow, nena!",
        BEEGUARD = "I could do your job better!",
        HIVEHAT = "Do I look taller, nena?",
        MINISIGN =
        {
            GENERIC = "A mini piece of art, like you.",
            UNDRAWN = "Draw me like your French nenas.",
        },
        MINISIGN_ITEM = "This work needs inspiration somewhere, maybe you.",
		BEE =
		{
			GENERIC = "Could you give me wax, nena?",
			HELD = "Prometo not to touch your cera!",
		},
		BEEBOX =
		{
			READY = "Delicious with chicken.",
			FULLHONEY = "Delicious with chicken.",
			GENERIC = "So they don't give me cera?",
			NOHONEY = "Nati.",
			SOMEHONEY = "Una teca.",
			BURNT = "Nooo my ceraaa?!!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "This is legal, right?",
			LOTS = "How are there so many?.",
			SOME = "Let my mini mushrooms grow.",
			EMPTY = "Are mushrooms invisible?.",
			ROTTEN = "Only my abuelita can fix this.",
			BURNT = "Not even my abuelita can save it now.",
			SNOWCOVERED = "Too cold for my pequeños.",
		},
		BEEFALO =
		{
			FOLLOWER = "I have a big Fido nena!",
			GENERIC = "It's a big Fido!",
			NAKED = "It's like those bald cats!",
			SLEEPING = "Shh keep sleeping big thing.",
            --Domesticated states:
            DOMESTICATED = "Now you are my big Fido!.",
            ORNERY = "No parece to be in the mood",
            RIDER = "Hey like my nenas!",
            PUDGY = "I think you need a lot of gym.",
		},

		BEEFALOHAT = "These cuernos are not what they seem, right?",
		BEEFALOWOOL = "I'm sorry big Fido",
		BEEHAT = "Espero this doesn't make me sticky.",
        BEESWAX = "Finally some cera!",
		BEEHIVE = "That's where they hide their wax!.",
		BEEMINE = "Better not let it fall.",
		BEEMINE_MAXWELL = "You better be very careful!",
		BERRIES = "Passion-red, nena.",
		BERRIES_COOKED = "This is hot and red like...",
        BERRIES_JUICY = "You are juicy, nena.",
        BERRIES_JUICY_COOKED = "This won't last long, nena!",
		BERRYBUSH =
		{
			BARREN = "You don't look very good.",
			WITHERED = "Too hot for her.",
			GENERIC = "This can be eaten right?",
			PICKED = "Nena, did you take them?",
			DISEASED = "I hope this is not contagious.",
			DISEASING = "Now it doesn't look good at all.",
			BURNING = "I like hot food but this is too far",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "You don't look very good.",
			WITHERED = "So much calor left you dry nena!",
			GENERIC = "Ahora a esperar for its juiciness to return.",
			PICKED = "The bush is working hard on the next batch.",
			DISEASED = "I hope this is not contagious.",
			DISEASING = "Now it doesn't look good at all.",
			BURNING = "I like hot food but this is too far.",
		},
		BIGFOOT = "It can't be bigger than me.",
		BIRDCAGE =
		{
			GENERIC = "Ya tengo the cage but what do I do with it?",
			OCCUPIED = "A good periquito",
			SLEEPING = "Let the periquito sleep.",
			HUNGRY = "Poli quiere galleta?",
			STARVING = "Poli needs cookie!",
			DEAD = "They always told me they ran away",
			SKELETON = "I don't think Poli's going to run away.",
		},
		BIRDTRAP = "Tengo que recordar where I left it",
		CAVE_BANANA_BURNT = "Fried banana!",
		BIRD_EGG = "Proteina!.",
		BIRD_EGG_COOKED = "Hot proteina!",
		BISHOP = "¡Alto el fuego!",
		BLOWDART_FIRE = "This must be picante, nena.",
		BLOWDART_SLEEP = "Forced nap.",
				BLOWDART_PIPE = "I hope I don't swallow it.",
		BLOWDART_YELLOW = "Do you want to be a chispa?.",
		BLUEAMULET = "Ice frío hielo.",
		BLUEGEM = "Ice ice baby.",
		BLUEPRINT = 
		{ 
            COMMON = "No comprende",
            RARE = "No comprende nada",
        },
        SKETCH = "Could you draw me.",
		BLUE_CAP = "I like its color.",
		BLUE_CAP_COOKED = "Will it taste good how it looks?",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a honguito.",
			INGROUND = "Honguito is sleeping.",
			PICKED = "Now you are mine honguito.",
		},
		BOARDS = "Doesn't it work as a weapon?",
		BONESHARD = "How long will it take to become oil?",
		BONESTEW = "A good caracú.",
		BUGNET = "I'm going to catch you nena!",
		BUSHHAT = "How do I look nena?",
		BUTTER = "A good pre-workout!",
		BUTTERFLY =
		{
			GENERIC = "As beautiful as my nenas.",
			HELD = "If it were so easy to catch them.",
		},
		BUTTERFLYMUFFIN = "Does this give me wings?",
		BUTTERFLYWINGS = "Did your wings fall off nena?",
		BUZZARD = "Your name is Tiago?",

		SHADOWDIGGER = "Compa, does your shadow move?",

		CACTUS = 
		{
			GENERIC = "Even my beautiful skin can be punctured",
			PICKED = "Can you take out my thorn, nena?",
		},
		CACTUS_MEAT_COOKED = "Without espinas it would taste better",
		CACTUS_MEAT = "My big fingers can't remove all the espinas.",
		CACTUS_FLOWER = "A flower to another flower.",

		COLDFIRE =
		{
			EMBERS = "You need more chispa!",
			GENERIC = "Brilla a little brighter than me.",
			HIGH = "You're already getting too hot, nena.",
			LOW = "You're turning off, nena",
			NORMAL = "The right chispa.",
			OUT = "And it's over like her and me.",
		},
		CAMPFIRE =
		{
			EMBERS = "You need more chispa!",
			GENERIC = "Brilla a little brighter than me.",
			HIGH = "You're already getting too hot, nena.",
			LOW = "You're turning off, nena",
			NORMAL = "The right chispa.",
			OUT = "And it's over like her and me.",
		},
		CANE = "I think it gives me some style, nena.",
		CATCOON = "You are a strange tlacuache.",
		CATCOONDEN = 
		{
			GENERIC = "Nena are you home?",
			EMPTY = "Nena where are you?",
		},
		CATCOONHAT = "Do you think it makes me look cute nena?",
		COONTAIL = "Where should I put this?",
		CARROT = "This is how carrots are born.",
		CARROT_COOKED = "Lost its fiber.",
		CARROT_PLANTED = "Time to make carrots bebés.",
		CARROT_SEEDS = "To make baby carrots.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Hey nena look what I found!",
			BURNING = "It's a good light for reading.",
			BURNT = "There is nothing to read anymore.",
		},
		WATERMELON_SEEDS = "To make baby melons.",
		CAVE_FERN = "Yuyos.",
		CHARCOAL = "This is painting my fingers black.",
        CHESSPIECE_PAWN = "A little soldier.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "I can move it with one finger.",
            STRUGGLE = "Is this also science, nena?",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "An ico ico.",
            STRUGGLE = "Is this also science, nena?",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Is this a queen? or a king? I don't know about this game.",
            STRUGGLE = "Is this also science, nena?",
        },
        CHESSPIECE_MUSE = "The cornudo!.",
        CHESSPIECE_FORMAL = "What style.",
        CHESSPIECE_HORNUCOPIA = "This is a big horn!",
        CHESSPIECE_PIPE = "This looks elegant.",
        CHESSPIECE_DEERCLOPS = "Don't look at me too much, nena.",
        CHESSPIECE_BEARGER = "Tlacuache duro",
        CHESSPIECE_MOOSEGOOSE =
        {
            "So you're a horned goose or a goose-shaped moose?",
        },
        CHESSPIECE_DRAGONFLY = "It doesn't look like it's going to fly.",
        CHESSPIECE_BUTTERFLY = "Look nena they made a statue of you",
        CHESSPIECE_ANCHOR = "This must represent me.",
        CHESSPIECE_MOON = "I'm sure I can lift this.",
        CHESSJUNK1 = "With some tape it fixes.",
        CHESSJUNK2 = "Maybe with some glue?",
        CHESSJUNK3 = "There is no one to fix this.",
		CHESTER = "Big mouth Fido.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Me mira de pesado.",
			WAITING = "I guess it's siesta time.",
		},
		COOKEDMANDRAKE = "Live protein, nena.",
		COOKEDMEAT = "A good asado.",
		COOKEDMONSTERMEAT = "What beefalo did you get this meat from?",
		COOKEDSMALLMEAT = "It's not breaded but it's good.",
		COOKPOT =
		{
			COOKING_LONG = "It is done over low heat.",
			COOKING_SHORT = "Uno rapidito!",
			DONE = "How abuelita used to do it.",
			EMPTY = "I had put food here.",
			BURNT = "And this is why you don't have to leave the fire on.",
		},
		CORN = "Full of granos.",
		CORN_COOKED = "This would be good in a stew.",
		CORN_SEEDS = "To make baby corn.",
        CANARY =
		{
			GENERIC = "A little yellow canary creo.",
			HELD = "I hope I don't crush you with my huge arms.",
		},
        CANARY_POISONED = "The little canary doesn't look good.",

		CRITTERLAB = "Nena are you in there?",
        CRITTER_GLOMLING = "A mini ball!",
        CRITTER_DRAGONLING = "Is it an insect or a dragon?",
		CRITTER_LAMB = "Like a poodle but less aggressive.",
        CRITTER_PUPPY = "Oh my Fido!",
        CRITTER_KITTEN = "Come michi michi.",
        CRITTER_PERDLING = "Can I call you Piolin?",
		CRITTER_LUNARMOTHLING = "I don't know if she's beautiful or creepy.",

		CROW =
		{
			GENERIC = "Don't look at me with those eyes.",
			HELD = "I told you not to look at me like that!",
		},
		CUTGRASS = "Some hierba.",
		CUTREEDS = "Some juncos.",
		CUTSTONE = "Not as tough as me.",
		DEADLYFEAST = "I think they went too picante!",
		DEER =
		{
			GENERIC = "Can you see me with those hairs?.",
			ANTLER = "I hope this isn't mine, nena!",
		},
        DEER_ANTLER = "Nena did you drop this?",
        DEER_GEMMED = "That deer really knows style!",
		DEERCLOPS = "You think you lift more than me in pecho?!",
		DEERCLOPS_EYEBALL = "Now I will be able to lift your eye as it weighs.",
		EYEBRELLAHAT =	"Perfect for not getting wet, nena.",
		DEPLETED_GRASS =
		{
			GENERIC = "Don't make me wait hierba!",
		},
        GOGGLESHAT = "They're not sunglasses but they look good on me, nena.",
        DESERTHAT = "My beautiful eyes protected, nena!",
		DEVTOOL = "It smells extraño",
		DEVTOOL_NODEV = "I can lift huge things but not this...",
		DIRTPILE = "Qué? It's just dirt.",
		DIVININGROD =
		{
			COLD = "A little further to the right, no... nothing.",
			GENERIC = "Trying... uno, dos, tres.",
			HOT = "Hey hey there's a signal!",
			WARM = "A little further to the left, sí sí.",
			WARMER = "Almost just a little further to the left!",
		},
		DIVININGRODBASE =
		{
			GENERIC = "This looks like some kind of macumba.",
			READY = "Something has to go inside, but I'm not going to try it.",
			UNLOCKED = "I turned on the macumba!",
		},
		DIVININGRODSTART = "This seems to capture something.",
		DRAGONFLY = "So is it a dragon or a dragonfly?",
		ARMORDRAGONFLY = "Now I'm hot nena!",
		DRAGON_SCALES = "Oh oh my fingers.",
		DRAGONFLYCHEST = "Even I fit in this chest!",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "It does not work like that? Oh.",
			GENERIC = "Virgencita this is hot but it doesn't shine.", --no gems
			NORMAL = "You see half the things.", --one gem
			HIGH = "I like those little eyes!", --two gems
		},
        
        HUTCH = "Another pejelagarto!",
        HUTCH_FISHBOWL =
        {
            GENERIC = "A Fido pejelagarto?",
            WAITING = "Do you know how to breathe out of water?",
        },
		LAVASPIT = 
		{
			HOT = "That could melt my beautiful body!",
			COOL = "Who is hot now?",
		},
		LAVA_POND = "I don't think it's a good place for a hot bath nena!",
		LAVAE = "I'm not going to pat that cosa!",
		LAVAE_COCOON = "Did someone turn you off nena?",
		LAVAE_PET = 
		{
			STARVING = "So you also eat?",
			HUNGRY = "You definitely need to eat!",
			CONTENT = "I think that on his face is a sonrisa.",
			GENERIC = "Don't look at me like that I can't pat you without melting",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Algo más emanates heat besides me",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I think now it's just me.",
			COMFY = "Never seen a happy huevo?",
		},
		LAVAE_TOOTH = "Your first baby tooth!",

		DRAGONFRUIT = "How is this a fruta?.",
		DRAGONFRUIT_COOKED = "Are you sure it's not a fried egg?",
		DRAGONFRUIT_SEEDS = "So that thing was a fruta?.",
		DRAGONPIE = "Whatever it is, it doesn't taste bad.",
		DRUMSTICK = "Do you like chicken nena?",
		DRUMSTICK_COOKED = "Do you like pollo frito nena?",
		DUG_BERRYBUSH = "I pulled it out with my strong arms.",
		DUG_BERRYBUSH_JUICY = "I pulled it out with my beautiful arms.",
		DUG_GRASS = "I pulled it out with my pretty arms.",
		DUG_MARSH_BUSH = "I pulled it out with my hot arms.",
		DUG_SAPLING = "I pulled it out with my handsome arms.",
		DURIAN = "Yes you smell bad nena!",
		DURIAN_COOKED = "You still need a shower nena!",
		DURIAN_SEEDS = "It's a stinky seed.",
		EARMUFFSHAT = "Habla louder I can't hear you, nena!.",
		EGGPLANT = "I can't tell you what it reminds me of.",
		EGGPLANT_COOKED = "It got small with the heat, it's usually the opposite.",
		EGGPLANT_SEEDS = "It's a seed from a funny plant, nena",
		
		ENDTABLE = 
		{
			BURNT = "Don't you think it's good for a hot romantic dinner, nena?",
			GENERIC = "Don't you think it's good for a romantic dinner, nena?",
			EMPTY = "I think it could look more romantico",
			WILTED = "I think it lost the romanticismo",
			FRESHLIGHT = "Almost the same atmosphere as a vela.",
			OLDLIGHT = "Only a vela can illuminate this table well.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "I think it's tanning.",
			BURNT = "Mi compa got too tanned.",
			CHOPPED = "Not even nature can handle my arms, nena!",
			POISON = "Something went wrong with you, compa?",
			GENERIC = "I think it needs to tan.",
		},
		ACORN = "A tree egg.",
        ACORN_SAPLING = "Ya crecerás with a lot of gym and a good diet!",
		ACORN_COOKED = "A fried tree egg.",
		BIRCHNUTDRAKE = "What's that!? Patealo!",
		EVERGREEN =
		{
			BURNING = "I think it's tanning.",
			BURNT = "Mi compa got too tanned.",
			CHOPPED = "Not even nature can handle my arms, nena!",
			GENERIC = "Don't prick me",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "I think it's tanning.",
			BURNT = "Mi compa got too tanned.",
			CHOPPED = "Not even nature can handle my arms, nena!",
			GENERIC = "I think it lacks some gym",
		},
		TWIGGYTREE = 
		{
			BURNING = "I think it's tanning.",
			BURNT = "Mi compa got too tanned.",
			CHOPPED = "Not even nature can handle my arms, nena!",
			GENERIC = "You're skinny compa!",			
			DISEASED = "You're very skinny compa!",
		},
		TWIGGY_NUT_SAPLING = "Ya crecerás with a lot of gym and a good diet!",
        TWIGGY_OLD = "Yes it looks weak.",
		TWIGGY_NUT = "A skinny tree egg.",
		EYEPLANT = "Even the plants begin to see my belleza",
		INSPECTSELF = "Am I still as hermoso?",
		FARMPLOT =
		{
			GENERIC = "I could plant proteina!",
			GROWING = "Soon you will be my protein!",
			NEEDSFERTILIZER = "Protein needs protein.",
			BURNT = "It's not going to be reincarnated as a phoenix, right?",
		},
		FEATHERHAT = "Now I have the feathers, nena!",
		FEATHER_CROW = "Una black pluma.",
		FEATHER_ROBIN = "Una red pluma.",
		FEATHER_ROBIN_WINTER = "Una blanca pluma.",
		FEATHER_CANARY = "Una pluma de piolin.",
		FEATHERPENCIL = "This is a real pluma, nena!",
		FEM_PUPPET = "I got you nena!",
		FIREFLIES =
		{
			GENERIC = "They are not as beautiful as me!",
			HELD = "They won't shine as bright as me, nena.",
		},
		FIREHOUND = "That Fido is on fire!.",
		FIREPIT =
		{
			EMBERS = "You need more chispa!",
			GENERIC = "Brilla a little brighter than me.",
			HIGH = "You're already getting too hot, nena.",
			LOW = "You're turning off, nena.",
			NORMAL = "The right chispa.",
			OUT = "And it's over like her and me.",
		},
		COLDFIREPIT =
		{
			EMBERS = "You need more chispa!",
			GENERIC = "Brilla a little brighter than me.",
			HIGH = "You're already getting too hot, nena.",
			LOW = "You're turning off, nena.",
			NORMAL = "The right chispa.",
			OUT = "And it's over like her and me.",
		},
		FIRESTAFF = "Better in my hands than melting me.",
		FIRESUPPRESSOR = 
		{	
			ON = "Put out that flame, nena!",
			OFF = "Let the hot one take over, nena.",
			LOWFUEL = "Dale más gasolina!",
		},

		FISH = "Dicen que fish does not make you fat.",
		FISHINGROD = "Will there be good bagres nearby?",
		FISHSTICKS = "Do you like fish sticks? Qué eres?",
		FISHTACOS = "It's always good if it's tacos nena!",
		FISH_COOKED = "Espero I have removed all the espinas.",
		FLINT = "Con esto and my fuertes manos I don't need anything else.",
		FLOWER = 
		{
            GENERIC = "A flower to another flower, nena.",
            ROSE = "Una flor para otra flor, nena.",
        },
        FLOWER_WITHERED = "This is how romance dies, nena.",
		FLOWERHAT = "A me for another flower, nena!",
		FLOWER_EVIL = "I wouldn't give that to my worst nena!",
		FOLIAGE = "I would say it looks like lechuga but it is not lechuga.",
		FOOTBALLHAT = "Does it make me look fatter?",
        FOSSIL_PIECE = "Is there still a long way to go before it becomes oil?",
        FOSSIL_STALKER =
        {
			GENERIC = "I still see it as somewhat chueco.",
			FUNNY = "I think the head goes the other way!",
			COMPLETE = "Now can we make oil?",
        },
        STALKER = "Oil is alive, nena!",
        STALKER_ATRIUM = "almost as big as me, nena!",
        STALKER_MINION = "Más oil!",
        THURIBLE = "Come to my oil!",
        ATRIUM_OVERGROWTH = "They don't look like dibujitos.",
		FROG =
		{
			DEAD = "Who did this to you Pepe?!",
			GENERIC = "My friend Pepe!",
			SLEEPING = "Shh Pepe is sleeping.",
		},
		FROGGLEBUNWICH = "So here was Pepe.",
		FROGLEGS = "I'm sorry Pepe.",
		FROGLEGS_COOKED = "Ok Pepe now it will be part of me.",
		FRUITMEDLEY = "Fruitoso.",
		FURTUFT = "Tlacuache hair.", 
		GEARS = "So this is part of something?",
		GHOST = "Does this make me a macumbero?",
		GOLDENAXE = "Only this is more dangerous than my hands, nena.",
		GOLDENPICKAXE = "In other places, gold is not such a good tool.",
		GOLDENPITCHFORK = "Time to get the handsome man dirty.",
		GOLDENSHOVEL = "No virgencita, por favor.",
		GOLDNUGGET = "A good gift for my nena",
		GRASS =
		{
			BARREN = "I know what you need.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "It couldn't stand the heat!",
			GENERIC = "They are only yuyos.",
			PICKED = "Now they are my yuyos.",
			DISEASED = "I think yuyos need yuyos.",
			DISEASING = "Not even the yuyos will save it.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "That thing has my yuyos.",	
			DISEASED = "Your scales don't look good.",
		},
		GREEN_CAP = "Esto must be hallucinogenic.",
		GREEN_CAP_COOKED = "It looks better.",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a honguito.",
			INGROUND = "Honguito is taking a siesta.",
			PICKED = "Honguito is already with me.",
		},
		GUNPOWDER = "Pimienta negra recién molida... oh no.",
		HAMBAT = "There's nothing better than hitting with a bife.",
		HAMMER = "This is not necessary if I have my big arms.",
		HEALINGSALVE = "Esto es good for skin, but I have cera.",
		HEATROCK =
		{
			FROZEN = "As cold as her.",
			COLD = "I am hotter than this stone.",
			GENERIC = "I'm still hotter.",
			WARM = "Oye nena this is getting hot.",
			HOT = "I think we are going too hot nena.",
		},
		HOME = "Every home needs candles.",
		HOMESIGN =
		{
			GENERIC = "If it's not a dibujito I don't understand.",
            UNWRITTEN = "Ajá I understand... it doesn't say anything",
			BURNT = "I think this should have a flammable warning.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "Gracias a sign that I do understand.",
            UNWRITTEN = "Ajá I understand... it doesn't say anything.",
			BURNT = "I think this should have a flammable warning.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "Gracias a sign that I do understand.",
            UNWRITTEN = "Ajá I understand... it doesn't say anything.",
			BURNT = "I think this should have a flammable warning.",
		},
		HONEY = "Do you want to taste my miel?",
		HONEYCOMB = "Finally cera!",
		HONEYHAM = "Everything tastes better with miel.",
		HONEYNUGGETS = "Everything tastes better with miel.",
		HORN = "Should I do the horn joke nena?",
		HOUND = "I can fight you with one hand bad Fido!",
		HOUNDCORPSE =
		{
			GENERIC = "That is a very bad Fido.",
			BURNING = "These creatures don't burn in the sun?",
			REVIVING = "Its alive! Wait... Its alive!!",
		},
		HOUNDBONE = "Oye that's a lot of oil",
		HOUNDMOUND = "Voy a dar mi vida for that oil",
		ICEBOX = "That's nothing hot, nena.",
		ICEHAT = "Cold mind cold body.",
		ICEHOUND = "This Fido likes ice frío hielo!",
		INSANITYROCK =
		{
			ACTIVE = "Time to be cucu!",
			INACTIVE = "This is a pyramid that I can carry.",
		},
		JAMMYPRESERVES = "Maybe I need something to put it.",

		KABOBS = "Lunch on a palo.",
		KILLERBEE =
		{
			GENERIC = "Run nena a mangangá!",
			HELD = "Now you're going to take me to the wax.",
		},
		KNIGHT = "An angry burrito!",
		KOALEFANT_SUMMER = "I beat an koalefant with one hand.",
		KOALEFANT_WINTER = "Voy a hacerme a fur coat with you",
		KRAMPUS = "He's going after my cera!",
		KRAMPUS_SACK = "I hope it's a nena!",
		LEIF = "I knew this day would come plantate!",
		LEIF_SPARSE = "I knew this day would come plantate!",
		LIGHTER  = "Could you lend it to me?",
		LIGHTNING_ROD =
		{
			CHARGED = "La chispa es una, nena!",
			GENERIC = "Now I will only be a magnet for nenas and not for lightning.",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "La verdadera cabra!.",
			CHARGED = "Another chispa!",
		},
		LIGHTNINGGOATHORN = "Now I have his horn.",
		GOATMILK = "La cabra was female, right?",
		LITTLE_WALRUS = "So small and achuchable.",
		LIVINGLOG = "I want to take care of it.",
		LOG =
		{
			BURNING = "Te entiendo, I cause that in everyone.",
			GENERIC = "I bet I can carry about forty of these on my strong shoulders.",
		},
		LUCY = "Oye nena I'm not that close to Woodie",
		LUREPLANT = "I have a great need to hit it.",
		LUREPLANTBULB = "This is very vegano.",
		MALE_PUPPET = "You will no longer go after my nenas!",

		MANDRAKE_ACTIVE = "Callate Thor!",
		MANDRAKE_PLANTED = "It looks so peaceful underground.",
		MANDRAKE = "I told you to shut up.",

        MANDRAKESOUP = "Ahora nada in soup.",
        MANDRAKE_COOKED = "And this is what happens when you don't sit still.",
        MAPSCROLL = "This has no dibujitos.",
        MARBLE = "Almost as perfect as my skin!",
        MARBLEBEAN = "Will I get harder if I eat it?",
        MARBLEBEAN_SAPLING = "Grow big and hard!",
        MARBLESHRUB = "What is the balance here?",
        MARBLEPILLAR = "A good place to put a statue of my hermoso rostro.",
        MARBLETREE = "I'll need bigger fists to throw this, maybe my head!",
        MARSH_BUSH =
        {
			BURNT = "It burns in its uselessness.",
            BURNING = "The useless burns quickly.",
            GENERIC = "It doesn't seem very special.",
            PICKED = "Ay.",
        },
        BURNT_MARSH_BUSH = "It burns in its uselessness.",
        MARSH_PLANT = "It doesn't seem very special.",
        MARSH_TREE =
        {
            BURNING = "Used to be picante y caliente.",
            BURNT = "Picante y caliente.",
            CHOPPED = "Now my pretty hands are full of thorns!",
            GENERIC = "Pointy like picante!",
        },
        MAXWELL = "You didn't know how to treat your nena.",
        MAXWELLHEAD = "I didn't have a good complexion.",
        MAXWELLLIGHT = "Nothing about him will shine brighter than me.",
        MAXWELLLOCK = "No, it doesn't go in there, nena.",
        MAXWELLTHRONE = "Only I can be on top, nena.",
        MEAT = "What animal did this come from?",
        MEATBALLS = "Can't you put wax on it?",
        MEATRACK =
        {
            DONE = "Más seco que sequin!",
            DRYING = "Just a little drier.",
            DRYINGINRAIN = "It is the opposite of dry, nena.",
            GENERIC = "So this isn't for drying my clothes?",
            BURNT = "Won't it dry faster like this?.",
            DONE_NOTMEAT = "Well yes it is dry.",
            DRYING_NOTMEAT = "You can't tell me how to dry cosas.",
            DRYINGINRAIN_NOTMEAT = "It is neither dry nor wet.",
        },
        MEAT_DRIED = "It's like a shoe sole.",
        MERM = "A walking pejelagarto!",
        MERMHEAD =
        {
            GENERIC = "Not even a pejelagarto deserves this!",
            BURNT = "It's like a pejelagarto skewer.",
        },
        MERMHOUSE =
        {
            GENERIC = "If you see a balloon, don't approach it.",
            BURNT = "I am not afraid of you!",
        },
        MINERHAT = "Ok this can help my wax.",
        MONKEY = "Oh un chango!",
        MONKEYBARREL = "Soy el único who sees something extraño about this?",
        MONSTERLASAGNA = "Can you repeat what meat this was made of?",
        FLOWERSALAD = "Pedí a salad not a plant.",
        ICECREAM = "let's cool it down a little, nena.",
        WATERMELONICLE = "A vegan ice cream!",
        TRAILMIX = "For a bad stomach my abuelita said",
        HOTCHILI = "This really got spicy, nena!",
        GUACAMOLE = "Bring me some Doritos!",
        MONSTERMEAT = "Ugh. Are you sure it's an exotic animal?",
        MONSTERMEAT_DRIED = "This is a shoe sole, don't fool me",
        MOOSE = "So you're a goose with antlers or a goose-shaped moose?",
        MOOSE_NESTING_GROUND = "Might be good for a siesta.",
        MOOSEEGG = "Now that's a lot of proteina nena!",
        MOSSLING = "The protein is alive!",
        FEATHERFAN = "I needed to lower my calentón",
        MINIFAN = "I need five more of these to lower my calentón.",
        GOOSE_FEATHER = "Se vería good on a hat on me?",
        STAFF_TORNADO = "You spin me round, nena!",
        MOSQUITO =
        {
            GENERIC = "I can crush you just with my breath.",
            HELD = "You know I don't have sangre, right?",
        },
        MOSQUITOSACK = "Wait nena, this is not mine!",
        MOUND =
        {
            DUG = "Bueno you don't need it anymore, nena.",
            GENERIC = "What or who will be there?",
        },
        NIGHTLIGHT = "My little light at night looked like this.",
        NIGHTMAREFUEL = "Is my shadow black?!",
        NIGHTSWORD = "Solo esto is stronger than my arms.",
        NITRE = "Es una sick stone.",
        ONEMANBAND = "I can do it alone, leave me nena.",
        OASISLAKE =
		{
			GENERIC = "Nena, were you here?",
			EMPTY = "My nena was definitely not here.",
		},
        PANDORASCHEST = "It may have a lot of cera inside.",
        PANFLUTE = "Oh una flauta de banda peruana!",
        PAPYRUS = "Is there no love letter here, nena?.",
        WAXPAPER = "Wax waste!",
        PENGUIN = "Cuántos penguins rabiosos can you fight?!",
        PERD = "Vas a ser mi dinner if you keep messing with my bayas!",
        PEROGIES = "I need like five of these!",
        PETALS = "Me ama... no me ama.",
        PETALS_EVIL = "Definitely no me ama.",
        PHLEGM = "No just no.",
        PICKAXE = "Reminds me of other times",
        PIGGYBACK = "Not even this can handle my back, nena!",
        PIGHEAD =
        {
            GENERIC = "I hope they don't do that to me, they would need more sticks!",
            BURNT = "That is a great skewer.",
        },
        PIGHOUSE =
        {
            FULL = "Estoy seguro there are many nenas inside waiting.",
            GENERIC = "And I can't have one like that?",
            LIGHTSOUT = "Do you need light? I am a very good and handsome light!",
            BURNT = "You have to look for good candles, no las baratas!",
        },
        PIGKING = "Puedes ser my gym project!",
        PIGMAN =
        {
            DEAD = "Crees que he had a family?",
            FOLLOWER = "I want the nenas to follow me, but it starts with something.",
            GENERIC = "Do you have a prima o algo?",
            GUARD = "Can you play arm wrestling with me?",
            WEREPIG = "Seguro que you don't want a change of hairstyle?",
        },
        PIGSKIN = "Qué parte of your skin is this?",
        PIGTENT = "It smells like panceta!",
        PIGTORCH = "I don't want to be that torch.",
        PINECONE = "A pine egg!",
        PINECONE_SAPLING = "You will give me a lot of wood!",
        LUMPY_SAPLING = "These trees are magic, nena!",
        PITCHFORK = "I am the torch of this angry mob.",
        PLANTMEAT = "Are you vegan, nena?",
        PLANTMEAT_COOKED = "For my favorite vegana!",
        PLANT_NORMAL =
        {
            GENERIC = "Abuelita's yuyo.",
            GROWING = "Abuelita didn't tell me this was taking so long!",
            READY = "Just like abuelita told me.",
            WITHERED = "How is the sun also bad?!",
        },
        POMEGRANATE = "So this is what a cerebro looks like.",
        POMEGRANATE_COOKED = "Cerebros are not my favorite dish.",
        POMEGRANATE_SEEDS = "So brains can be planted?",
        POND = "Un buen lugar for a bath nena?",
        POOP = "I'm going to need a bigger bag!",
        FERTILIZER = "So what did you say this is made of, nena?",
        PUMPKIN = "Would it serve as a pesa?",
        PUMPKINCOOKIE = "It has the essence of abuelita!",
        PUMPKIN_COOKED = "This is a vegan buffet!",
        PUMPKIN_LANTERN = "I can be scary too!",
        PUMPKIN_SEEDS = "Some heavy seeds.",
        PURPLEAMULET = "Nena are you in there?",
        PURPLEGEM = "I hear my nena's voice.",
        RABBIT =
        {
            GENERIC = "Necesito new boots.",
            HELD = "We can make those boots por las buenas o por las malas.",
        },
        RABBITHOLE =
        {
            GENERIC = "The dejaré if you take me to your leader",
            SPRING = "I think boots are out of season, nena!",
        },
        RAINOMETER =
        {
            GENERIC = "Una lluvia de belleza is predicted!",
            BURNT = "I don't think he predicted that.",
        },
        RAINCOAT = "Keeps me dry so you can take care of it nena.",
        RAINHAT = "Keeps mi mecha dry.",
        RATATOUILLE = "This is for my vegetarian nena.",
        RAZOR = "With this I could carve me a beard",
        REDGEM = "This gives me hotness nena!",
        RED_CAP = "A familiar shape, nena.",
        RED_CAP_COOKED = "It's not always good to cook these cosas.",
        RED_MUSHROOM =
        {
            GENERIC = "It's a honguito.",
            INGROUND = "Honguito's taking a siesta.",
            PICKED = "Honguito left us",
        },
        REEDS =
        {
            BURNING = "I don't think it's good to inhale that smoke!",
            GENERIC = "Hey this could help a hermosa vela like me.",
            PICKED = "I need more, crece ya!",
        },
        RELIC = "Mi abuelita must know this.",
        RUINS_RUBBLE = "Todo can be fixed with these hermosos brazos.",
        RUBBLE = "I didn't break this!",
        RESEARCHLAB =
        {
            GENERIC = "Don't break down for me, nena!",
            BURNT = "No aguantó el calentón, nena.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "I put cosa here and cositas come out?",
            BURNT = "Too hot for you nena?",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "Where's my cosa, nena?",
            BURNT = "Someone is going against ciencia!",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "I'll call you Cosa Three Thousand!",
            BURNT = "I think that fire does not solve everything.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "You remind me of someone who has no estilo.",
            BURNT = "Creo it has less estilo now, si eso es posible",
        },
        RESURRECTIONSTONE = "Nada can bring me down, nena, but just in case...",
        ROBIN =
        {
            GENERIC = "Eso significa que winter is gone?",
            HELD = "You want my heat, nena!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "So you don't like hot, nena.",
            HELD = "Podría hacer some gloves with you",
        },
        ROBOT_PUPPET = "Te tengo!",
        ROCK_LIGHT =
        {
            GENERIC = "Pensaste you would be hotter than me?.",
            OUT = "It doesn't seem very safe!",
            LOW = "I better go.",
            NORMAL = "Sólo hay something hotter than me.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "Just one? I can handle ten more, nena!",
            RAISED = "Hey give me that, nena.",
        },
        ROCK = "Puedo llevar a stack of these.",
        PETRIFIED_TREE = "Estás un poco duro.",
        ROCK_PETRIFIED_TREE = "Estás un poco duro.",
        ROCK_PETRIFIED_TREE_OLD = "Estás un poco duro.",
        ROCK_ICE =
        {
            GENERIC = "You're cold nena!",
            MELTED = "You can't stand my heat!",
        },
        ROCK_ICE_MELTED = "You won't be able to freeze if I stay here nena!",
        ICE = "You're cold nena!",
        ROCKS = "Puedo llevar a stack of these.",
        ROOK = "Who hurt you so much compa?",
        ROPE = "This is a cuerda.",
        ROTTENEGG = "Huele peor than me at the gym.",
        ROYAL_JELLY = "Es buena for hair!",
        JELLYBEAN = "Entonces they are not real seeds?",
        SADDLE_BASIC = "Do you want to try it nena?",
        SADDLE_RACE = "It makes me feel like Francesco!",
        SADDLE_WAR = "Big battle Fido!",
        SADDLEHORN = "After a day of work for big Fido.",
        SALTLICK = "To train the tongue, nena!",
        BRUSH = "Espero big Fido likes it.",
		SANITYROCK =
		{
			ACTIVE = "Una roca loca!",
			INACTIVE = "Even the rocas have to rest.",
		},
		SAPLING =
		{
			BURNING = "The skinny burns!",
			WITHERED = "Flaco couldn't stand the heat.",
			GENERIC = "You're skinny!",
			PICKED = "Eso le enseñará not to look at my nena.",
			DISEASED = "Flaco doesn't look good.",
			DISEASING = "Skinny decayó!",
		},
   		SCARECROW = 
   		{
			GENERIC = "This compa really has style!",
			BURNING = "Alguien was very envious of him!",
			BURNT = "Mataron a un inocente.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "No necesito tools to sculpt stones.",
			BLOCK = "Sculpt me nena!",
			SCULPTURE = "It's not me, but it's not bad.",
			BURNT = "I told you that you should sculpt me.",
   		},
        SCULPTURE_KNIGHTHEAD = "Perdiste your mind?",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "It must be some kind of statue of me?",
			UNCOVERED = "No aguantó la presión.",
			FINISHED = "Well in the end it wasn't me.",
			READY = "No, that's not me!",
		},
        SCULPTURE_BISHOPHEAD = "Where is your body, altote?",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It could be a estatua.",
			UNCOVERED = "It is taking shape.",
			FINISHED = "Qué sigue? Should I appreciate it?",
			READY = "Altote moves?",
		},
        SCULPTURE_ROOKNOSE = "How much damage did they do to you?",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "Maybe something can be recovered from this statue.",
			UNCOVERED = "Just a couple of tweaks left",
			FINISHED = "It's all done, compa.",
			READY = "He wants to take over the nenas!",
		},
        GARGOYLE_HOUND = "So here you were Fido.",
        GARGOYLE_WEREPIG = "Does my beauty petrify you, nena?",
		SEEDS = "This is how bebés are made?",
		SEEDS_COOKED = "Where is the bebé now?!",
		SEWING_KIT = "Nena, do you know how to use this?",
		SEWING_TAPE = "I know how to use this!",
		SHOVEL = "Oh no virgencita.",
		SILK = "Perfecto for a robe.",
		SKELETON = "You're in the bones compa!",
		SCORCHED_SKELETON = "Un poco más and you'll be oil.",
		SKULLCHEST = "I should open it right?",
		SMALLBIRD =
		{
			GENERIC = "Hijo?",
			HUNGRY = "The chamaco is hungry.",
			STARVING = "Nena, feed the chamaco!",
			SLEEPING = "He learned the gift of the siesta.",
		},
		SMALLMEAT = "Don't look at this, nena.",
		SMALLMEAT_DRIED = "Un poco duro.",
		SPAT = "Reminds me of my abuelita.",
		SPEAR = "Sometimes it takes more than my strong arms.",
		SPEAR_WATHGRITHR = "I'm sure puedo pararla con el pecho.",
		WATHGRITHRHAT = "Are you sure I can't use otra cosa?",
		SPIDER =
		{
			DEAD = "I told you you wouldn't like the chancla.",
			GENERIC = "Don't scare my nena!",
			SLEEPING = "I better crush him before he wakes up.",
		},
		SPIDERDEN = "Look how much silk, nena!",
		SPIDEREGGSACK = "Puedo take care of it so it doesn't bite me?.",
		SPIDERGLAND = "It looks like a skin care.",
		SPIDERHAT = "This will be the latest fashion, nena.",
		SPIDERQUEEN = "I'll have to call my abuelita!",
		SPIDER_WARRIOR =
		{
			DEAD = "I told you you weren't tan malo.",
			GENERIC = "Me mira de pesado with all his eyes.",
			SLEEPING = "You're not so malo while you're asleep.",
		},
		SPOILED_FOOD = "That green stuff is mint right?",
        STAGEHAND =
        {
			AWAKE = "You are a extraño Fido.",
			HIDING = "Just a good table for romantic dates, nena!",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "Me pregunto cuándo they will make one of me.",
            TYPE1 = "Me estás siguiendo with your eyes?",
            TYPE2 = "Es muy... estatuoso.",
            TYPE3 = "Quién left this here?", --bird bath type statue
        },
		STATUEHARP = "Do you feel the little angels, nena?",
		STATUEMAXWELL = "This guy is not that tall!",
		STEELWOOL = "Abuelita used this to clean the dishes.",
		STINGER = "Do you want acupuncture, nena?",
		STRAWHAT = "The ranch style suits me well.",
		STUFFEDEGGPLANT = "Yes it's full, nena!",
		SWEATERVEST = "Do I look l-egant nena?",
		REFLECTIVEVEST = "This is really shining, nena!",
		HAWAIIANSHIRT = "Time to go to Vice.",
		TAFFY = "Sweet like you nena.",
		TALLBIRD = "Hit your knees!",
		TALLBIRDEGG = "Mira el tamaño de esos huevos!",
		TALLBIRDEGG_COOKED = "Big and delicious, nena",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "I think he needs a abrazo.",
			GENERIC = "No me rompas los huevos!",
			HOT = "Come on son, you have to resist with the calentón.",
			LONG = "Entonces just have to sit and wait?",
			SHORT = "Espera I think I hear it!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Mira el tamaño de esos huevos!",
			PICKED = "So the egg grew feet and ran away?",
		},
		TEENBIRD =
		{
			GENERIC = "Espero you are not in your rebellious stage.",
			HUNGRY = "No estás bastante grandecito to eat for yourself?",
			STARVING = "Siempre need your father to eat.",
			SLEEPING = "A good siesta, you learned well son.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "So with this I don't have to do leg day?",
			GENERIC = "I hope I don't return to my aburrido mundo.",
			LOCKED = "Where did I leave that cosa?",
			PARTIAL = "We can almost go to Europe!",
		},
		TELEPORTATO_BOX = "I don't think it's a good idea to touch the lever.",
		TELEPORTATO_CRANK = "It's definitely a scientific cosa.",
		TELEPORTATO_POTATO = "So I can't eat it?",
		TELEPORTATO_RING = "Do you think my nena likes it like a ring?",
		TELESTAFF = "How can this not take me to Europe?",
		TENT = 
		{
			GENERIC = "Perfect for an outdoor siesta, nena.",
			BURNT = "I think we went too far, nena.",
		},
		SIESTAHUT = 
		{
			GENERIC = "El único heat I want during siesta is ours, nena.",
			BURNT = "I think we went too far, nena.",
		},
		TENTACLE = "Nena, you better stay away from that.",
		TENTACLESPIKE = "Can you imagine if my arms had spikes?",
		TENTACLESPOTS = "Dots are still in fashion?",
		TENTACLE_PILLAR = "Are you sure that's not alive?",
        TENTACLE_PILLAR_HOLE = "I've gotten into some weird places.",
		TENTACLE_PILLAR_ARM = "Oh a mini pervert.",
		TENTACLE_GARDEN = "Este is also alive I'm sure.",
		TOPHAT = "Que elegancia, nena.",
		TORCH = "We don't need another chispa, nena.",
		TRANSISTOR = "I feel heat in my hands.",
		TRAP = "With this my nenas won't run away.",
		TRAP_TEETH = "Nenas, you won't be able to run away from me.",
		TRAP_TEETH_MAXWELL = "Nenas, you better not step there.",
		TREASURECHEST = 
		{
			GENERIC = "Perfecto para guardar my wax or clothes.",
			BURNT = "Espero I got everything out before.",
		},
		TREASURECHEST_TRAP = "Nena, did you do this?",
		SACRED_CHEST = 
		{
			GENERIC = "It would be a nice joyero.",
			LOCKED = "Alguien doesn't want me to touch their joyas.",
		},
		TREECLUMP = "Wait wait let me try again I know I can move it!",
		
		TRINKET_1 = "Do you want to play with my canicas, nena?", --Melted Marbles
		TRINKET_2 = "I dedicate a serenade to you nena.", --Fake Kazoo
		TRINKET_3 = "Hey that's a good nudo.", --Gord's Knot
		TRINKET_4 = "One of these decorates my abuelita's house", --Gnome
		TRINKET_5 = "Will I take you to the moon, nena?", --Toy Rocketship
		TRINKET_6 = "They say that a kilo of cobre is expensive.", --Frazzled Wires
		TRINKET_7 = "Podría sacarme a beautiful tooth with this.", --Ball and Cup
		TRINKET_8 = "This is from our jacuzzi nena.", --Rubber Bung
		TRINKET_9 = "My abuelita was looking for this.", --Mismatched Buttons
		TRINKET_10 = "Abuelita I found this!", --Dentures
		TRINKET_11 = "Compa if I came to life you too.", --Lying Robot
		TRINKET_12 = "One of those pervertidos disecado.", --Dessicated Tentacle
		TRINKET_13 = "One of these decorates my abuelita's house.", --Gnomette
		TRINKET_14 = "Now I have to look for the kettle", --Leaky Teacup
		TRINKET_15 = "A little soldier.", --Pawn
		TRINKET_16 = "A little soldier.", --Pawn
		TRINKET_17 = "Es un cuchador!", --Bent Spork
		TRINKET_18 = "I know they are in there.", --Trojan Horse
		TRINKET_19 = "Dejame try to spin it.", --Unbalanced Top
		TRINKET_20 = "Perfecto para my strong arms.", --Backscratcher
		TRINKET_21 = "This is from abuelita's kitchen.", --Egg Beater
		TRINKET_22 = "Can you knit me something with this, nena?", --Frayed Yarn
		TRINKET_23 = "Perfect for my new leather boots.", --Shoehorn
		TRINKET_24 = "It floods me with luck.", --Lucky Cat Jar
		TRINKET_25 = "Conozco better smelling velas.", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "El agua tastes strange in this.", --Coat Hanger
		TRINKET_28 = "El rey, no misterio.", --Rook
        TRINKET_29 = "El rey, no misterio.", --Rook
        TRINKET_30 = "Yijaa.", --Knight
        TRINKET_31 = "Yijaa.", --Knight
        TRINKET_32 = "So I can't kick it?", --Cubic Zirconia Ball
        TRINKET_33 = "Esto no give me superpowers.", --Spider Ring
        TRINKET_34 = "What bony fingers.", --Monkey Paw
        TRINKET_35 = "Did you cast a spell on me with this, nena?.", --Empty Elixir
        TRINKET_36 = "I can be your Edward, nena.", --Faux fangs
        TRINKET_37 = "Debería repararlo just in case.", --Broken Stake
        TRINKET_38 = "To watch my nenas.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "What are we going to wash?", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Where was the lava?", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "I thought it was real!", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Oh it's like a Fido.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "This has no nieve.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "Tune in to Big balls of fire, nena!", -- Odd Radio ONI trinket
        TRINKET_46 = "Don't point that at my face!", -- Hairdryer ONI trinket
        
        HALLOWEENCANDY_1 = "No puedo arruinar my beautiful teeth.",
        HALLOWEENCANDY_2 = "I think it's frutilla?",
        HALLOWEENCANDY_3 = "Maybe it's banana?",
        HALLOWEENCANDY_4 = "As sweet as you, nena.",
        HALLOWEENCANDY_5 = "Did anyone find a toothbrush?",
        HALLOWEENCANDY_6 = "You don't have to eat too much or you'll get nightmares, nena.",
        HALLOWEENCANDY_7 = "I think it's limón.",
        HALLOWEENCANDY_8 = "Esto... está duro.",
        HALLOWEENCANDY_9 = "I chew it for you, nena?",
        HALLOWEENCANDY_10 = "Suck it, nena... El dulce.",
        HALLOWEENCANDY_11 = "What did you say they are made of?",
        HALLOWEENCANDY_12 = "Hey that's alive!", --ONI meal lice candy
        HALLOWEENCANDY_13 = "I think my jaw will grow after this.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Mhh tamarindo?", --Hot Lava pepper candy
        CANDYBAG = "Who ate one?",

		HALLOWEEN_ORNAMENT_1 = "oooOooO...",
		HALLOWEEN_ORNAMENT_2 = "Are you revenge?",
		HALLOWEEN_ORNAMENT_3 = "It looks real right, nena?", 
		HALLOWEEN_ORNAMENT_4 = "Be careful who you touch.",
		HALLOWEEN_ORNAMENT_5 = "Hey spidey!",
		HALLOWEEN_ORNAMENT_6 = "A good decoration for a Gothic Christmas.", 

		HALLOWEENPOTION_DRINKS_WEAK = "Today we are not for strong things.",
		HALLOWEENPOTION_DRINKS_POTENT = "Today I want something potentoso",
        HALLOWEENPOTION_BRAVERY = "I do not feel anything.",
		HALLOWEENPOTION_MOON = "I feel the moon in every sip.",
		HALLOWEENPOTION_FIRE_FX = "Infierno in a bottle.", 
		MADSCIENCE_LAB = "This drives me loco, nena!",
		LIVINGTREE_ROOT = "I think this really is a bebé.", 
		LIVINGTREE_SAPLING = "I think he said papa",

        DRAGONHEADHAT = "I thought scales were only for boots.",
        DRAGONBODYHAT = "Did this look good on my nena?",
        DRAGONTAILHAT = "Don't touch that nena!",
        PERDSHRINE =
        {
            GENERIC = "Qué quieres de mi?",
            EMPTY = "I notice it somewhat empty.",
            BURNT = "Nunca told me what he wanted.",
        },
        REDLANTERN = "There is no better ambient than a luz roja, nena.",
        LUCKY_GOLDNUGGET = "Hey a coin! ah no.",
        FIRECRACKERS = "Time to celebrate my beauty, nena!",
        PERDFAN = "Fan me nena.",
        REDPOUCH = "Please let it be wax!",
        WARGSHRINE = 
        {
            GENERIC = "Should I turn it on?",
            EMPTY = "I need some chispa.",
            BURNING = "I think it was a lot of chispa.", --for willow to override
            BURNT = "I think it was too much Chispa.",
        },
        CLAYWARG = 
        {
        	GENERIC = "Now that's a big bad Fido!",
        	STATUE = "Mi belleza paralyzes even the greatest.",
        },
        CLAYHOUND = 
        {
        	GENERIC = "Bad Fido is back!",
        	STATUE = "Bad Fido was petrified.",
        },
        HOUNDWHISTLE = "What are you saying nena?",
        CHESSPIECE_CLAYHOUND = "I don't think this piece is allowed.",
        CHESSPIECE_CLAYWARG = "Who's growling now?",

		PIGSHRINE =
		{
            GENERIC = "No pienses that I will give you my cera.",
            EMPTY = "Oh you wanted meat?",
            BURNT = "That's for taking my cera!",
		},
		PIG_TOKEN = "Podría quedar bien in one of my outfits.",
		PIG_COIN = "Is this payment for me?",
		YOTP_FOOD1 = "That cosa is looking at me.",
		YOTP_FOOD2 = "It's not a very good guiso.",
		YOTP_FOOD3 = "Everything tastes good if it's on a palo.",

		PIGELITE1 = "What do you see, Azulcito?", --BLUE
		PIGELITE2 = "Are you suffocating?", --RED
		PIGELITE3 = "You are one of those albinos.", --WHITE
		PIGELITE4 = "You are sick, compa!", --GREEN

		PIGELITEFIGHTER1 = "What do you see, Azulcito?", --BLUE
		PIGELITEFIGHTER2 = "Are you suffocating?", --RED
		PIGELITEFIGHTER3 = "You are one of those albinos.", --WHITE
		PIGELITEFIGHTER4 = "You are sick, compa!", --GREEN

		BISHOP_CHARGE_HIT = "Ay!",
		TRUNKVEST_SUMMER = "A vest never hurts, except if it's hot.",
		TRUNKVEST_WINTER = "Warm like you, nena.",
		TRUNK_COOKED = "Imagina eating your nose.",
		TRUNK_SUMMER = "Do you think you could cool me down with this?.",
		TRUNK_WINTER = "Can I use it as a scarf?",
		TUMBLEWEED = "Find some wax for me!",
		TURKEYDINNER = "I told you you shouldn't eat my ballas.",
		TWIGS = "Son palitos.",
		UMBRELLA = "Do I hold your umbrella nena?",
		GRASS_UMBRELLA = "Baby your umbrella is leaking.",
		UNIMPLEMENTED = "Hey hey what is that? I'm not going to touch it!",
		WAFFLES = "Desayuno de reyes.",
		WALL_HAY = 
		{	
			GENERIC = "So shouldn't I blow it?",
			BURNT = "I knew I wasn't that tough.",
		},
		WALL_HAY_ITEM = "I'm sure it won't last.",
		WALL_STONE = "Almost as firm as me.",
		WALL_STONE_ITEM = "Almost as firm as me.",
		WALL_RUINS = "As firm as me or more.",
		WALL_RUINS_ITEM = "As firm as me or more.",
		WALL_WOOD = 
		{
			GENERIC = "I think it's not a bad idea!",
			BURNT = "Ok yes it was a bad idea.",
		},
		WALL_WOOD_ITEM = "I think it's not a bad idea!",
		WALL_MOONROCK = "How elegant, nena!",
		WALL_MOONROCK_ITEM = "Elegant and firm, como yo.",
		FENCE = "You won't be able to hold me.",
        FENCE_ITEM = "You won't be able to hold me.",
        FENCE_GATE = "You really won't be able to keep me, door.",
        FENCE_GATE_ITEM = "You really won't be able to keep me, door.",
		WALRUS = "Are you in the volume stage compa?",
		WALRUSHAT = "I was envious of his style.",
		WALRUS_CAMP =
		{
			EMPTY = "I know a camp when I see one.",
			GENERIC = "It looks comfortable for both of us, nena.",
		},
		WALRUS_TUSK = "Not a cavity.",
		WARDROBE = 
		{
			GENERIC = "They finally bring my clothes, nena.",
            BURNING = "Nena, you took out all my clothes right?",
			BURNT = "Did my chaqueta de cuero burn?",
		},
		WARG = "That is a very very bad Fido",
		WASPHIVE = "I think there are mangangás there, nena.",
		WATERBALLOON = "Wet t-shirt fight, nena?",
		WATERMELON = "Jugosa sandía.",
		WATERMELON_COOKED = "No sé if it's the best combination.",
		WATERMELONHAT = "It feels so refreshing and disgusting",
		WAXWELLJOURNAL = "This does have dibujitos.",
		WETGOOP = "Insípido tu goop",
        WHIP = "Nena, do you like this?",
		WINTERHAT = "Style and warmth, nena",
		WINTEROMETER = 
		{
			GENERIC = "I think you don't get my heat.",
			BURNT = "I told you you didn't get my heat.",
		},

        WINTER_TREE =
        {
            BURNT = "Bueno this is sad, nena.",
            BURNING = "The spirit of Winter is on fire!",
            CANDECORATE = "Felíz Winter's Feast!",
            YOUNG = "Ya casi Winter's Feast!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "I think we need a árbol.",
            BURNT = "Bueno this is sad, nena.",
		},
        WINTER_ORNAMENT = "There are never enough chirimbolos.",
        WINTER_ORNAMENTLIGHT = "Nena, would you hook up these lights for me?",
        WINTER_ORNAMENTBOSS = "That is a decoration!",
		WINTER_ORNAMENTFORGE = "I think this would need fire.",
		WINTER_ORNAMENTGORGE = "I think I would like to have some food.",

        WINTER_FOOD1 = "Sus botones de gomita.", --gingerbread cookie
        WINTER_FOOD2 = "How abuelita made them.", --sugar cookie
        WINTER_FOOD3 = "Do you want one nena?", --candy cane
        WINTER_FOOD4 = "Ugh it has fruit inside...", --fruitcake
        WINTER_FOOD5 = "It's not really a log, right?", --yule log cake
        WINTER_FOOD6 = "Mi puddin!", --plum pudding
        WINTER_FOOD7 = "This is not real sidra!", --apple cider
        WINTER_FOOD8 = "Do you like chocolate baby?", --hot cocoa
        WINTER_FOOD9 = "So it's egg juice?", --eggnog

        KLAUS = "What kind of Papa Noel are you?!",
        KLAUS_SACK = "How many nenas will be inside?",
		KLAUSSACKKEY = "Which nena dropped this?",
		WORMHOLE =
		{
			GENERIC = "Am I supposed to go in there?",
			OPEN = "She definitely wants me to enter",
		},
		WORMHOLE_LIMITED = "I'm not going to get into this one!",
		ACCOMPLISHMENT_SHRINE = "Nena I assure you that I am going to use it.",        
		LIVINGTREE = "You are a strange nena.",
		ICESTAFF = "This lowers my temperature nena.",
		REVIVER = "My heart can bring any nena to life.",
		SHADOWHEART = "The heart of a nena gótica.",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "Parece like people were having a bad time.",
			LINE_2 = "This table gets a lot of use, nena.",
			LINE_3 = "The darkness tormented the gente.",
			LINE_4 = "People shed their skin like serpientes.",
			LINE_5 = "A huge city with many advances.",
		},
        ATRIUM_STATUE = "It is real?",
        ATRIUM_LIGHT = 
        {
			ON = "You are not handsome like me.",
			OFF = "Need some chispa.",
		},
        ATRIUM_GATE =
        {
			ON = "A laburar.",
			OFF = "I think this could still work.",
			CHARGING = "It's gaining chispa!",
			DESTABILIZING = "Gotta keep it stable nena.",
			COOLDOWN = "We both need a siesta.",
        },
        ATRIUM_KEY = "This has other vibras.",
		LIFEINJECTOR = "You are my adrenaline, nena!",
		SKELETON_PLAYER =
		{
			MALE = "%s do you need to eat something?",
			FEMALE = "%s can I help you nena?.",
			ROBOT = "%s your wires got crossed.",
			DEFAULT = "%s do you need arms to lift you up?",
		},
		HUMANMEAT = "Well it's not cannibalism if I'm a vela.",
		HUMANMEAT_COOKED = "Do you want me to describe its taste, nena?",
		HUMANMEAT_DRIED = "It doesn't look human anymore.",
		ROCK_MOON = "Did you arrive on this rock, nena?",
		MOONROCKNUGGET = "Did you bring this rock nena?",
		MOONROCKCRATER = "Parece haber something lujoso in the bottom.",
		MOONROCKSEED = "Is this to create nenas?",

        REDMOONEYE = "Conozco that look, nena.",
        PURPLEMOONEYE = "Puedes parar de looking at me nena?",
        GREENMOONEYE = "Creo you need to take a good vistazo at this.",
        ORANGEMOONEYE = "My abuelita's glass eye.",
        YELLOWMOONEYE = "The all-seeing eye.",
        BLUEMOONEYE = "Pretty blue ojos like mine.",

        --Arena Event
        LAVAARENA_BOARLORD = "I think that's the patrón.",
        BOARRIOR = "Crees que you're badder than me?",
        BOARON = "I can crush you fácil!",
        PEGHOOK = "Hey hey don't spit!",
        TRAILS = "My arms are stronger and beautiful.",
        TURTILLUS = "Not even those spikes will save you.",
        SNAPPER = "Do you want a taste of this?",
		RHINODRILL = "Get that nose away from me.",
		BEETLETAUR = "I'm lucky I don't have a nose.",

        LAVAARENA_PORTAL = 
        {
            ON = "Well, time to laburar.",
            GENERIC = "I need to go back to my nenas.",
        },
        LAVAARENA_KEYHOLE = "It needs a llave.",
		LAVAARENA_KEYHOLE_FULL = "That will be enough.",
        LAVAARENA_BATTLESTANDARD = "Todos, break the Battle Standard!",
        LAVAARENA_SPAWNER = "So from here they come, nena.",

        HEALINGSTAFF = "I feel like new!",
        FIREBALLSTAFF = "Great balls of fire.",
        HAMMER_MJOLNIR = "I hope I am worthy.",
        SPEAR_GUNGNIR = "Another weapon to decorate these great arms.",
        BLOWDART_LAVA = "I don't think it would be a good idea to swallow it.",
        BLOWDART_LAVA2 = "I don't think it would be a good idea to swallow it.",
        LAVAARENA_LUCY = "My beautiful arms can throw this.",
        WEBBER_SPIDER_MINION = "The niño introduced us to his friends.",
        BOOK_FOSSIL = "It doesn't say anything about oil.",
		LAVAARENA_BERNIE = "Perfect precision",
		SPEAR_LANCE = "Time to practice aiming.",
		BOOK_ELEMENTAL = "It doesn't have dibujitos but I can use it.",
		LAVAARENA_ELEMENTAL = "You are a tipo duro?.",

   		LAVAARENA_ARMORLIGHT = "Light but won't last long my arms.",
		LAVAARENA_ARMORLIGHTSPEED = "light and with good mobility for my arms.",
		LAVAARENA_ARMORMEDIUM = "More hardness for my body.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "More strength for my hands.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'm recharged, nena!",
		LAVAARENA_ARMORHEAVY = "It's still light!",
		LAVAARENA_ARMOREXTRAHEAVY = "I barely notice its weight!",

		LAVAARENA_FEATHERCROWNHAT = "Don't you feel the speed of the pluma nena?",
        LAVAARENA_HEALINGFLOWERHAT = "My macho flower makes me feel good.",
        LAVAARENA_LIGHTDAMAGERHAT = "Feel my arms, nena!",
        LAVAARENA_STRONGDAMAGERHAT = "Feel my fists, nena!",
        LAVAARENA_TIARAFLOWERPETALSHAT = "This macho tiara really makes me feel good.",
        LAVAARENA_EYECIRCLETHAT = "It makes me feel more scientific.",
        LAVAARENA_RECHARGERHAT = "These crystals align the chakras.",
        LAVAARENA_HEALINGGARLANDHAT = "This takes away my macho a little bit but it feels perfect.",
        LAVAARENA_CROWNDAMAGERHAT = "Time to smash, nena!",

		LAVAARENA_ARMOR_HP = "I needed it.",

		LAVAARENA_FIREBOMB = "Smells like danger.",
		LAVAARENA_HEAVYBLADE = "Is it another shaver?",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",
		
        QUAGMIRE_HOE = "It's a farming instrument.",
        
        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",
        
		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
        QUAGMIRE_POT = "This one holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},
		
		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "Cosa tirar roca?",
        	OFF = "It needs chispa.",
        	BURNING = "It's on fire, nena!",
        	BURNT = "There's no turning back now, baby.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "It needs chispa.",
        	BURNING = "It's on fire, nena!",
        	BURNT = "There's no turning back now, baby.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "Looks science-y. How does it work?",
        	LOWPOWER = "It needs more chispa.",
        	OFF = "It needs chispa.",
        	BURNING = "It's on fire, nena!",
        	BURNT = "There's no turning back now, baby.",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "Hey! That's not science!",
        	LOWPOWER = "It needs more chispa.",
        	OFF = "It needs chispa.",
        	BURNING = "It's on fire, nena!",
        	BURNT = "There's no turning back now, baby.",
        },

        --Wormwood
        COMPOSTWRAP = "Not suitable for velas.",
        ARMOR_BRAMBLE = "There is no better defensa than a good ataque.",
        TRAP_BRAMBLE = "Be careful nenas, don't step on this!.",

        BOATFRAGMENT03 = "Where it goes?",
        BOATFRAGMENT04 = "Where it goes?",
        BOATFRAGMENT05 = "Where it goes?",
		BOAT_LEAK = "This needs a curita!",
        MAST = "Will it work if I blow?",
        SEASTACK = "Piedra a la vista!",
        FISHINGNET = "To catch mermaids nenas!",
        ANTCHOVIES = "Do I have to return it?",
        STEERINGWHEEL = "Nena don't touch that.",
        ANCHOR = "I'm sure I can stop it.",
        BOATPATCH = "Bote curita.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "It's ironic that it burned.",
            BURNT = "It's ironic that it burned.",
            CHOPPED = "Take that, dry!",
            GENERIC = "It's dry but wet.",
        },

        DRIFTWOOD_LOG = "It's dry but wet.",

        MOON_TREE = 
        {
            BURNING = "The fatty turned on.",
            BURNT = "That really turned on well.",
            CHOPPED = "I cut your fatty.",
            GENERIC = "A fatty tree!",
        },
		MOON_TREE_BLOSSOM = "I knew you had something to hide.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "You would look beautiful as a brooch for my nena.",
        	HELD = "Now to look for a brooch.",
        },
		MOONBUTTERFLYWINGS = "Does this give me wings?",
        MOONBUTTERFLY_SAPLING = "Pero... wasn't it a moth?",
        ROCK_AVOCADO_FRUIT = "Mhh fibroso.",
        ROCK_AVOCADO_FRUIT_RIPE = "Perfect for sharpening my teeth.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Now even if it is edible.",
        ROCK_AVOCADO_FRUIT_SPROUT = "Come back to my hard aguacate.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "Entonces you've already reached that age.",
			WITHERED = "You can't stand mi calentón either, aguacate?",
			GENERIC = "It's just a bush, but more lunar, nena.",
			PICKED = "Don't make me wait, nena.",
			DISEASED = "You don't look very good.",
            DISEASING = "I knew you weren't okay.",
			BURNING = "Now that's hot!",
		},
        DEAD_SEA_BONES = "En serio pensaste you could evolve?",
        HOTSPRING = 
        {
        	GENERIC = "Does it look like a good jacuzzi, nena?",
        	BOMBED = "Preparing the jacuzzi.",
        	GLASS = "Where did you put the water, nena?",
			EMPTY = "Nena, did you drink it?",
        },
        MOONGLASS = "A perfect mirror to see my hermosa cara.",
        MOONGLASS_ROCK = "Oh hola guapo, wait it's me.",
        BATHBOMB = "So it's not a real bomba?",
        TRAP_STARFISH =
        {
            GENERIC = "By any chance is your name Patricio?",
            CLOSED = "Patricio wanted to bite me!",
        },
        DUG_TRAP_STARFISH = "Patricio will no longer eat anyone.",
        SPIDER_MOON = 
        {
        	GENERIC = "It wasn't enough for you to have eight legs?",
        	SLEEPING = "Now I can steal your joyas.",
        	DEAD = "And the joyas?",
        },
        MOONSPIDERDEN = "That is a mansion.",
		FRUITDRAGON =
		{
			GENERIC = "It is still very minor.",
			RIPE = "I think he's past his age.",
			SLEEPING = "So tierno while sleeping",
		},
        PUFFIN =
        {
            GENERIC = "It's like a gaviota creo",
            HELD = "I have you annoying seagull give me my cera.",
            SLEEPING = "So peaceful while sleeping.",
        },

		MOONGLASSAXE = "Delicate and efectiva.",
		GLASSCUTTER = "it cuts you off just seeing it.",

        ICEBERG =
        {
            GENERIC = "You're cold, nena.",
            MELTED = "You couldn't stand mi calentón nena.",
        },
        ICEBERG_MELTED = "You couldn't stand mi calentón nena.",

        MINIFLARE = "It's like me but it shines from afar.",

		MOON_FISSURE = 
		{
			GENERIC = "My head hurts nena, you know what I need!", 
			NOLIGHT = "Something wants to show itself, nena.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Help me with this, nena.",
            GENERIC = "What did you say nena?",
        },

        MOON_ALTAR_IDOL = "He's asking me to carry him with my strong arms..",
        MOON_ALTAR_GLASS = "Este lindo espejo doesn't have to be here",
        MOON_ALTAR_SEED = "La semillita wants to be returned to its home.",

        MOON_ALTAR_ROCK_IDOL = "There must be a nena inside.",
        MOON_ALTAR_ROCK_GLASS = "There must be a nena inside.",
        MOON_ALTAR_ROCK_SEED = "There must be a nena inside.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "A getaway to the playa, nena?",
            BURNT = "This wouldn't have happened if there was agua nearby.",
        },
        BOAT_ITEM = "Nena, your captain has arrived",
        STEERINGWHEEL_ITEM = "Nena leave it, I'll take care of it.",
        ANCHOR_ITEM = "This is not necessary if I go into the water.",
        MAST_ITEM = "Did they do this with my manta?",
        MUTATEDHOUND = 
        {
        	DEAD = "Finally that cosa will stop smiling at me.",
        	GENERIC = "Behind my nena, I'll take care of this Fido!",
        	SLEEPING = "It's time, Fido's distracted!",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "There will be no more sequels.",
			GENERIC = "That's not bonito y gordito",
			SLEEPING = "Does that thing sleep?",
		},
        CARRAT = 
        {
        	DEAD = "He will no longer look at me with his carrot eyes.",
        	GENERIC = "I don't think it's hygienic to eat that carrot.",
        	HELD = "Pero que feo por dios.",
        	SLEEPING = "so ugly, it's cute.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "The lettuce of the sea.",
            PICKED = "I'll have to wait for that salad.",
        },
		BULLKELP_ROOT = "Now we can have sea lettuce at home.",
        KELPHAT = "How does freshness look to me, baby?",
		KELP = "The lettuce of the sea.",
		KELP_COOKED = "Mhh dry.",
		KELP_DRIED = "Mhh very dry.",

		GESTALT = "Steam is good for the skin.",

		COOKIECUTTER = "Is that someone or something?",
		COOKIECUTTERSHELL = "I could make myself a buen casco.",
		COOKIECUTTERHAT = "I told you it would be a good casco, nena.",
		SALTSTACK =
		{
			GENERIC = "Shouldn't there be a sirena around here?",
			MINED_OUT = "There can no longer be any sirena.",
			GROWING = "Come on sirenas, come back!",
		},
		SALTROCK = "Largo impulso de idiotez!",
		SALTBOX = "This will take the mint out of the food!",

        MALBATROSS = "That's a big periquito, nena!",
        MALBATROSS_FEATHER = "Now that's a big pluma, nena.",
        MALBATROSS_BEAK = "Imagine everything I could eat, nena.",
        MAST_MALBATROSS_ITEM = "The ship will fly with this.",
        MAST_MALBATROSS = "Now I'm a flight captain, nena.",
		MALBATROSS_FEATHERED_WEAVE = "It would be a good bag, nena.",

        WALKINGPLANK = "Hold on nena",
        OAR = "You need these strong arms for this to work.",
		OAR_DRIFTWOOD = "You need these strong arms for this to work.",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Abuelita guiso time!",
            DONE = "Let's eat nena!",

			COOKING_LONG = "You can make me wait abuelita.",
			COOKING_SHORT = "That's fast food abuelita!",
			EMPTY = "Looks like it's your turn to cook, nena.",
        },
        
        PORTABLEBLENDER_ITEM = "Do you want some batidos?",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "A revolutionary molcajete!",
        SPICE_GARLIC = "I won't eat much or my mouth will stink, nena!",
        SPICE_SUGAR = "This tastes like you nena.",
        SPICE_CHILI = "Pimienta negra recién molida.",
        SPICE_SALT = "A little sodium's good for the heart.",
        MONSTERTARTARE = "I think it's a little better?",
        FRESHFRUITCREPES = "My French nenas would like it.",
        FROGFISHBOWL = "Is this really food?",
        POTATOTORNADO = "This makes me spin, nena.",
        DRAGONCHILISALAD = "It makes me spicy, baby.",
        GLOWBERRYMOUSSE = "I knew that could be eaten!",
        VOLTGOATJELLY = "I recharge my chispa.",
        NIGHTMAREPIE = "Boo! It's a joke, soy yo.",
        BONESOUP = "That's a good caracú!",
        MASHEDPOTATOES = "I wanted an tortilla.",
        POTATOSOUFFLE = "It's still not a tortilla, nena.",
        MOQUECA = "Mhhh a paella.",
        GAZPACHO = "El buen gazpacho.",
        ASPARAGUSSOUP = "Do I really have to eat it, abuelita?",
        VEGSTINGER = "A good protein shake, nena!",
        BANANAPOP = "Everything is well pricked on a palo.",
        CEVICHE = "Can you pass me the lima, nena?",
        SALSA = "Bring some doritos, nena!",
        PEPPERPOPPER = "Ideal for a fake vegan!",

        TURNIP = "Dye everything rojo!",
        TURNIP_COOKED = "Keep staining everything rojo.",
        TURNIP_SEEDS = "Some seeds stained rojo.",
        
        GARLIC = "Nena don't kiss me if you're going to eat that.",
        GARLIC_COOKED = "Espera nena, you can't kiss me yet.",
        GARLIC_SEEDS = "Some fragrant seeds.",
        
        ONION = "You're going to make me cry nena.",
        ONION_COOKED = "I'm not crying, you're crying",
        ONION_SEEDS = "Some crying seeds.",
        
        POTATO = "Finally I will have my tortilla.",
        POTATO_COOKED = "I said I wanted an tortilla.",
        POTATO_SEEDS = "This is where the tortillas come from",
        
        TOMATO = "Red like your face when you see me, nena",
        TOMATO_COOKED = "Sweet and a little bitter.",
        TOMATO_SEEDS = "Sweet seeds, and a little bitter if you cook them.",

        ASPARAGUS = "It's protein but I'm not going to eat it.", 
        ASPARAGUS_COOKED = "Abuelita, I already told you that I'm not going to eat it.",
        ASPARAGUS_SEEDS = "Some seeds that I don't plan to eat.",

        PEPPER = "Spicy and tasty, like me, nena.",
        PEPPER_COOKED = "Now it's hot, nena.",
        PEPPER_SEEDS = "Some very hot seeds.",

        WEREITEM_BEAVER = "These teeth remind me of someone.",
        WEREITEM_GOOSE = "I think I recognize this ganzo.",
        WEREITEM_MOOSE = "Look nena, a statue of you.",

        MERMHAT = "This turns me into a pejelagarto.",
        MERMTHRONE =
        {
            GENERIC = "A good throne for a big pejelagarto.",
            BURNT = "I think the pejelagarto was very hot.",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Do you need help from these strong arms?",
            BURNT = "I told you you would need my help.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "I think a vela could give it the touch.",
            BURNT = "Did you use cheap velas?",
        },

        MERMWATCHTOWER_REGULAR = "What will my beautiful body look like from up there?",
        MERMWATCHTOWER_NOKING = "Do you want a king to guard?",
        MERMKING = "Your disgusting majesty!",
        MERMGUARD = "I don't know if I feel strange or protected...",
        MERM_PRINCE = "Have you ever thought about hiring a vela as a guard?",

    },

    DESCRIBE_GENERIC = "It's a... cosa, nena.",
    DESCRIBE_TOODARK = "Nena I can't see you!",
    DESCRIBE_SMOLDERING = "This is getting hot, nena.",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Son buenos huevos.",
    },
}
