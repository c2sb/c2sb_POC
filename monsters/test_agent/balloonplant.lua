require("/scripts/caos_vm/constants.lua")

--* Script 1 extracted from Balloonplant.agents by Mirality REVELATION

--*The plant itself!

function install()
    --inst
    new_simp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.LEAF, 6205, "BulbBalloon", 0, 0, 4567)
 
    attr(CAOS.ATTRIBUTES.SUFFER_PHYSICS | CAOS.ATTRIBUTES.SUFFER_COLLISIONS)
    elas(0)
    fric(100)
    accg(5)
    perm(70)
    setv(ov03, 1)
    pose(0)
    --mvto 1600 9200
    tick(10)
end

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.LEAF, 6205, CAOS.EVENT.TIMER, function()

    setv(va06, pose())
    for i = 1, 7 do
        wait(rand(120, 400))
        addv(va06, 1)
        pose(getv(va06))
    end

    wait(rand(120, 400))
    setv(va08, posx())
    setv(va09, posy())
    addv(va08, -30)
    addv(va09, -20)
    addv(ov03, 1)
--***************************************************
    new_simp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.PLANT, 6204, "BulbBalloon", 0, 10, 4567)
    attr(CAOS.ATTRIBUTES.SUFFER_PHYSICS | CAOS.ATTRIBUTES.SUFFER_COLLISIONS | CAOS.ATTRIBUTES.MOUSEABLE)
    --bhvr 32
    elas(50)
    fric(50)
    accg(-0.3)
    perm(40)
    pose(0)
    velo(rand(10, -10), rand(-10, -25))
    --mvsf va08 va09
--****************************************************
    targ(ownr())
    pose(8)
    wait(rand(120, 400))
    pose(9)
    wait(200)
    kill(ownr())
end)

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.PLANT, 6204, CAOS.EVENT.COLLIDE, function()
    setv(va10, posx())
    setv(va11, posy())
    addv(va11, 20)
    for i = 1, (rand(5, 7)) do
        pose(0)
        --*this is an edible food blob
  
        --inst
  
        new_simp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.FOOD, 6203, "BulbBalloon", 0, 11, 4567)
  
        attr(CAOS.ATTRIBUTES.SUFFER_PHYSICS | CAOS.ATTRIBUTES.SUFFER_COLLISIONS | CAOS.ATTRIBUTES.MOUSEABLE | CAOS.ATTRIBUTES.CARRYABLE)
        --bhvr 48
        elas(30)
        fric(20)
        accg(2)
        pose(1)
        --mvsf va10 va11
        velo(rand(10, -10), rand(10, -10))
        tick(250)
    end
  
    for i = 1, (rand(5, 7)) do
        --inst
        new_simp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.SEED, 6201, "BulbBalloon", 0, 11, 4567)
  
        attr(CAOS.ATTRIBUTES.SUFFER_PHYSICS | CAOS.ATTRIBUTES.SUFFER_COLLISIONS | CAOS.ATTRIBUTES.MOUSEABLE | CAOS.ATTRIBUTES.CARRYABLE)
        --bhvr 48
        elas(20)
        fric(40)
        accg(2)
        pose(2)
        --mvsf va10 va11
        velo(rand(10, -10), rand(0, 10))
        tick(rand(0, 250))
    end
    kill(ownr())
end)

--scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.FOOD, 6203, CAOS.EVENT.EATEN, function()
--    --lock
--    sndc "chwp"
--    stim writ from 79 1
--    kill(ownr())
--end)

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.FOOD, 6203, CAOS.EVENT.PICKUP, function()
    pose(1)
end)

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.FOOD, 6203, CAOS.EVENT.TIMER, function()
    kill(ownr())
end)

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.FOOD, 6203, CAOS.EVENT.COLLIDE, function()
    pose(0)
end)

scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.SEED, 6201, CAOS.EVENT.TIMER, function()
    if fall() == 1 then
       return
    end
    if carr() ~= nil then
       return
    end
    --if rtyp room targ < 5 or rtyp room targ > 7 then
    --   kill(ownr())
    --end
    rnge(800)
    setv(va99, 0)
    esee_wrap(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.LEAF, 6205, function()
       addv(va99, 1)
    end)
    if getv(va99) > 2 then
       kill(ownr())
    end
    setv(va08, posx())
    setv(va09, posy())
    addv(va08, -30)
    addv(va09, -20)
    new_simp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.LEAF, 6205, "BulbBalloon", 0, 0, 4567)
  
    attr(CAOS.ATTRIBUTES.SUFFER_PHYSICS | CAOS.ATTRIBUTES.SUFFER_COLLISIONS)
    elas(0)
    fric(100)
    accg(5)
    perm(70)
    pose(0)
    --mvsf va08 va09
    tick(10)
    kill(ownr())
end)

--scrp(CAOS.FAMILY.OBJECT, CAOS.OBJECT_GENUS.SEED, 6201, CAOS.EVENT.EATEN, function()
--    --lock
--    sndc "chwp"
--    chem 5 50
--    chem 12 25
--    kill(ownr())
--end)
