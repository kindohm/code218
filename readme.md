# CODE218 (Lime)

This is the TidalCycles source code used to produce the tracks on
CODE218: 

- https://co-dependent.bandcamp.com/album/code218

## Notes

This code was used with a very customized MIDI setup. The MIDI Control Change code is tightly
coupled to the synth patches created in the Harmor VST. In general, the MIDI mappings follow
this convention:

- MIDI channel 1: drum machine, using `midinote` for kick and clap notes
- MIDI channel 15: Harmor VST
  - CC1: filter 1 cutoff
  - CC2: filter 2 cutoff
  - CC3: unison detune
  - CC4: prism
  - CC5: phaser mix
  - CC6: phaser width
  - CC7: phaser offset
  - CC100: Harmor A/B mix amount

## Software Versions

This code uses TidalCycles `0.9.9` along with the `1.0-dev` branch of
SuperDirt (specifically, commit `24d8ef6e`) in order to get the SuperCollider MIDI features.

- https://tidalcycles.org/
- https://github.com/musikinformatik/SuperDirt/tree/1.0-dev
