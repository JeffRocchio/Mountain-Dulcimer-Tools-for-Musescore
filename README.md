# mscore-plugin-Chromo2DiatonicTab
A Musescore plugin that converts an existing chromatic TAB staff to Mountain Dulcimer diatonic TAB notation

5/9/2021: First release.

To Install: Copy the .qml file into your musesdcore 'plugins' directory, then in Musescore enable it in the Plugins menu.

TO USE --
   1. Have a TAB staff in your score that contains the fully chromatic representation of the score. You will presumbably create this TAB staff using the *Mountain Dulcimer (Tablature)* instrument. **CAUTION**: Make sure this staff is *not* linked to any other staff. If it is linked and you run the plugin against it, it will effectively destroy that other linked staff's content. If the notes you wish to make mtn dulcimer TAB for are on a standard notation staff you can copy/paste from the standard notation staff to the dulcimer TAB staff to obtain the chromatic TAB staff against which you then run the plugin. This procedure is a good way to go as it will preserve all the articulations, such as slurs, etc.
   
   2. For the TAB staff, set it's 'Show fingering' property to ON. Right-click on an empty spot in a measure, select "Staff/Part Properties." Then click on the Advanced Style Properties button. In the popup dialog make sure the *show fingering in tablature* is checked. You have to do this in order to see the half-fret '+' symbols. Unfortunally, there is no way to detect or set this property from within the plugin, so you need to do this. NOTE: If you forget to do this before running the plugin that is ok, the half-fret +-signs will be there, you can enable the show fingering in tablature property after running the plugin and they will magically appear.
   
   3. Select one, several, or all, the measures of the TAB staff you wish to convert. Presumbably you would select all measures, but you don't have to convert the entire staff if for some reason you don't wish to or you are just composing or correcting a portion of the score.
   
   4. Run the plugin from Musescore's plugin menu. You will get a confirming popup box when the plugin completes. If an error occurs a popup will inform you of that. NOTE: I have noticed that occasionally portions of the transformed TAB will not appear to have been transformed until after the score's window gets refreshed. I don't know why, and it may be due to my particular Linux PC's configuration. But if this happens just click on a different score's tab, move the window around, and/or save the file and it should update and all be correct.
   
LIMITATIONS --

   a. This is a first release, so bugs wouldn't be all that surprising.
   
   b. Multiple voices are not supported. At present it only converts voice-1.
   
   c. Grace notes are not supported in this release.
   
   d. The mountain dulcimer half-fret symbols, those "+" symbols, may need fixing up, depending upon your TAB staff's style settings - such as the fret number font size and such. Musescore, of course, cannot have a non-integer fret #, so the half-frets are added to the fret-number as 'fingering' text. Fingering text is associated to specific notes/frets, so they generally will stay in their proper relative position as you reformat. But reformating from, say, 8pt fret numbers to 14pt may make you want to tweak the half-fret positioning. You could do this in a batch process by updating the *Styles | Text | Fingering style*. Or you could select one of the + symbols and use the *Select | All Simular Elements in Same Staff* option and then using the Inspector to adjust the X/Y offset values.
   
ISSUES -- As you find bugs and issues, please go ahead and open an issue item here on github.
