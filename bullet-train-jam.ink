Bullet Train

// Riding the Sleeper Train in Japan on a Heavy Snow Day. // https://www.youtube.com/watch?v=KG53Pr3pFg4

// https://github.com/inkle/inky/releases/tag/0.13.0

// Dice rolls
// 6 - 100% Positive
// 5 - 50% Positive / 50% Neutral
// 3,4 - 25% Positive / 50% Neutral / 25% Negative
// 1,2 - 50% Neutral / 50% Negative
// Go to bed to reset dice.
// Only have 5 dice.
// Health worsens and the number of dice will decrease.
// Start with most modifiers 0
// one is +1
// one is -1
// safe tasks have no status reduction
// risky tasks can reduce money and or energy
// dangerous tasks can reduce status 

// Generate a character with 5 attributes (integer) values. 
// Use an action to get (5 * (Max health / Health)) dice by sleeping.
// Remove 1 of the dice which range from 1 to 6.
// Roll one dice to a task to test 1 or more attributes by use the dice roll and the bonus from the attribute to check if larger than difficulty.
// There's a failure or success chart (4 entries).
// If the test succeeds subtract health from the task. When task has 0 health, remove.
// Lose if your character health is 0.

VAR attribute_insight = 1 // The ability to use your intelligence to solve problems and analyze information.
VAR attribute_intuition = 0 // The ability to make decisions and come up with solutions without being able to exactly pinpoint how you came up with them.
VAR attribute_endurance = -1 // The ability to coordinate, and balance.
VAR attribute_allure = 0 // The ability to adapt and empathize with other people.
VAR attribute_willpower = 0 // The ability to control yourself and follow through on difficult tasks.

-> main

=== function roll_dices() ===
VAR roll1 = 0
VAR roll2 = 0
VAR roll3 = 0
VAR roll4 = 0
VAR roll5 = 0
~ roll1 = RANDOM(1, 6)
~ roll2 = RANDOM(1, 6)
~ roll3 = RANDOM(1, 6)
~ roll4 = RANDOM(1, 6)
~ roll5 = RANDOM(1, 6)

=== list_dices(-> divert) ===
+ roll: {roll1} -> divert(roll1) ->->
+ roll: {roll2} -> divert(roll2) ->->
+ roll: {roll3} -> divert(roll3) ->->
+ roll: {roll4} -> divert(roll4) ->->
+ roll: {roll5} -> divert(roll5) ->->

=== main ===
~ roll_dices()
+ Try task (Steps remaining {my_task_health}) -> my_task
+ Give up
- -> walk_forward

=== my_task ===
VAR my_task_health = 5
-> list_dices(-> decrement) ->
{ my_task_health <= 0:
    The task is done. -> DONE
}
-> main

== decrement(roll) ==
{ roll > attribute_insight:
    ~ my_task_health = my_task_health - 1
}
->->

== walk_forward ==
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




