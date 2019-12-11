module Snippet2019DEC11 exposing (..)

-- SNIPPET 2019DEC06 START --
-- OBJECTIVE: I Want to capitalise words in a list
-- sources: Jeremy Fairbank, "Programming Elm", Pragmatic Programmers, PP 52, 245.
--
--          <https://github.com/elm-lang/core/blob/master/src/List.elm>
--          <https://github.com/elm-lang/core/blob/master/src/String.elm>
--          <https://package.elm-lang.org/packages/elm-lang/core/latest/Result#Result>
--          <https://package.elm-lang.org/packages/elm/core/latest/List>
--          <https://package.elm-lang.org/packages/elm/core/latest/Maybe>
--          <https://guide.elm-lang.org/error_handling/result.html>
-- * use capWord in list function
-- - if I can build a function, can I use it to process a list?
-- - try lowcaseWords and upcaseWords as hard coded values
-- - can I pass in a function thus making breaking the steps down further?
--
--        changeWords words proc
--
-- - so I create changeWords and pass in words list and a function
-- - suprise MF it works.
-- * building capWord
-- - I break capWord down into discrete steps and build functions for them
-- - spend LOTS OF TIME on working out how to do capWord
-- - because I'm using intermediate steps I need LET/IN
-- - because I can return something OR nothing I require CASE syntax
-- * create snippets of code to do what I require in function
-- - create firstWord to remove first char in word
-- - create hcWord to convert words to uppercase
-- - create lcWord to convert words to lowercase
-- * lists
-- - create type alias
-- - write a function to display type signature for any input
-- - display the input in snippet function
-- * "Elm - Check the Type of a value"
-- - <https://stackoverflow.com/questions/36535368/elm-check-the-type-of-a-value>
-- EXPRESSION SNIPPETS
--
-- looper greetings
-- firstWord greetings
-- capital greetings
-- capitalise greetings
-- firstWord greetings
-- capWords greetings
-- restOfWords greetings
-- String.toLower (List.head greetings)
-- capitalise greetings
-- String.slice 0 1 (List.head greetings)
-- hcWord "Hi"
-- upcaseWords greetings
-- capWord " this is not on "
-- capWords greetings
-- changeWords greetings firstWord
-- changeWords greetings capWord


greetings =
    -- test list of strings
    -- try inicode
    [ "HI THERE", "\u{1F998}🇦🇺", "greetings", "Master", "How", "Can", "I", "Help", " ", "", "You" ]


type
    Result error value
    -- TODO: itegrate into function for errors
    = Ok value
    | Err error


looper greeting =
    -- looper: loop list, trim, lowercase, output as string
    greetings
        |> List.concatMap (\x -> [ x ])
        |> List.map String.trim
        |> List.map String.toLower
        |> String.join " "


lowcaseWords : List String -> String
lowcaseWords words =
    -- lowcaseWords: loop list, concat, trim, lowercase, output as string
    words
        |> List.concatMap (\x -> [ x ])
        |> List.map String.trim
        |> List.map String.toLower
        |> String.join " "


upcaseWords words =
    -- upcaseWords: loop list
    --              trim
    --              uppercase
    --              output as string
    words
        |> List.concatMap (\x -> [ x ])
        |> List.map String.trim
        |> List.map String.toUpper
        |> String.join " "


changeWords words proc =
    -- changeWords: loop list
    --              pass in procedure to process string
    --              output as string
    words
        |> List.concatMap (\x -> [ x ])
        |> List.map proc
        |> String.join " "


capWords words =
    -- capWords: loop list
    --           capitalise word
    --           output as string
    words
        |> List.concatMap (\x -> [ x ])
        |> List.map capWord
        |> String.join " "


capWord word =
    -- capWord: with a word
    --          loWord: convert word to lowercase
    --          first: grab first character word, trim
    --          upFirst: convert first character word to uppercase
    --          rest: extract rest of word
    --          capitalised: build capitalised word
    let
        loWord =
            -- trim spaces
            -- convert word to lowercase
            String.toLower (String.trim word)

        first =
            -- extract first letter
            String.slice 0 1 loWord

        upFirst =
            -- convert first letter to upper
            String.toUpper first

        rest =
            -- grab word after first char
            -- convert to lower
            String.slice 1 (String.length loWord) loWord

        capitalised =
            -- new capitalised word
            upFirst ++ rest
    in
    case word of
        _ ->
            capitalised


firstWord words =
    -- grab first word from list
    List.head words


lcWord word =
    -- convert word to lowercase
    String.toLower word


hcWord word =
    -- convert word to uppercase
    String.toUpper word



-- ---- JUNK CODE ----
--capital greeting =
--    firstWord greeting ++ restOfWords sentence
{-
   let
       restWords =
           List.tail sentence

       lcWords =
           lowcaseWords restWords
   in
   "firstWord sentence" ++ lcWords
-}
-- if head
--   find head,
--   process head by capitalising
--   return to new list
-- else
--   process list to lower
-- add head of list to rest
-- return new list
-- capitalise sentence =
-- capitalise sentence by making first item
-- in list capital, the rest are lowered
-- sentence
--    |> List.concatMap (\x -> [x])
--    |>
-- SNIPPET 2019DEC06 END --
