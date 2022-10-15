Bullet Train

// Riding the Sleeper Train in Japan on a Heavy Snow Day. // https://www.youtube.com/watch?v=KG53Pr3pFg4

// paulloz - 07/08/2022
// If I understand correctly, you have like an amount of dice per cycle and you basically roll all of them at the beginning and then when you take an action you decide which one you assign it and each action has a lifebar to complete 
// We roll at again on assignment but that isn't hard right?
// Lists are kind of a hassle so I'd either keep one variable per dice or have them serialized into a string.
// What's called "list" in ink isn't what you'd expect when you think of a list as a programmer
// In the end, ink is just a thing that keeps tracks of a big story state and you ask it the next bit of available content whenever you want
// So you can build pretty much anything around ink.

* walk forward -> mess_with_the_phone

== mess_with_the_phone ==
* mess with the phone -> get_a_ticket

== get_a_ticket ==
* mess with phone -> enter_the_gate

== enter_the_gate ==
* open the door -> open_the_door

== open_the_door ==
* chat with people -> chat_with_ai

== chat_with_ai == 
* get a ticket -> enter_train

== enter_train ==
* enter train -> go_to_room

== go_to_room ==
* go to room -> wardrobe_exchange

== wardrobe_exchange == 
* sleep -> intro_to_game

== intro_to_game ==
* Begin intro music. Snow bullet train fades out.
    -> END




