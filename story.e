#0
You wake up in a frozen cave.  You don't remember very much.  Either "leave" the cave or go "deeper" into it. 
!leave->tundra
!deeper->deeper

#tundra
You left the cave and find a frozen tundra.  A blizzard rages and you cannot see beyond your nose. You can choose to "wander" aimlessly in the tundra or "return" to the cave.
!wander->frostbite
!return->back-cave

#frostbite
After 3 hours of wandering around, you die of frostbite.  Buried in 300 pounds of snow, your body will never be found.  Respawn?
!yes,respawn->0

#back-cave
You are back in the cave. Either "leave" the cave or go "deeper" into it.  Alternatively, you can choose to sit around and do "nothing".
!leave->tundra
!deeper->deeper
!nothing->starvation

#starvation
Eventually you die of starvation sitting and doing nothing.  Your corpse will make a delicious meal for the yeti.  Respawn?
!yes,respawn->0

#deeper
You travel deeper into the cave and hit a T-junction.  You can either go "left" or "right".
!left->left-1
!right->right-1

#left-1
torch=true->left-torch
else->left-notorch

#left-torch
You travel into a narrow passageway.  Something makes you think that seeing down here would be very difficult without a torch lighting the way.  "Continue" or head "back"?
!continue->left-2
!back->deeper

#left-notorch
As you travel, the darkness gets absolute. You could try "feel"ing your way around, or you could head "back".
!feel->feel-1
!back->deeper

#feel-1
The walls are icy cold and the darkness is not comforting.  You wonder if you are actually making any progress this way. You can continue "feel"ing your way around, or you could head "back".
!feel->feel-1
!back->left-1

#right-1
torch=true->right-1-torch
else->right-1-notorch

#right-1-notorch
As you travel you feel something bump your foot.  You reach down and feel the slimy object on your hand.  "Grab" it or "drop" it and keep moving.  You can also choose to head "back".
!grab->right-1-grab
!drop->right-2
!back->deeper

#right-1-torch
The friendly orange glow of torchlight continues to dance on the icy cave walls. You "continue" or head "back"?
!back->deeper
!continue->right-2

#right-1-grab
You shake the wetness off the object and realize it is cloth wrapped around wood.  You believe it is a torch.  Try "strike"ing it against the wall of the cave or "drop" the object?
!strike->right-1-strike
!drop->right-1

#right-1-strike
Miraculously, the torch lights!  The friendly orange glow or torchlight dances on the icy cave walls. You "continue" or head "back"?
<torch->true>
!back->deeper
!continue->right-2

#right-2
You continue down the passageway. Towards the end you can barely make out a glowing golden egg on a pedestal.  The air around here feels much warmer.  You continue to "inspect" the area.
!inspect->right-2-2

#right-2-2
fire=true->right-2-burn
torch=true->right-2-torch
else->right-2-notorch

#right-2-torch
In searching the room you see a lot of cobwebs on the walls.  "Burn" the cobwebs to inspect the walls?
!burn->right-2-burn

#right-2-burn
In burning off the cobwebs, you accidentally light a fire in the room. You need to get "out" now!
<fire->true>
!out->deeper

#right-2-notorch
Your eyes move to the golden egg. How beautiful!
!look->right-love-egg
!admire->right-love-egg
!enjoy->right-love-egg
!inspect->right-love-egg

#right-love-egg
What a beautiful golden egg!
!look,admire,enjoy,inspect->right-2-2


