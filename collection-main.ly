\version "2.19.2"

% SCORE GENERATING FUNCTION
% custom function that generates the \score for each tune
% takes 4 arguments: chords, melody, title, composer
% uses variables \fromPitch and \toPitch for transposing
% uses variable \clefName to set the clef
% uses \postTitleText for adding text after the title
% dynamically generating the scores allows creation of
% different versions of the collection

makeScore =
#(define-scheme-function
  (parser location chords melody title composer)
  (ly:music? ly:music? string? string?)
  #{
    \score {
      <<
        \new ChordNames {
          \transpose \fromPitch \toPitch
          #chords
        }
        \new Staff {
          \clef \clefName
          \transpose \fromPitch \toPitch
          #melody
        }
      >>
      \header {
        piece = \markup {
          \fontsize #3 #title
          % optionally adds text after each tune's title:
          \fontsize #1 \postTitleText
        }
        opus = \markup {
          \fontsize #3 #composer
        }
      }
    }
  #})


%% GLOBAL DOCUMENT SETTINGS

\pointAndClickOff

\layout {
  indent = 0 \mm
  \override Score.BarNumber.break-visibility = #all-invisible
}

#(set-default-paper-size "letter")

\paper {
  % A4/Letter page margins code
  % A4: 210 x 297 mm
  % USletter: 215.9 x 279.4 mm
  % => Difference: letter is 5.9mm wider, A4 is 17.6mm taller
  min-vertical-margins = 10 \mm
  min-horizontal-margins = 10 \mm

  #(define is-letter? (= paper-width (* 8.5 in)))
  % VERTICAL
  % a4 needs an extra 8.8mm on both sides (top and bottom)
  #(define (letter-margin-height min-margin)
     (if is-letter?
         (+ min-margin (* 0 mm))
         (+ min-margin (* 8.8 mm))))
  top-margin = #(letter-margin-height min-vertical-margins)
  bottom-margin = #(letter-margin-height min-vertical-margins)

  % HORIZONTAL
  % letter needs an extra 2.95mm on both sides (left and right)
  #(define (letter-margin-width min-margin)
     (if is-letter?
         (+ min-margin (* 2.95 mm))
         (+ min-margin (* 0 mm))))
  left-margin = #(letter-margin-width min-horizontal-margins)
  right-margin = #(letter-margin-width min-horizontal-margins)
  line-width = #(- paper-width (+ left-margin right-margin))
  % END A4/Letter page margins code


  ragged-bottom = ##t
  page-breaking = #ly:minimal-breaking
  % first-page-number = -1
  % print-first-page-number = ##f

  % put page number in footer and centered
  print-page-number = ##f
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup {
    \fontsize #3.0
    \fill-line {
      % commented code is for adding default automatic page numbers
      % \concat {
      \fromproperty #'header:manual-page-number
      % " - "
      % \on-the-fly \print-page-number-check-first
      % \fromproperty #'page:page-number-string
      % }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}



% INCLUDE ALL THE TUNE FILES
% These contain the variables that contain the melodies and chords for each tune.
% Including the files here makes these variables accessible for output below.

\include "Tunes/AintYouHappy.ly"
\include "Tunes/AmericanPolka.ly"
\include "Tunes/AngryPeeler.ly"
\include "Tunes/AshleysRide.ly"
\include "Tunes/BalkanHills.ly"
\include "Tunes/BanishMisfortune.ly"
\include "Tunes/BarrackHill.ly"
\include "Tunes/BarrelRaffertys.ly"
\include "Tunes/BeaumontRag.ly"
\include "Tunes/BillHartes.ly"
\include "Tunes/BlackberryBlossomBG.ly"
\include "Tunes/BlackestCrow.ly"
\include "Tunes/BlackMountainRag.ly"
\include "Tunes/BonnieDundee.ly"
\include "Tunes/BonnyTyneside.ly"
\include "Tunes/BullyForYou.ly"
\include "Tunes/CattleInTheCane.ly"
\include "Tunes/CharlieHuntersJig.ly"
\include "Tunes/CherokeeTrail.ly"
\include "Tunes/ColemansMarch.ly"
\include "Tunes/ComeOerTheStream.ly"
\include "Tunes/CookInTheKitchen.ly"
\include "Tunes/CornerPost.ly"
\include "Tunes/CornRigs.ly"
\include "Tunes/CrippleCreek.ly"
\include "Tunes/DorsetFourHand1.ly"
\include "Tunes/DorsetFourHand2.ly"
\include "Tunes/DoubleLeadThrough.ly"
\include "Tunes/DullChisel.ly"
\include "Tunes/DurhamRangers.ly"
\include "Tunes/Ebenezer.ly"
\include "Tunes/EdwardsJig.ly"
\include "Tunes/ErieCanal.ly"
\include "Tunes/FairyDance.ly"
\include "Tunes/FarewellToWalleyRange.ly"
\include "Tunes/GarrettBarrys.ly"
\include "Tunes/GentleMaiden.ly"
\include "Tunes/GlenAllen.ly"
\include "Tunes/GreenCockade.ly"
\include "Tunes/GreenwoodTree.ly"
\include "Tunes/HandyWithTheStick.ly"
\include "Tunes/HobartsTransformation.ly"
\include "Tunes/HumorsOfEnnistymon.ly"
\include "Tunes/HuntsmensChorus.ly"
\include "Tunes/IfEverYouWereMine.ly"
\include "Tunes/IllBuyBootsForMaggie.ly"
\include "Tunes/JerusalemRidge.ly"
\include "Tunes/JimmyJohnson.ly"
\include "Tunes/JohnsonsRoad.ly"
\include "Tunes/KatyHill.ly"
\include "Tunes/KeshJigHarmony.ly"
\include "Tunes/KidOnTheMountain.ly"
\include "Tunes/KittyCloversReel.ly"
\include "Tunes/LadyMontgomery.ly"
\include "Tunes/LannigansBall.ly"
\include "Tunes/LarkInTheMorning.ly"
\include "Tunes/LarryOGaff.ly"
\include "Tunes/LibertyHarmony.ly"
\include "Tunes/LittlePineSiskin.ly"
\include "Tunes/LovelyMolly.ly"
\include "Tunes/MaggieInTheWoods.ly"
\include "Tunes/MaidBehindTheBar.ly"
\include "Tunes/ManOfTheHouse.ly"
\include "Tunes/MerrilyKissTheQuakersWife.ly"
\include "Tunes/MorningDew.ly"
\include "Tunes/MountainRoad.ly"
\include "Tunes/MountCashelsBrigade.ly"
\include "Tunes/MrsMcDermottRoe.ly"
\include "Tunes/MyLodgingsOnTheColdGround.ly"
\include "Tunes/Nancy.ly"
\include "Tunes/OConnorsPolka.ly"
\include "Tunes/OldGreyCatHarmony.ly"
\include "Tunes/OldGreyGander.ly"
\include "Tunes/OldHag.ly"
\include "Tunes/OldTempleHouse.ly"
\include "Tunes/OnTheCarpentersPorch.ly"
\include "Tunes/PeelerAndTheGoat.ly"
\include "Tunes/PinkEyeLament.ly"
\include "Tunes/PlanxtyGeorgeBrabazon.ly"
\include "Tunes/PresidentGarfieldsHornpipe.ly"
\include "Tunes/PressleyManor.ly"
\include "Tunes/PriestsLeap.ly"
\include "Tunes/RakesOfKildare.ly"
\include "Tunes/RedHairedBoyHarmony.ly"
\include "Tunes/RoadToTheIsles.ly"
\include "Tunes/RockyRoadToDublin.ly"
\include "Tunes/RoghaLiadroma.ly"
\include "Tunes/RollstoneMountain.ly"
\include "Tunes/RoxboroughCastle.ly"
\include "Tunes/SailorsHornpipe.ly"
\include "Tunes/SallyInTheGarden.ly"
\include "Tunes/SaltyDogRag.ly"
\include "Tunes/ScartaglenPolka.ly"
\include "Tunes/SelingersRound.ly"
\include "Tunes/SergtCahillsFavorite.ly"
\include "Tunes/ShandonBells.ly"
\include "Tunes/ShellBeComing.ly"
\include "Tunes/ShepherdsWife.ly"
\include "Tunes/SonnysMazurka.ly"
\include "Tunes/SquirrelHunters.ly"
\include "Tunes/StAdelesReel.ly"
\include "Tunes/StarOfTheCountyDown.ly"
\include "Tunes/SteamboatQuickstep.ly"
\include "Tunes/SwallowtailJigHarmony.ly"
\include "Tunes/SwaneeRiver.ly"
\include "Tunes/SweeneysPolka.ly"
\include "Tunes/TenPennyBitHarmony.ly"
\include "Tunes/TheHarriet.ly"
\include "Tunes/TherellBeAHotTime.ly"
\include "Tunes/TobinsJig.ly"
\include "Tunes/UnfortunateRake.ly"
\include "Tunes/Wagoner.ly"
\include "Tunes/WallsOfLiscarroll.ly"
\include "Tunes/WalpoleCottage.ly"
\include "Tunes/WashingtonsMarch.ly"
\include "Tunes/WelcomeHereAgain.ly"
\include "Tunes/WestEnd.ly"
\include "Tunes/WesternCountry.ly"
\include "Tunes/WestForkGals.ly"
\include "Tunes/WestforkGirls.ly"
\include "Tunes/Westwind.ly"
\include "Tunes/Whelans.ly"
\include "Tunes/WildHillsOWannies.ly"
\include "Tunes/YankeeDoodle.ly"
\include "Tunes/YFN_AaronsFavoriteAmin.ly"
\include "Tunes/YFN_AaronsFavoriteDmin.ly"
\include "Tunes/YFN_AfterBattleAughrim.ly"
\include "Tunes/YFN_AmyInTheBog.ly"
\include "Tunes/YFN_AngelineTheBaker.ly"
\include "Tunes/YFN_ArkansasTraveller.ly"
\include "Tunes/YFN_BayOfFundy.ly"
\include "Tunes/YFN_BelleGaspesie.ly"
\include "Tunes/YFN_BerenTanz.ly"
\include "Tunes/YFN_BigScioty.ly"
\include "Tunes/YFN_BillLowground.ly"
\include "Tunes/YFN_BillSullivans.ly"
\include "Tunes/YFN_BlackberryBlossom.ly"
\include "Tunes/YFN_BlackberryBlossomSimp.ly"
\include "Tunes/YFN_BlackJoke.ly"
\include "Tunes/YFN_BlackNag.ly"
\include "Tunes/YFN_BlackthornStick.ly"
\include "Tunes/YFN_BlairAtholl.ly"
\include "Tunes/YFN_BoatinUpSandy.ly"
\include "Tunes/YFN_BonaparteCrossingCatatonk.ly"
\include "Tunes/YFN_BonaparteCrossingRhine.ly"
\include "Tunes/YFN_BonaparteCrossingRockies.ly"
\include "Tunes/YFN_BottomOfPunchbowl.ly"
\include "Tunes/YFN_BoysOfBlueHill.ly"
\include "Tunes/YFN_BrendaStubbert.ly"
\include "Tunes/YFN_BusStopReel.ly"
\include "Tunes/YFN_CalliopeHouse.ly"
\include "Tunes/YFN_CamptownRaces.ly"
\include "Tunes/YFN_CaseyJones.ly"
\include "Tunes/YFN_CatOutOfTheBag.ly"
\include "Tunes/YFN_CherokeeShuffle.ly"
\include "Tunes/YFN_Childgrove.ly"
\include "Tunes/YFN_Childgrove2.ly"
\include "Tunes/YFN_Chorus_Jig.ly"
\include "Tunes/YFN_ChorusJig.ly"
\include "Tunes/YFN_CluckOldHen.ly"
\include "Tunes/YFN_Coleraine.ly"
\include "Tunes/YFN_CollegeGrove.ly"
\include "Tunes/YFN_ColoredAristocracy.ly"
\include "Tunes/YFN_ComeDance.ly"
\include "Tunes/YFN_ConnaughtmansRambles.ly"
\include "Tunes/YFN_CoralsCaper.ly"
\include "Tunes/YFN_DancingBear.ly"
\include "Tunes/YFN_DennisMurphys.ly"
\include "Tunes/YFN_DeshabilleToi.ly"
\include "Tunes/YFN_DevilsDream.ly"
\include "Tunes/YFN_DrowseyMaggie.ly"
\include "Tunes/YFN_DublinHornpipe.ly"
\include "Tunes/YFN_Dubuque.ly"
\include "Tunes/YFN_DurangsHornpipe.ly"
\include "Tunes/YFN_EddieMunsterReel.ly"
\include "Tunes/YFN_EddiesReel.ly"
\include "Tunes/YFN_EighthOfJanuary.ly"
\include "Tunes/YFN_EvitGabriel.ly"
\include "Tunes/YFN_EvitGabriel2.ly"
\include "Tunes/YFN_FairyQueen.ly"
\include "Tunes/YFN_FarewellToWhiskey.ly"
\include "Tunes/YFN_FarFromHome.ly"
\include "Tunes/YFN_FatherKellys.ly"
\include "Tunes/YFN_FatherKellys2.ly"
\include "Tunes/YFN_FemaleSailor.ly"
\include "Tunes/YFN_Fishers.ly"
\include "Tunes/YFN_FlopEaredMule.ly"
\include "Tunes/YFN_FlowersOfEdinburgh.ly"
\include "Tunes/YFN_Floyds.ly"
\include "Tunes/YFN_FlyingHomeToShelly.ly"
\include "Tunes/YFN_ForkedDeer.ly"
\include "Tunes/YFN_FrenchiesReel.ly"
\include "Tunes/YFN_FrostyMorning.ly"
\include "Tunes/YFN_Gallopede.ly"
\include "Tunes/YFN_GalwayHornpipe.ly"
\include "Tunes/YFN_GaryOwen.ly"
\include "Tunes/YFN_GaspeReel.ly"
\include "Tunes/YFN_GaspeReelAlt.ly"
\include "Tunes/YFN_GirlILeftBehind.ly"
\include "Tunes/YFN_GirlILeftBehindAlt.ly"
\include "Tunes/YFN_GoldenSlippers.ly"
\include "Tunes/YFN_GravelWalk.ly"
\include "Tunes/YFN_GreenWillis.ly"
\include "Tunes/YFN_GrowlingAndGrumbling.ly"
\include "Tunes/YFN_HarvestHome.ly"
\include "Tunes/YFN_HasteToTheWedding.ly"
\include "Tunes/YFN_HundredPipers.ly"
\include "Tunes/YFN_IndianPoint.ly"
\include "Tunes/YFN_JamieAllen.ly"
\include "Tunes/YFN_JayBird.ly"
\include "Tunes/YFN_JennyLind.ly"
\include "Tunes/YFN_JennysGone.ly"
\include "Tunes/YFN_JohnRyans.ly"
\include "Tunes/YFN_JuliaDelaneys.ly"
\include "Tunes/YFN_JuliannJohnson.ly"
\include "Tunes/YFN_JumpAtTheSun.ly"
\include "Tunes/YFN_JuneApple.ly"
\include "Tunes/YFN_KeshJig.ly"
\include "Tunes/YFN_KitchenGirl.ly"
\include "Tunes/YFN_LaBastrange.ly"
\include "Tunes/YFN_LaBastrangeAlt.ly"
\include "Tunes/YFN_LadyOfTheLake.ly"
\include "Tunes/YFN_LaMaison.ly"
\include "Tunes/YFN_LeviJacksonRag.ly"
\include "Tunes/YFN_Liberty.ly"
\include "Tunes/YFN_LittleBurntPotato.ly"
\include "Tunes/YFN_LizaJane.ly"
\include "Tunes/YFN_MairisWedding.ly"
\include "Tunes/YFN_MarchingThroughGeorgia.ly"
\include "Tunes/YFN_MarchOfStTimothy.ly"
% \include "Tunes/YFN_MarchOfStTimothyA.ly"
% \include "Tunes/YFN_MarchOfStTimothyBass.ly"
\include "Tunes/YFN_MartinOConnors.ly"
\include "Tunes/YFN_MasonsApron.ly"
\include "Tunes/YFN_MeetingWaters.ly"
\include "Tunes/YFN_MerryBlacksmith.ly"
\include "Tunes/YFN_MidnightMaze.ly"
\include "Tunes/YFN_MississippiSawyer.ly"
\include "Tunes/YFN_MissMcLoedsReel.ly"
\include "Tunes/YFN_MissMonagan.ly"
\include "Tunes/YFN_MontrealReel.ly"
\include "Tunes/YFN_MorpethRant.ly"
\include "Tunes/YFN_MyDarlingAsleep.ly"
\include "Tunes/YFN_NailThatCatfish.ly"
\include "Tunes/YFN_NeedleCase.ly"
\include "Tunes/YFN_NewCentury.ly"
\include "Tunes/YFN_OffSheGoes.ly"
\include "Tunes/YFN_OffToCalifornia.ly"
\include "Tunes/YFN_OldCopperPlate.ly"
\include "Tunes/YFN_OldFrench.ly"
\include "Tunes/YFN_OldGrayCat.ly"
\include "Tunes/YFN_OldJoeClark.ly"
\include "Tunes/YFN_OldJoeClarkAlt.ly"
\include "Tunes/YFN_OldMotherFlanigan.ly"
\include "Tunes/YFN_OutOnTheOcean.ly"
\include "Tunes/YFN_OverTheWaterfall.ly"
\include "Tunes/YFN_OverTheWaterfallAlt.ly"
\include "Tunes/YFN_Patty.ly"
\include "Tunes/YFN_PaysDeHaut.ly"
\include "Tunes/YFN_Petronella.ly"
\include "Tunes/YFN_PigAngle.ly"
\include "Tunes/YFN_PoorOldWoman.ly"
\include "Tunes/YFN_PrettyLittleDog.ly"
\include "Tunes/YFN_QuigleysReel.ly"
\include "Tunes/YFN_RagtimeAnnie.ly"
\include "Tunes/YFN_RandyWives.ly"
\include "Tunes/YFN_RedHairedBoy.ly"
\include "Tunes/YFN_Redwing.ly"
\include "Tunes/YFN_ReelJoseph.ly"
\include "Tunes/YFN_ReelSaintJean.ly"
\include "Tunes/YFN_ReelTiMe.ly"
\include "Tunes/YFN_RichmondCotillion.ly"
\include "Tunes/YFN_Ricketts.ly"
\include "Tunes/YFN_RidingOnALoadOfHay.ly"
\include "Tunes/YFN_RightsOfMan.ly"
\include "Tunes/YFN_RightsWomen.ly"
\include "Tunes/YFN_RoadToBoston.ly"
\include "Tunes/YFN_RoadToLisdoonvarna.ly"
\include "Tunes/YFN_RobinsBodhran.ly"
\include "Tunes/YFN_RockTheCradleJoe.ly"
\include "Tunes/YFN_RoseTreeI.ly"
\include "Tunes/YFN_RoseTreeII.ly"
\include "Tunes/YFN_RoundTheHorn.ly"
\include "Tunes/YFN_SageHen.ly"
\include "Tunes/YFN_SageHenB.ly"
\include "Tunes/YFN_SailorsWife.ly"
\include "Tunes/YFN_SaintAntoineReel.ly"
\include "Tunes/YFN_SandyRiverBelle.ly"
\include "Tunes/YFN_ScatterTheMud.ly"
\include "Tunes/YFN_ScatterTheMudOriginal.ly"
\include "Tunes/YFN_ScollaysReel.ly"
\include "Tunes/YFN_SenecaSquareDance.ly"
\include "Tunes/YFN_Serendipity.ly"
\include "Tunes/YFN_ShenandoahFalls_A.ly"
\include "Tunes/YFN_ShenandoahFalls.ly"
\include "Tunes/YFN_SmashTheWindows.ly"
\include "Tunes/YFN_SoldiersJoy.ly"
\include "Tunes/YFN_SoldiersJoyAlt.ly"
\include "Tunes/YFN_SoTheyTiedTheKnot.ly"
\include "Tunes/YFN_SouthOfTheJames.ly"
\include "Tunes/YFN_Spootiskerry.ly"
\include "Tunes/YFN_StAnnesReel.ly"
\include "Tunes/YFN_StAnnesReelAlt.ly"
\include "Tunes/YFN_StarOfMunster.ly"
\include "Tunes/YFN_StatenIsland.ly"
\include "Tunes/YFN_StephsReel.ly"
\include "Tunes/YFN_StJosephsReel.ly"
\include "Tunes/YFN_StonesRag.ly"
\include "Tunes/YFN_SwallowtailJig.ly"
\include "Tunes/YFN_SwallowtailReel.ly"
\include "Tunes/YFN_SwinginOnAGate.ly"
\include "Tunes/YFN_TailToddle.ly"
\include "Tunes/YFN_Tamlin.ly"
\include "Tunes/YFN_TamlinTiMe.ly"
\include "Tunes/YFN_TemperanceReel.ly"
\include "Tunes/YFN_TenPennyBit.ly"
\include "Tunes/YFN_TheGale.ly"
\include "Tunes/YFN_TheWren.ly"
\include "Tunes/YFN_TripToSligo.ly"
\include "Tunes/YFN_TurkeyInTheStraw.ly"
\include "Tunes/YFN_Tuttles.ly"
\include "Tunes/YFN_WalkerStreet.ly"
\include "Tunes/YFN_Waterbound.ly"
\include "Tunes/YFN_WhiskeyBeforeBreakfast.ly"
\include "Tunes/YFN_WhitePetticoat.ly"
\include "Tunes/YFN_Willafjord.ly"
\include "Tunes/YFN_WindThatShakes.ly"
\include "Tunes/YFN_YearOfJubilo.ly"
\include "Tunes/YFN_YearOfJubiloAlt.ly"
\include "Tunes/YFN_YouMarried.ly"
\include "Tunes/YFN_YurtInTheMeadow.ly"
\include "Tunes/YoungJane.ly"



% OUTPUT THE FIVE DIFFERENT VERSIONS
% each gets its own settings (clefName etc.) that are
% used in the makeScore function above


% STANDARD TREBLE CLEF VERSION
clefName = "treble"
fromPitch = c
toPitch = c
postTitleText = ""

\book {
  % Specify the name of the output file (the PDF file):
  \bookOutputName "YFN-collection-2-treble-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}

%{

% BASS CLEF VERSION
clefName = "bass"
fromPitch = c
toPitch = c,,
postTitleText = ""

\book {
  \bookOutputName "YFN-collection-2-bass-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}

% ALTO CLEF VERSION
clefName = "alto"
fromPitch = c
toPitch = c,
postTitleText = ""

\book {
  \bookOutputName "YFN-collection-2-alto-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}


% B-FLAT INSTRUMENT VERSION
clefName = "treble"
fromPitch = bes,
toPitch = c
postTitleText = " (B-flat instrument)"

\book {
  \bookOutputName "YFN-collection-2-B-flat-instrument"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}


% F INSTRUMENT VERSION
clefName = "treble"
fromPitch = f
toPitch = c
postTitleText = " (F instrument)"

\book {
  \bookOutputName "YFN-collection-2-F-instrument"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}

%}