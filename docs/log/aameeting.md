# The first week meeting
>[x] `---30/01/2020  by Yimian Liu`   
>[x] `Participaants: Boyao Yang, Weizhou Wen, Yimian Liu, Yidi Song`   
>[x] `Location: EE 5 floor AA office`   

## Outline
 - Figure out the key **params of FDC**
 - Think how to **measure** these params
 - There might be a week to wait for the SMT
 - In the waiting time, figure out **measure/test procedure and plan**
 - Always think about the **Report**
 - Use blog to provide `evidence` of proof
 - Its better to conduct the proj **document-oriented** with a check list

## Technical Suggestions
 - **Do not** need a bandpass filter at input
 - **Do not** need a amplifer at input and output
 - May need a bandpass near output
 - Think how to design the output impandance to be ***50ohms***
 - The output bandpass may use **butterworth**
 - The gain can be not considered
 - The input can be designed to be any range between `300M-3GHz`, `1850-1910MHz` is ok



------------------------------


# Second AA Meeting
>[x] ---06/02/2020 by Yidi Song, Yimian Liu     
>[x] Participaants: Boyao Yang, Weizhou Wen, Yimian Liu, Yidi Song   
>[x] Location: EE 5 floor AA office   

## Ques
 - LT5512 spice models
 - the size and layers of PCB
 - Design details about IF LPF
 - BNC adapter

## Techninal Suggestions    
- Use spice to simulate
- Find some similar IC simulation models
- Set up the IC by what we want to test
- Remove all unnecessary Filter and only leave mixer
- Altium Designer is recommanded to use
- Contact lab members to find out the port of spectrum analyzer
- Buy SMA-BNC adapter if necessary
- Components list ASAP, do not suggest to buy by ourselves


------------------------------

# Third AA Meeting
>[x] ---13/02/2020 by Yimian Liu     
>[x] Participaants: Boyao Yang, Weizhou Wen, Yimian Liu, Yidi Song   
>[x] Location: EE 5 floor AA office   

## Ques
 - Ques about the usage of resistance in demo
 - Ques about the impedance matching
 - Ques about PCB differentical line design

## Techninal Suggestions    
- Resistance is used to perfect the circuit
- impedance match sometimes do not really necessary in this case
- just make sure that there are input and output


-------------------------------------------------

# Fourth AA Meeting
>[x] ---20/02/2020 by Yimian Liu     
>[x] Participaants: Boyao Yang, Weizhou Wen, Yimian Liu, Yidi Song   
>[x] Location: EE 5 floor AA office   

## Ques
 - PCB design problems
 - convert gergle to brp
 - how to submit PCB design

## Techninal Suggestions    
- Place through hole alone the high frequency line
- Use Laying copper to ground most place
- Check the minimum width of wire


-----------------------------
☛[Go to Group Meeting Log](/log/groupmeeting)