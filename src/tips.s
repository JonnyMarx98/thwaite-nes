; tips.s
; In-game play tips for Thwaite

;;; Copyright (C) 2011 Damian Yerrick
;
;   This program is free software; you can redistribute it and/or
;   modify it under the terms of the GNU General Public License
;   as published by the Free Software Foundation; either version 3
;   of the License, or (at your option) any later version.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;   GNU General Public License for more details.
;
;   You should have received a copy of the GNU General Public License
;   along with this program; if not, write to 
;     Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;     Boston, MA  02111-1307, USA.
;
;   Visit http://www.pineight.com/ for more information.

.export levelTips, tipTexts

MISSILE_GLYPH = $1D
il = $1F
HOUSE_GLYPH = $7F

.segment "RODATA"
tipNova:
  .byt "",il,"legal miss",il,"e count",10,"you l",il," cheater",0

levelTips:
  .byt  5, 6, 7, 8, 9
  .byt 12,10, 0, 0, 0
  .byt  0, 0, 0, 0, 0
  .byt 14, 0, 0, 0, 0
  .byt  0, 0, 0, 0, 0
  .byt  0, 0, 0, 0, 0
  .byt  0, 0, 0, 0, 0
; Level $01's tip is replaced with tipTwoPlayer
; inside levels.s::loadLevel

tipTexts:
  .addr tipNone, tipGameOver, tipNiceJob, tipRebuildSilo, tipRebuildHouse
  .addr tipSun1, tipBothSilos, tipPathsCross, tipPayload, tipRebuilt
  .addr tipTopToBottom, tipTwoPlayer, tipWreckage, tipNova, tipBalloonFever1

;length"There is a limit of 28      ",10,"characters per line.        ",0
tipGameOver:
  .byt "         GAME OVER"
tipNone:
  .byt 0
tipNiceJob:
  .byt "         Nice Job!",          10
  .byt "Left:  *",HOUSE_GLYPH,"  *",MISSILE_GLYPH,"   Bonus:    00",0
tipRebuildSilo:
  .byt "Repairs to the s",il,"o",          10,"are complete.",0
tipRebuildHouse:
  .byt "'s house has",                10,"been rebu",il,"t.",0
tipSun1:
  .byt "Shoot down incoming miss",il,"es", 10,"to defend the town!",0
tipBothSilos:
  .byt "Shoot from both s",il,"os:",       10,"press B or A.",0
tipTwoPlayer:
  .byt "Each player's s",il,"o has",       10,"its own stock of ABMs.",0
tipPathsCross:
  .byt "You can destroy two miss",il,"es", 10,"by aiming where paths cross.",0
tipPayload:
  .byt "Destroy balloons and MIRVs",  10,"before they drop a payload.",0
tipRebuilt:
  .byt "Survive unt",il," morning and",    10,"a house w",il,"l be rebu",il,"t.",0
tipTopToBottom:
  .byt "TIP: Start at the top",       10,"and progress to the bottom.",0
tipWreckage:
  .byt "Don't worry about miss",il,"es",   10,"that are aimed at wreckage.",0
tipBalloonFever1:
  .byt "When you say ",34,"that's so gay",34,",",10,"do you realize what you say?",0
