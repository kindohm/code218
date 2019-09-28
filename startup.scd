// requires SuperDirt 1.0-dev, as of 2018-08-30

(
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;

s.waitForBoot {
	~dirt = SuperDirt(2, s);
	s.sync;
	~dirt.start(57120, [0, 0]);
};

s.latency = 0.2;
);


(
MIDIClient.init;
MIDIClient.list; 
)

~midiOut = MIDIOut.newByName("Focusrite USB MIDI", "Focusrite USB MIDI");
~midiOut.latency = 0.45;
~dirt.soundLibrary.addMIDI(\midi, ~ midiOut);
