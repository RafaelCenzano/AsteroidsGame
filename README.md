Asteroids (Part 1)
==================
In this assignment we will start to replicate the old video game Asteroids. You will write a program that has a space ship that can be controlled with the keyboard. You will need to write a `Spaceship` class. Your `Spaceship` class will extend the `Floater` class, a class that represents all things that float in space. _Note: To complete this assignment you will be writing two classes `Spaceship` and `Star`. Do not modify the `Floater` class._

Suggested steps to complete this assignment
-------------------------------------------

1. Fork [this repository](https://github.com/APCSLowell/AsteroidsGame). 
1. Open the program by opening `AsteroidsGame.pde` in Processing or opening the AsteroidsGame folder in Sublime.
2. Uncomment the `extends floater` on Line 1 of `Spaceship.pde`
4. Write the `Spaceship` constructor. Make sure you initialize all 9 of the inherited `protected` member variables. You may find slides #1 - 58 on the [Asteroids](https://docs.google.com/presentation/d/1xEIchvoA0s2BO-HB8g9wjk1jSBH8sq9Gtkij5Y7slOs/edit?usp=sharing) and the [Spaceship design worksheet](https://drive.google.com/file/d/0Bz2ZkT6qWPYTRDJvNUJRdXFjNGs/view?usp=sharing) helpful. You may also find [this sample Spaceship program](https://apcslowell.github.io/AsteroidsVariableDemoV2/) helpful in understanding how the `protected Floater` variables affect the Spaceship's movement.
5. At the top of `AsteroidsGame.pde`, declare a variable of type `Spaceship`
6. Initialize the `Spaceship` as a new instance of the class
7. In `draw()` in `AsteroidsGame.pde` call the Spaceship's `show()` function
8. When you are happy with appearance of the Spaceship, add a `public void keyPressed()` function in `AsteroidsGame.pde`
9. Write code in `keyPressed` that allows you to control the spaceship with the keyboard. You must include the ability to turn left, turn right, accelerate, and enter "hyperspace." (There is no requirement for any fancy visual effects, hyperspace just needs to stop the ship, and give it a new random position and direction.)
10. Add code to the `draw()` in `AsteroidsGame.pde` to `move()` the Spaceship
11. Finish the `Star` class in `Star.pde` 
12. Finally, add code to `AsteroidsGame.pde` that declares and initializes an array of instances of the `Star` class to create a number of stars in random positions
12. Note that for full credit, **you MUST include instructions on how to operate your Spaceship in the `index.html` file**
12. OPTIONAL: If you have extra time and are looking for a challenge, you might try to add an animation of "rockets" that appear from the back of the ship when you accelerate, simliar to the [this sample Spaceship program](https://apcslowell.github.io/AsteroidsVariableDemoV2/). The best way to do this is to override `show()` by copying the `show()` function from Floater into your Spaceship class. Then add an `if` statement in your Spaceship `show()` function right after `endShape(CLOSE);`. If your rockets are firing, draw additional shapes just behind your Spaceship. You can sketch out the shapes on graph paper with the ship centered at (0,0) and pointing right. The `show()` function will rotate and translate the rocket shapes to the correct position on the screen.

These steps are only a suggestion. Your Asteroids game doesn't have to work or act like any other. Have fun and be creative.

Some important things to keep in mind
-------------------------------------
3. You're collaborating! Most of the work for the `Spaceship` class has already been done in the `Floater` class. Don't change it! Your job is to extend the `Floater` class to "build on top of it" to make a `Spaceship` class. 
3. To create the `Spaceship` class you need to write a constructor.
4. When you are sketching out your ship on the [Spaceship design worksheet](https://drive.google.com/file/d/0Bz2ZkT6qWPYTRDJvNUJRdXFjNGs/view?usp=sharing) make sure the ship is centered at (0,0) and pointing to the right
4. Don't declare any duplicate variables in your `Spaceship` class. You are inheriting all the variables you need from `Floater`
5. Make sure your `Spaceship` constructor initializes all 9 of the `protected` variables it inherits from `Floater`

Samples of Student Work
-----------------------
[Timmy](https://tidang.github.io/AsteroidsGame/)   
[David](https://daamaya.github.io/AsteroidsGame/)   
[Marc](https://alltheusernamesdontworkexceptmine.github.io/AsteroidsGame/)   
[Alexis](https://alexisapcs.github.io/AsteroidsGame/)   
[Alan](https://alexisapcs.github.io/AsteroidsGame/)   
[Jack](https://paintcannon.github.io/AsteroidsGame/)   
[Erica](https://ericamalia.github.io/AsteroidsGame/)   
[Wilson](https://wilsonh415.github.io/AsteroidsGame/)   
[Elton](https://elel123.github.io/AsteroidsGame/)   
[Kenneth](https://kenpaso.github.io/AsteroidsGame/)   
[Hannah](https://hadecastro.github.io/AsteroidsGame/)   
[Joshua](https://joshualchan.github.io/AsteroidsGame/)   
[Steven](https://sjkchang.github.io/AsteroidsGame/)   
[Silas](https://silascs.github.io/AsteroidsGame/)   
[Ben](https://benjaminlanir.github.io/AsteroidsGame/)   
[Sam](https://flukemeister28.github.io/AsteroidsGame/)   
[Karen](https://sonokjw.github.io/AsteroidsGame/)   
[Andrew](https://ansue1234.github.io/AsteroidsGame/)   
[Thanawat](https://thiskappaisgrey.github.io/AsteroidsGame/index.html)   
[Jenna](https://jennaralll.github.io/AsteroidsGame/)   
[Katie](https://kachow4.github.io/AsteroidsGame/)   
[Michael](https://mipsim.github.io/AsteroidsGame/)   
[Olivia](https://vavies.github.io/AsteroidsGame/)   
[Eric](https://jellybeanmill.github.io/AsteroidsGame/)   
[Joanna](https://j0annalu.github.io/AsteroidsGame/)   
[Emily](https://emilyhasramen.github.io/AsteroidsGame/)   
[Kirby](https://krbyktl.github.io/AsteroidsGame/)   
[Dean](https://deanhuynh.github.io/AsteroidsGame/)   
[Ben](https://benjaminlanir.github.io/AsteroidsGame/)   
[Maxwell](https://12maxwellho.github.io/AsteroidsGame/)   
[Andrea](https://chenandrea29.github.io/AsteroidsGame/)   
[Yev](https://yevgeniybarkalov.github.io/AsteroidsGame/)   
[Garvin](https://garvingit.github.io/AsteroidsGame/)   
[Aaron](https://aahuangithub.github.io/AsteroidsGame2/)   
[Michael](https://mipsim.github.io/AsteroidsGame/)   
[Jenny](https://jexin.github.io/AsteroidsGame/)   
[Erica](https://ekwkk.github.io/AsteroidsGame/)   
[Edmund](https://edmundmah79.github.io/AsteroidsGame/)   
[Schuyler](https://skschur1.github.io/AsteroidsGame/)   
[Bryan](https://bzin22.github.io/AsteroidsGame/)   
[Emma](https://emmackenzie.github.io/AsteroidsGame/)   
[Kenny](https://kennyyu168.github.io/AsteroidsGame/)   
[Brandon](https://brandontom96.github.io/AsteroidsGame/)   
[Nicholas](https://woonicholas.github.io/AsteroidsGame/)   
[Raymond](https://ngoraymond.github.io/AsteroidsGame/)   
[Nathan](https://nathansng.github.io/AsteroidsGame/)   
[Steven](https://stliu8.github.io/AsteroidsGame/)   
[Brandon](https://zawszefl.github.io/AsteroidsGame/)   
[Preston](https://prestonttt.github.io/AsteroidsGame/)   
[Tatiana](https://sonotatiana.github.io/AsteroidsGame/)   
[Karen](https://sonokjw.github.io/AsteroidsGame/)   
[Kyle](https://yachtmasterkyle.github.io/AsteroidsGame/)   
[Michelle](https://miphung.github.io/AsteroidsGame/)   
[Jayden](https://jaydenlee1229.github.io/AsteroidsGame/)   
[Kevin](https://tig777.github.io/AsteroidsGame/)   
[Kyle](https://yachtmasterkyle.github.io/AsteroidsGame/)   
[Lydia](https://aqua28.github.io/AsteroidsGame/)   
[Jenna](https://jennaralll.github.io/AsteroidsGame/)   
[Otto](https://otschmidt.github.io/AsteroidsGame/)   
[Brandon](https://brandonchen114.github.io/AsteroidsGame/)   
[Andrew](https://ansue1234.github.io/AsteroidsGame/)   
[Darya](https://darya-ver.github.io/AsteroidsGame/)   
[Felix](https://felixzhuk.github.io/AsteroidsGame/)   
[Elton](https://elel123.github.io/AsteroidsGame/)   
[Robert](https://rshi159.github.io/AsteroidsGame/)   
[Skyler](https://skschur1.github.io/AsteroidsGame/)   
[Desmond](https://djmond.github.io/AsteroidsGame/)   
[Amanda](https://amkallenbach.github.io/AsteroidsGame/)   
[Eric](https://ericyu15.github.io/AsteroidsGame/)   
[Hannah](https://hadecastro.github.io/AsteroidsGame/)   
[Kendra](https://pastalover45.github.io/AsteroidsGame/)   
[Colin](https://licolin4.github.io/AsteroidsGame/)   
[Edmund](https://edmundmah79.github.io/AsteroidsGame/)   
[Andrew](https://andrewmai123.github.io/AsteroidsGame/)   
[Winfield](https://winfield101.github.io/AsteroidsGame/)   
[Jun](https://johyrao.github.io/AsteroidsGame/)   
[Steven](https://sjkchang.github.io/AsteroidsGame/)   
[Conna](https://connac.github.io/AsteroidsGame/)   
[Hannah](https://hadecastro.github.io/AsteroidsGame/)   
[Wilsom](https://wilsonh415.github.io/AsteroidsGame/)   
[Bryce](https://brycekeetonazaz.github.io/AsteroidsGame/)   
[Eric](https://jellybeanmill.github.io/AsteroidsGame/)   
[Maxwell](https://12maxwellho.github.io/AsteroidsGame/)   
[Kirby](https://krbyktl.github.io/AsteroidsGame/)   
[Garvin](https://garvingit.github.io/AsteroidsGame/)   
[Aaron](https://aahuangithub.github.io/AsteroidsGame1/)   
[Joshua](https://joshualchan.github.io/AsteroidsGame/)   
[Sam](https://flukemeister28.github.io/AsteroidsGame/)   
[Otto](https://otschmidt.github.io/AsteroidsGame/)   
[Steven](https://sjkchang.github.io/AsteroidsGame/)   
[Makoi](https://magacula1.github.io/AsteroidsGame/)   
[Brandon](https://brlou-apcs.github.io/AsteroidsGame/)   
[Kenneth](https://kenpaso.github.io/AsteroidsGame/)   
[Sophie](https://sohuang.github.io/AsteroidsGame/)   
[Nicholas](https://niguan.github.io/AsteroidsGame/)   
[Jessica](https://jtngai.github.io/AsteroidsGame/)   
[Kenny](https://kennyyu168.github.io/AsteroidsGame/)   
[Vivian](https://viviaann.github.io/AsteroidsGame/)   
[Conna](https://connac.github.io/AsteroidsGame/)   
[Janet](https://birded.github.io/AsteroidsGame/)   
[Emma](https://emmackenzie.github.io/AsteroidsGame/)   
[Katie](https://kachow4.github.io/AsteroidsGame/)   
[Nghi](https://nagirokudo.github.io/AsteroidsGame/)   
[Bryan](https://bzin22.github.io/AsteroidsGame/)   
[Erica](https://ekwkk.github.io/AsteroidsGame/)   
[Joanna](https://j0annalu.github.io/AsteroidsGame/)   
[Jonathan](https://jonathanchu33.github.io/AsteroidsGame/)   
[Derek](https://keredlew.github.io/AsteroidsGame/)   
[Mi-Kaela](https://mikamarciales.github.io/AsteroidsGame/)   



*This assignment was selected as a "Nifty CS Assignment" in 2008 by Nick Parlante @ Stanford*

Asteroids (Part 2)
==================
Now that we have a functioning space ship, we'll add some asteroids to our game. To do that, we'll write an asteroid class that `extends Floater`.

Suggested steps to writing an Asteroid class
-----------------------------------
1. Create a new `Asteroid.pde` file in your `AsteroidsGame` folder. One way to do this is in Sublime is to choose *New | New File* and
then choose *File | Save as* and name your file `Asteroid.pde`. 
2. Write an `Asteroid` class that `extends Floater` in your Asteroid.pde file. You will need to
write a constructor and a `move()`
2. On line 14 of `index.html` add `Asteroid.pde` to the list of files in `data-processing-sources`. The canvas tag should now look like `<canvas id="AsteroidsGame" data-processing-sources="Asteroid.pde AsteroidsGame.pde Floater.pde Spaceship.pde Stars.pde">
				</canvas>`. Now choose *File | Save*.
2. Add a `int` member variable of the `Asteroid` class. It will hold the speed of rotation for each asteroid. Make sure that this is initialized to have an equal probablility of being positive or negative. Also make sure to declare it appropriately (should it be `public` or `private`?)
3. "Override" the `move()` method of the Floater class by writing a new `move()` method in the Asteroid class that also `turn`s (rotates) each Asteroid at its own speed
4. Now add just a single asteroid to your program. Start by just calling the Asteroid's `show()` function. Make sure you can see it and are happy with its shape before going to the next step.
5. Now add the code that moves and rotates the Asteroid   

Adding an `ArrayList`
-------------------
An array probably isn't the best way to keep track of a bunch of asteroids. Arrays have a fixed size. You can't easily add or remove asteroids from an array as they are destroyed or created. A better choice might be an `ArrayList`. The `ArrayList` class has a number of useful member methods:
- `boolean add(Object x)`
- `void add(int index, Object element)`
- `Object get(int index)`
- `Object remove(int index)`
- `Object set(int index, Object x)`
- `int size()`

Suggested steps to adding an `ArrayList` of Asteroids and finishing the project
-----------------------------------

1. Create an `ArrayList` of type `Asteroid`. You may find the [ArrayList slide presentation](https://docs.google.com/presentation/d/1yDXGypcooCoeUa7GD99bYooRU1vBk63lC0G2JEOdTaY/edit?usp=sharing) helpful.
2. Now we'll modify the program so that when our space ship strikes an asteroid, the asteroid is removed from the `ArrayList`. Everytime an asteroid moves find the distance between that asteroid and the ship. Use processing's [`dist()`](https://processing.org/reference/dist_.html) function to find the distance between that asteroid and the ship. If the distance is less than 20 (or whatever value is appropriate for your game) remove the asteroid from the ArrayList. Otherwise, move and rotate the asteroid normally
3. Submit the same URL for your AsteroidsGame that you submitted for the previous assignment to Google Classroom.


 
