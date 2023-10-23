//=============================================================================
//  MuseScore
//  Music Composition & Notation
//
//  Hide Non Melody-Line Notes Plugin
//
//  This plugin (uses a naive approach) to hide the non-melody-line notes
//  in multi-note chords within a selection on a given staff.
//
//  This is used as part of formatting Mountain Dulcimer TAB. In the
//  Mtn Dulcimer community the convention for TAB is to include a standard
//  notation staff above the TAB staff, but to have on the SMN staff only
//  one note of a chord (to avoid clutter as the only purpose of the SMN
//  staff is to see more clearly the note's time duration).
//
//  This plugin uses a 'naive' approach in that it simply assumes that
//  the highest pitched note is the melody note.
//
//  To use this plugin you must select one, or all, of the measures on one
//  staff.
//
//  This program is free software; you can redistribute it and/or modify
//  it as you wish.
//
//  Desired future improvements: Refer to Issues log on github.
//=============================================================================

//------------------------------------------------------------------------------
//  1.0: 10/23/2023 | Initial Release
//------------------------------------------------------------------------------

import QtQuick 2.2
import MuseScore 3.0

MuseScore {
	version: "1.0"
	description: qsTr("Attempts to hide the non-melody-line notes in multi-note chords in a selection on an SMN staff.")
	menuPath: "Plugins.Mtn Dulcimer." + qsTr("Hide Non-Melody Chord Notes")

    function hideNotes(notes) {
        var k, i;
        var numNotes;
        var note = notes[0];
        var line;
        numNotes = notes.length;
        console.log("numNotes", numNotes);
        if (typeof notes[0].tpc === "undefined") return;
        line = notes[numNotes-1].line;
        if (numNotes > 1) { // Multi-note chord, assume highest pitched note is melody.
            for (i=0; i<numNotes-1; i++) { // Walk through chord notes and hide lower-pitched ones[1].
                console.log("Pitch: ", notes[i].pitch, " Line: ", notes[i].line);
                notes[i].fixedLine = line;
                notes[i].fixed = true;
                notes[i].visible = false;
            }
        }
    }


    onRun: {
        var cursor = curScore.newCursor(); // Make a cursor object.
        var numNotes = 0;
        var endTick = 0;
        var notes;
        var sText = newElement(Element.STAFF_TEXT);

                        // Determine if we have anything selected. If not, abort.
                        //In this iteration I am requiring that the user make a
                        //selection to avoid operating on an entire multi-part score
                        //since I mostly use this function for complex scores.
        cursor.rewind(1)
        if (!cursor.segment) {
                        // no selection. Give a message then fall through to the
                        //end, ending the plugin.
            console.log("No Selection. Select one, or all, measures to operate on.");

                        //   Ok, we have something selected, hide notes within
                        //the selection.
        } else {
                        // Get tick-number for end of the selection.
            cursor.rewind(2);
            if (cursor.tick === 0) {
                        //   (This happens when the selection includes
                        //the last measure of the score. rewind(2) goes
                        //behind the last segment (where there's none)
                        //and sets tick=0)
                endTick = curScore.lastSegment.tick + 1;
            } else {
                endTick = cursor.tick;
            }
            console.log("Selection Ends On Tick: ", endTick);
            cursor.rewind(1) //  Move cursor back to start of selection.
            while (cursor.segment && cursor.tick < endTick) {
                if (cursor.element.type === Element.CHORD) {
                notes = cursor.element.notes;
                numNotes = notes.length;
                hideNotes(notes);
                }
            cursor.next();  // Move to next segment.
            } // end while
        } // end top else stmt

        console.log("Plugin Exiting - presumed successful.");
        Qt.quit();
    } // end onRun

} // end MuseScore


//=============================================================================
// FOOTNOTES
//
//    [1] Handily, MuseScore sorts the notes in the notes object so that the
//  highest pitched note is stored at position [0] in the notes object array.
//  So for our purposes we can simply skip that first note as we process the
//  chord's notes. Tho we do get that note's line# so we can fix all the
//  notes to that line.
