# mscore-plugin-Chromo2DiatonicTab
A Musescore plugin that converts an existing chromatic TAB staff to Mountain Dulcimer diatonic TAB notation

4/19/2021: This is a work in process. However, even in it's current state it is actually usable as long as you are careful.

To Install: Copy the .qml file into your musesdcore 'plugins' directory, then in Musescore enable it in the Plugins menu.

TO USE --
   1. Have a 3-string TAB staff in your score that contains the fully chromatic representation of the score. **CAUTION**: Make sure this staff is *not* linked to any other staff. If it is linked and you run the plugin against it it will effectively destroy that other linked staff's content. So, to obtain a TAB staff to convert you can simply add a new instrument (add the 'Mountain Dulcimer (Tablature)"" instrument), making sure you don't add it as a linked staff. Then you can select all the measures on the staff that contains the content you wish to make Mtn Dulcimer TAB for, do Edit / Copy command. Then click into the 1st measure of your unlinked, new, TAB staff and do an Edit / Paste command. Now you have an unlinked, chromatic, TAB staff which you can apply the plugin against.
   
   2. Select one, several, or all, the measures of the TAB staff you wish to convert. Presumbably you would select all measures, but you don't have to convert the entire staff if for some reason you don't wish to. 
   
   3. Run the plugin from Musescore's plugin menu.
   
LIMITATIONS --

   a. Not yet fully baked, so expect bugs and surprises.
   
   b. Multiple voices are not supported.
   
   c. The mountain dulcimer half-fret symbols, those "+" symbols, will almost always need fixing up. Musescore, of course, cannot have a non-integer fret #, so the half-frets have to be added as Staff Text. There isn't any way to lock a Staff Text item to a specific note's position on the staff. So you will find that the positioning goes awary whenever you change formatting from the TAB staff's built in defaults. I am going to keep looking at ways to make this work better.
   
ISSUES -- As you find bugs and issues, please go ahead and open an issue item here on github.
