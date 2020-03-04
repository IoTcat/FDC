# PCB Design

> Software used: Altium Designer V20.0.1 Eagle CAD
> Version control: Git and Github


## Components Library
Before the PCB design, the component library of the schematic and the component library of the PCB must be created. In order to ensure the accuracy of component package specifications including footprint, most packages in the PCB component library were imported from the supplier's official website. Other components which cannot be found from the official website were import from Github. 

## PCB structure design and layout
Due to the small number of PCB design components and the complexity of the circuit, single-layer boards were selected to simplify design and production.
Because the radio frequency (RF) circuit is a distributed parameter circuit, it is easy to produce a coupling effect in the actual work of the circuit. Therefore, in the actual PCB design, it will be found that the interference radiation in the circuit is difficult to control.
For example, problems such as mutual interference between digital circuits and analog circuits, noise interference from power supplies, and interference caused by unreasonable ground lines. 
In the process of PCB layout, we mainly refer to the data sheet of the integrated circuit and the circuit layout of the schematic.
Drawback: Many RF PCB layout rules are ignored during the layout process.
e.g. Silk screen design rule in RF PCB design 

## PCB routing
Once the basic placement has been completed, the next stage of the PCB design is to route the connections between all the components. The first routing uses the software's auto-routing function, then repair the wires according to the specific components and circuits.
The overall requirements for wiring are: RF signal traces are short and straight, reducing abrupt changes in the line, fewer holes are punched during routing, and they do not intersect with other signal lines. As much as possible, add ground vias around the RF signal lines.
After designing the routing, pads, and vias, a DRC (Design Rule Check) should be performed. In the inspection results, the differences between the designed graph and the defined rules are listed in detail, and the networks that do not meet the requirements can be found.

## Copper plating
The main purpose of copper plating is to improve the anti-interference ability of the circuit. At the same time, it has great benefits for PCB heat dissipation and PCB strength. Copper grounding can also serve as a shield.
In high-frequency circuits, a ground (GND) copper isolation shield is required. Therefore, a large area of copper is applied on the bottom layer to connect all ground wires. For the top layer, the circuit requires strict impedance control, and copper plating is likely to affect impedance control due to distributed capacitance. The wiring density around the integrated circuit is high, and the excessive copper separation may affect grounding.
