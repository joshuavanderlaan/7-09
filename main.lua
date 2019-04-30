-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------



display.setStatusBar(display.HiddenStatusBar)

 

centerX = display.contentWidth * .5

centerY = display.contentHeight * .5



local sheetOptionsIdle =

{

    width = 587,

    height = 707,

    numFrames = 10

}

local sheetIdleKnight = graphics.newImageSheet( "./assets/spritesheets/knightIdle.png", sheetOptionsIdle )



local sheetOptionsWalk =

{

    width = 587,

    height = 707,

    numFrames = 10

}

local sheetWalkingKnight = graphics.newImageSheet( "./assets/spritesheets/knightWalking.png", sheetOptionsWalk )





-- sequences table

local sequence_data = {

    -- consecutive frames sequence

    {

        name = "idle",

        start = 1,

        count = 10,

        time = 1000,

        loopCount = 0,

        sheet = sheetIdleKnight

    },

    {

        name = "walk",

        start = 1,

        count = 10,

        time = 250,

        loopCount = 0,

        sheet = sheetWalkingKnight

    }

}



local knight = display.newSprite( sheetIdleKnight, sequence_data )

knight.x = centerX

knight.y = centerY

knight.xScale = 140/587
knight.yScale = 150/707



knight:play()



-- After a short time, swap the sequence to 'seq2' which uses the second image sheet

local function swapSheet()

    knight:setSequence( "walk" )

    knight:play()

    print("walk")

end



timer.performWithDelay( 2000, swapSheet )





display.setStatusBar(display.HiddenStatusBar)

 

centerX = display.contentWidth * .75

centerY = display.contentHeight * .70




local sheetOptionIdle =

{

    width = 232,

    height = 439,

    numFrames = 10

}

local sheetIdleNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyIdle.png", sheetOptionIdle )



local sheetOptionsWalk =

{

    width = 363,

    height = 458,

    numFrames = 10

}

local sheetrunNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyRun.png", sheetOptionsWalk )





-- sequences table

local sequence_data = {

    -- consecutive frames sequence

    {

        name = "idle",

        start = 1,

        count = 10,

        time = 1000,

        loopCount = 0,

        sheet = sheetIdleNinja

    },

    {

        name = "walk",

        start = 1,

        count = 10,

        time = 250,

        loopCount = 0,

        sheet = sheetrunNinja

    }

}



local knighttwo = display.newSprite( sheetIdleNinja, sequence_data )
knighttwo.x = centerX
knighttwo.y = centerY
knighttwo.xScale = 140/363
knighttwo.yScale = 280/439




knighttwo:play()



-- After a short time, swap the sequence to 'seq2' which uses the second image sheet

local function swapSheet()

    knighttwo:setSequence( "walk" )

    knighttwo:play()

    print("walk")

end



timer.performWithDelay( 2000, swapSheet )









