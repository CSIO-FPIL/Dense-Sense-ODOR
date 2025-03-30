#  DENSE SENSE: A novel approach utilizing an electron density augmented machine learning paradigm to understand a complex odour landscape


<div align="justify"> Till date there is only one crystal structure of human odour receptor deposited in PDB
(8F76), which has been obtained via cryo- EM. The dearth of crystal structure limits
structure based analysis of odour receptors, this forces us to look into direction of ligand
based ML approaches which can be used for predicting odorant properties for molecules
thus providing us an insight into the world of olfaction. At present the current state
of art model given by Lee et al which is graph neural networks ensemble has score
(5 fold CV) 0.89.In this work we synergistically combine Quantum Mechanics(QM)
with graph neural networks to get an improved model. Our findings underscore the
possibility of this methodology in predicting odour perception directly from QM data,
offering a novel approach in the Machine learning space to understand olfaction. </div>



# Getting started
Creating environment:
<br><code>conda create --name my_env --file requirements.txt</code></br>

# Dataset for Training
The data files that are used for training are as follows:<br>
<code>DMPNNpruned_without hydrogen_curated_GS_LF_merged_4812_QM_cleaned.csv</code> : file contains the data for the so and so for the so and so..... <br>
<code>curated_GS_LF_merged_4983.csv</code> : This contains the SMILE and thier........<br>
<code>DMPNNpruned_graph_data_cleaned.npz</code> : so and so...<br>
<code>graph_data_cleaned.npz</code> : so and soo..  <br>

The above mentioned PyTorch data is created using: <code>Pyg_data_creator_for_cleaned.ipynb</code>.

# Models


# Explainability
We attempt to elucidate the structure-odour relationship using Intergrated Gradients on the molecular graphs. We have explained for the model that is using DMPNN graph featurizedr <code>DMPNNFeaturizer()</code> and LDM data, for a given SMILE and odor label.The best way to validate explainability was by utilizing explainability analysis for com-
pounds with functional group-based odor labels, i.e., ketonic, phenolic, etc. This is because
explainability for such odor labels is straightforward: the functional group is the part of
the molecule responsible for its odorous property. The explainability analysis must then
highlight the functional group as the odourgenic region of the molecule.
Our explainability analysis indeed found this to be true. We took the functional group
odor labels that our model was able to successfully predict (AUROC per label score >0.8). The code can be a found in this <code>Dense_Sense_Explainability_g1.ipynb</code> notebook.

# Figures
All the figures used in the paper are available in the [figures](https://github.com/CSIO-FPIL/generative-odor/tree/main/figures) folder. 

# Contributors
**Mrityunjay Sharma**, CSIR-CSIO, Chandigarh, India                
**Sarabeshwar Balaji**, Indian Institute of Science Education and Research Bhopal(IISERB), India <br>
**Pinaki Saha**, University of Hertfordshire, UH Biocomputation Group, United Kingdom <br>
**Ritesh Kumar**, CSIR-CSIO, Chandigarh, India
