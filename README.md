#  DENSE SENSE: A novel approach utilizing an electron density augmented machine learning paradigm to understand a complex odour landscape

<div align="justify"> We introduce a suite of generative modelling techniques to efficiently navigate and explore the complex landscapes of odor and the broader chemical space. The whole process involves four key stages: molecule generation, stringent sanitization checks for molecular validity, fragrance likeliness screening and odor prediction of the generated molecules. </div>

<br> The website developed for this work is available at [Exploring Fragrance Space using Generative Models](https://kumars8494.github.io/Exploring_Fragrance_Space_with_Generative_model/)</br>

# Getting started
Creating environment:
<br><code>conda create --name my_env --file requirements.txt</code></br>

# Data
The folder [data](https://github.com/CSIO-FPIL/generative-odor/tree/main/data) contains the results of different statistical tests on the distribution of generated molecules, organized by model in sub-folders named [ARGA](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/ARGA), [ARGVA](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/ARGVA), [diffusion](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/Diffusion), [GAE](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/GAE), [Transformer](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/Transformer), and [VGAE](https://github.com/CSIO-FPIL/generative-odor/tree/main/data/VGAE). Each of these model folders includes <code>GDB Criteria</code>, <code>KS_test</code>, and <code>rule of three</code>.

# Dataset for Training
The data files that are used for training are as follows:
<code>DMPNNpruned_without hydrogen_curated_GS_LF_merged_4812_QM_cleaned.csv</code> : file contains the data for the so and so for the so and so.....
<code>curated_GS_LF_merged_4983.csv</code> : This contains the SMILE and thier........
<code>DMPNNpruned_graph_data_cleaned.npz</code> : so and so...
<code>graph_data_cleaned.npz</code> : so and soo..  

The above mentioned PyTorch data is created using: <code>Pyg_data_creator_for_cleaned.ipynb</code>.

# Models


# Explainability
We elucidate the structure-odour relationship using Intergrated Gradients on the molecular graphs. We have explained for the model that is using graphs featurized by <code>DMPNNFeaturizer()</code> and LDM data, for a given SMILE and odor label.The code can be a found in this <code>Dense_Sense_Explainability_g1.ipynb</code> notebook.

# Figures
All the figures used in the paper are available in the [figures](https://github.com/CSIO-FPIL/generative-odor/tree/main/figures) folder. 

# Contributors
**Mrityunjay Sharma**, CSIR-CSIO, Chandigarh, India                
**Sarabeshwar Balaji**, Indian Institute of Science Education and Research Bhopal(IISERB), India <br>
**Pinaki Saha**, University of Hertfordshire, UH Biocomputation Group, United Kingdom <br>
**Ritesh Kumar**, CSIR-CSIO, Chandigarh, India
