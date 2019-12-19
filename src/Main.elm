-- #=========
-- # name: Main.elm
-- # date: 2019NOV29
-- # prog: pr
-- # desc: A hack for testing code snippets I'm working on.
-- #
-- #           'cause nodejs sucks
-- #
-- #       the idea is simple: write some functions, code or
-- #       data structures in src/Snippet.elm then call in this
-- #       module. see HOWTO for more details (it's not that hard)
-- #
-- # sorc:
-- #       <http://learnyouanelm.github.io/pages/02-starting-out.html>
-- #=========


module Main exposing (..)

import Browser
import Html
import List exposing (..)
import Snippet exposing (..)



--import Snippet2019DEC16 exposing (..)


main =
    -- Debug.toString is the hack!
    Html.text (Debug.toString snippet)


snippet =
    -- hack away below this line
    -- helloworld
    -- add 1 1000
    -- greetings
    -- moreGreeting
    -- meaningOfLife
    -- pie
    -- let
    --    strPi =
    --        Debug.toString pie
    -- in
    -- sayHello "pi " ++ strPi
    -- bottlesOf "Jolt! Cola" 100
    let
        strPi =
            Debug.toString pie
    in
    sayHello "pi " ++ strPi



-- # vim: ff=unix:ts=4:sw=4:tw=78:noai:expandtab
