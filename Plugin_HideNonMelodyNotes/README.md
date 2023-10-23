# Plugin - MtnDulcimer_HideNonMelodyNotes
A Musescore plugin that hides the non-melody notes on a standard notation staff as per Mountain Dulcimer TAB convention.

10/23/2023: First release.

## TO INSTALL --

   1. Copy the `MtnDulcimer_HideNonMelodyNotes.qml` file into your musescore 'plugins' directory.
   1. In Musescore enable it in the Plugins menu:
      1. Click on Plugins / Plugin Manager...
      1. Click the checkbox for MtnDulcimer_HideNonMelodyNotes. (If you don't see the plugin, click on the 'Reload Plugins' button.)
      1. Click the OK button.

## TO USE --

   1. If you have ties across any non-melody notes between two multi-note chords first set them all to a common direction using the inspector (i.e., either UP or DOWN). See **Ties** under Limitations below for why.

   1. Select one, several, or all, the measures of the Standard Musical Notation (SMN) staff you wish to hide the non-melody notes on. Presumbably you would select all measures, but you don't have to convert the entire staff if for some reason you don't wish to or you are just composing or correcting a portion of the score.
   
   1. Run the plugin from Musescore's plugin menu.

   1. Review the results and make any corrections or tweaks. NOTE: You should be able to use Edit / Undo to reverse the effect of the plugin after running it, should you so desire after review. You may also revert back by doing the following:
      1. Select one note on the staff.
      1. Right-click with the mouse and in the popup context menu choose Select / All Similar Elements in Same Staff.
      1. In the Inspector panel click the checkbox for 'Fix to Line' then click again to set it *unchecked for all notes*.
      1. Click checkbox for 'Visible' twice so that it is *unchecked for all notes*.
   
## LIMITATIONS --

   1. **First Release**. This is a first release, so bugs wouldn't be all that surprising.
   
   1. **Multiple Voices**. Multiple voices are not supported. At present it only converts voice-1.

   1. **Ties**. Ties across chord notes may not end up how you like them due to the default 'auto direction' on them. In many cases this causes some of the tie curves to be 'UP,' and some to be 'DOWN.' When the non-melody notes are hidden the ties are not hidden, so if there is a mix of UP and DOWN ties you'll both of those after the notes are hidden. To fix any of these you can manually click on one or the other and use the Inspector to set the Direction to your preference.
   
## ISSUES

As you find bugs and issues, please go ahead and open an issue item here on github.
