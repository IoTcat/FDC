# Schematic Design

## General Information

![LT5512_circuit](/img/LT5512_circuit.png)

A typical FDC accept two input signal and output the combined signal at f1+f2 and f1-f2. This means that, besides the RF signal input, another low frequency vibration signal, which we called as LO signal, is also needed. In this project, the signal was input and output through BNC jacks. The IC was powered by 5V DC power supplier. 



## Design Steps

Six steps were conducted in the circuit design produrce. The first step is to select a Mixer IC, which should accpet UHF signal and need to be in stock in UK. We selected LT5512 IC which can support up to 3GHz signal in this case. Secondly, impedance matching is processed in order to match standard 50Ω input and 50Ω output. In this case, capacitors and inductors were utilized to design with the help of Smith chart and online design tools. Thirdly, a Low Pass Filter function was considered while design the impedance matching in the IF part. Then, Differcial Line Design was tried to optimized the performance of signal transmission. Additionally, simmulation was conducted with ADS to verify the circuit performance.

### Component Selection and Purchase
The first produrce of component selection is figure out what we really needed. In this case, a mixer, three BNC jacks and one PCB header are necessary, while others such as transformses, amplifier, filters are optional. After confirm what we needed (the schametic), component selection can be proceeded. During the component selection, it is common and sometimes unavoidly unable to find a expected component. When this happened, a new purchase list in corresponding with a redesign schematic should be proceeded.

![ic](../img/schematic.png)

### Filter Design
In downconverter case, the less the ripples on the bandwidth, the better performance can be expected. After weigth the performance of the filter and the difficulty of the PCB design, we have choosed the one order Butterworth filter as well as designed the schematic to be as few filter as possible.


### Impedance Matching
Impedance matching is considered so that the circuit can accept a standard 50 ohms input and support a 50 ohms output. This design is conducted in the meantime with the filter design. Online tools from Analog Devices was utilized and Shmith Chart was tried to varified the design. A 50:200 ohms Balun transformer was implemented in the IF part to match the impedance.

![ic](/img/simulation.png)

This picture shows the result of simulation of frequency response of the IF part. From this firgue, it can be figured out that the f1+f2 frequency, which is about 1.1GHz in this case, can be effectively blocked, while the f1-f2 passing.

### Differencial Line Design
As the LT5512 request a differencial RF input and IF output, several capacitiors was used to block the DC while a Balun was settled to transform IF signal from differencial to single side. 

### Simulation
ADS was used to check the expected performance of the design of impedance matching circuit. 


## Experience

The design of circuit is not something that can be done by once, instead, rolling of all the steps above is usual. In this case, we have designed more than three versions of the schematic.

![sch_v0](/img/sch_v0.png)

This figure shows the v0.0.1 version of the schematic, which works at 1.9GHz-170MHz. However, this did not be used because of a mistake that the Balun transformer we purchase at the first time can not work at 1.9GHz, which we did not realize it when we make the first component list in early January. Due to this small error, we redesign nearly the whole circuit in less than one week and change the working frequency to 610MHz-80MHz, as no substitutable components can be found on RS, Oncall and other supplier.


-----------------------------
☛[Go to the PCB Part blog](/part/pcb)