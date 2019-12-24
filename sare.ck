SinOsc s=> dac;
138.5 =>float tonic;
[1.0,1.125,1.250,1.333,1.5,1.666,1.875,2.0] @=>float ratios[];
[2.0,1.875,1.666,1.5,1.333,1.250,1.125,1.0] @=>float ratios2[];
for(0=>int i;i<8;i++)
{
    tonic * ratios[i]=>s.freq;
    second =>now;
    0.5=>s.gain;
}
for(0=>int i;i<8;i++)
{
    tonic * ratios2 [i]=>s.freq;
    second =>now;
    0.5=>s.gain;
}