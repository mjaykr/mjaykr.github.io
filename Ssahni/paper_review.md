# introduction Section
% I Will read abstract at the last

## Comment
1. The introduction should state the problem / objective more explicitly. It is clear that you aim to fill a gap in the literature with your research on the sintering behavior of Fe35Ni nanopowders, but the significance of this study is not clearly stated. Why is it important to understand this process? Who will benefit from it, and how? Answers to these questions will provide a more solid justification for your study.

2. While you provide an extensive literature review on sintering studies conducted on other materials, it would be helpful to provide more background on Fe-Ni alloys and their specific behaviors or properties that make them unique or interesting to study in the context of sintering.

3. Explicitly state the unique contributions of your work. It's good to state how your work differs from the previous studies mentioned.

4. The phrase "MD is a powerful method to investigate the physical [11,12], mechanical [13–15] and sintering phenomena [16–19] for different materials" might be clarified with the use of "properties" after "physical" and "mechanical" for better understanding.

5. Make sure that all the abbreviations you use are explained upon first use. (I saw abstract the abbreiviations but I think abstract can have abbreviated form!)

6. In the context of MD simulation, mentioning specific methods or models you will use (like EAM) would add clarity.


## Typo and Grammar Correction

1. "Fe-Ni Invar alloys are known for their lowest thermal expansion coefficient value..." should be "Fe-Ni Invar alloys are known for having the lowest thermal expansion coefficient value..."

2. "...and have widely used in precision instruments..." should be "...and have been widely used in precision instruments..."

3. "Hu et al.[18] analysis of the melting and sintering process of silver (Ag) nanoparticles..." should be "Hu et al.[18] analyzed the melting and sintering process of silver (Ag) nanoparticles..."

4. The phrase "Similarly, Nandy et al. [22] perform the MD simulation..." should be in the past tense, like "Similarly, Nandy et al. [22] performed the MD simulation..."

5. Replace "As these alloys of varying composition exhibit a variety of properties" with "These alloys, with their varying compositions, exhibit a wide range of properties".

6. Replace "However, their tendency to coarsen during the processing of powders or materials makes it difficult for them to maintain nanostructures" with "However, the tendency of these materials to coarsen during powder or material processing complicates the maintenance of their nanostructures".

7. Replace "Nanoparticles have much higher surface curvature and surface energy than bulk particles, which helps the sintering process and makes the process different from that of micro /millimeter particles." with "Nanoparticles, having a much higher surface curvature and surface energy than bulk particles, facilitate the sintering process, distinguishing it from that involving micro/millimeter particles".


# Computational Methodology

## Comments

1. Before 2.1 starts, it might benefit from a brief overview or summary at the beginning, introducing the reader to the main aspects of the computational approach that will be explained in the subsequent paragraphs. This would give the reader a "roadmap" of the methodology.

2. Bro, the section is rich in mathematical details and physical concepts, it seems to lack a discussion of the limitations or potential sources of error in the computational methodology. Addressing the limitations of the methods used would add to the balance and rigor of the paper.

3. you mentions the use of the EAM potential to describe the atomic interactions between Fe and Ni atoms. However, it does not provide any reference or source for the specific potential used, which could be a technical shortcoming. Depending on the implementation, potentials can significantly impact simulation results.

4. "The temperature was increased gradually from 300 K to 1593 K at the rate of 0.1 K/ps" - While it might be correct, please make sure the heating rate is not too high, as it can lead to nonequilibrium states.

5. Please mention clearly about the numerical integration scheme (e.g., Verlet, velocity Verlet, etc.) and timestep used in the MD simulations.

6. I believe you should mention how the initial configurations for the MD simulations were created and how equilibration was performed before production runs.

7. Repetition: There are several points in the text where information is repeated unnecessarily, which can make the article longer and more complex than it needs to be. (example is at the end of typo and grammar section)

8. "The driving force for the sintering of nanoparticles is inversely proportional to the particle size." This statement may need some clarification. In general, smaller particles have a higher surface energy, which can promote sintering. However, saying that the driving force for sintering is "inversely proportional" to particle size may oversimplify the relationship, as other factors can also play a significant role in sintering.

9. When discussing the Radial Distribution Function (RDF), it would be beneficial to provide a more detailed explanation of how the RDF relates to the atomic structure during sintering. For example, what does it mean when the RDF peaks broaden, and how does this relate to the transformation from a long-range order structure to a short-range disorder structure?

10. The method of calculating the diffusion coefficient using Einstein's equation could be described in more detail. Specifically, how is the mean square displacement (MSD) calculated, and how is the limit as t goes to infinity applied in practice?

11. 


## ## Typo and Grammar Correction

1. In this sentence: "The EAM potential was employed to describe the atomistic interactions between the Fe and Ni atoms." - I would suggest using 'used' instead of 'employed' to keep language simple and clear.

2. "Fe and Ni atoms is 0.55 nm and 0.52 nm, respectively." - should be "Fe and Ni atoms are 0.55 nm and 0.52 nm, respectively."

3. "Thus, MD is a powerful tool which is used to study the structure-property relationships." - Consider rephrasing this to "Thus, MD is a powerful tool used for studying structure-property relationships."

4. "The neck formed during the holding period remains the same during the cooling period." --> "The neck formed during the holding period remains unchanged during the cooling period."

5. "The atomic movements during sintering were examined utilizing vector diagrams to further explain the driving force of nanoparticle sintering." -> "The atomic movements during sintering were examined using vector diagrams to further elucidate the driving force behind nanoparticle sintering."

6. "Conventionally, the sintering process is characterized by using sintered neck growth (radius ratio) and shrinkage ratio." -> "Conventionally, the sintering process is characterized by the growth of the sintered neck (expressed as a radius ratio) and the shrinkage ratio."



**Repetation example**

1. In the second part of the article, you mention twice, albeit in slightly different words, that a shrinkage ratio and radius ratio were used to characterize the sintering process.

Repetitive Text 1:
"Conventionally, the sintering process is characterized by using sintered neck growth (radius ratio) and shrinkage ratio."

Repetitive Text 2:
"Conventionally, the shrinkage ratio and radius ratio have been used to define the progression of sintering."

It would be more effective to consolidate these two statements into one, making it clear that both the shrinkage ratio and radius ratio are conventional metrics for characterizing the sintering process.


2. The phrase "atomic movements during sintering" is also repeated within two consecutive sentences:
Repetitive Text 3:
"The atomic movements during sintering were examined utilizing vector diagrams..."

Repetitive Text 4:
"The atomic movements during sintering were also traced by calculating..."

These could be combined into a single sentence for clarity and to avoid redundancy.

3. The concept of "diffusion coefficients" is introduced twice in slightly different contexts.
Repetitive Text 5:
"In the second part of the study, diffusion coefficients were calculated using Einstein’s equation..."

Repetitive Text 6:
"Diffusion coefficients calculated from the slope of the MSD..."


-- Check if you can restructure to avoid repeating the same idea.
The diffusion coefficient is an important part of the study, so its introduction and explanation should be clear and concise.


4. The concept of "necking" or "neck formation" during the sintering process is explained multiple times in the text. For example:

"The results showed that during the heating period, the particles form a neck..."

"It is noted that the necking between the particles occurs during the heating period..."

"The neck formed during the holding period remains the same during the cooling period..."

You could condense this information into a single, more comprehensive explanation of neck formation during the different stages of the sintering process, and then reference it later as needed.

5. Similarly, there's repetition in the description of atomic movement and displacement. For instance:

"The atomic movements during sintering were examined utilizing vector diagrams to further explain the driving force of nanoparticle sintering."

"The atomic displacement was calculated, and it was observed that atoms displace during the sintering process."

Here, it might be possible to merge these two statements into one, providing a more streamlined explanation of how atomic displacement was studied and what findings were observed.
