#  DENSE SENSE: A novel approach utilizing an electron density augmented machine learning paradigm to understand a complex odour landscape

  ![Representation of QNN framework](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/30_ensemble_models/qnn.png)

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
[DMPNNpruned_without hydrogen_curated_GS_LF_merged_4812_QM_cleaned.csv](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/DMPNNpruned_without%20hydrogen_curated_GS_LF_merged_4812_QM_cleaned.csv) <br>
[curated_GS_LF_merged_4983.csv](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/curated_GS_LF_merged_4983.csv) <br>
[DMPNNpruned_graph_data_cleaned.npz](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/DMPNNpruned_graph_data_cleaned.npz) <br>
[graph_data_cleaned.npz](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/graph_data_cleaned.npz)  <br>

The above mentioned PyTorch data is created using: <code>Pyg_data_creator_for_cleaned.ipynb</code>.

# Models
<div align="justify"> We utilized various architecture of Graph neural
networks: message passing neural networks (MPNN), directed message passing neural net
(DMPNN) and graph convolutional neural networks (GCN). <br>

The results of the QNN model are impressive on this challenging odour label classification task given the fact that only electron localization and delocalization data was provided to the QNN model. DMPNN +LDM model gives us best results amongst all the GNN by achieving a validation score of 0.871 and is competitive with openPOM . <br>

We then employed an ensemble approach to combine graph neural networks for improved performance. We first explored combining DMPNN models, as they demonstrated the best results. We tested ensemble of 10 and 30 DMPNNs and aggregated their result by averaging out their predictions. AUROC metric was used to evaluate the model performance. We tested two cases where we varied random seeds and one without random seed variation. <br>

The notebooks for the 5 Fold Cross Validation for the above models are as follows:
* [DMPNN+LDM](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/5CV_DMPNN_LDM_40_epochs.ipynb)
* [GCN+LDM](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/5CV_GCN_LDM_40_epochs.ipynb)
* [MPNNN+LDM](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/5CV_LDM_POM_40_epoch.ipynb)
* [openPOM](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/5CV_POM_40_epochs.ipynb)

The notebooks for the ensemble of models are as follows:
* [Homogenous Bagging of GCN+MPNN+DMPNN with Random Seed = 42](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/bagging/gcn_pom_dmpnn_ensemble_homogenous_bagging%20_42.ipynb)
* [Homogenous Bagging of GCN+MPNN+DMPNN with Random Seed = 1](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/bagging/gcn_pom_dmpnn_ensemble_homogenous_bagging_1.ipynb)
* [10 DPMNNs](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/DMPNN_LDM_ensemble_homogenous_bagging_10.ipynb)
* [30 DMPNNs](https://github.com/CSIO-FPIL/Dense-Sense-ODOR/blob/main/DMPNN_LDM_ensemble_homogenous_bagging_30.ipynb)

# Explainability

<img width="858" alt="pheno_final1" src="https://github.com/user-attachments/assets/2c33c155-7466-49c1-9ef0-217dc52945bf" /> <br>


<div align="justify">We attempt to elucidate the structure-odour relationship using Intergrated Gradients on the molecular graphs. We have explained for the model that is using DMPNN graph featurizer <code>DMPNNFeaturizer()</code> and LDM data, for a given SMILE and odor label.The best way to validate explainability was by utilizing explainability analysis for compounds with functional group-based odor labels, i.e., ketonic, phenolic, etc. This is because
explainability for such odor labels is straightforward: the functional group is the part of
the molecule responsible for its odorous property. The explainability analysis must then
highlight the functional group as the odourgenic region of the molecule.
Our explainability analysis indeed found this to be true. We took the functional group
odor labels that our model was able to successfully predict (AUROC per label score >0.8). The code can be a found in this <code>Dense_Sense_Explainability_g1.ipynb</code> notebook.</div>

# Contributors
**Pinaki Saha**, University of Hertfordshire, UH Biocomputation Group, United Kingdom <br>
**Mrityunjay Sharma**, CSIR-CSIO, Chandigarh, India                
**Sarabeshwar Balaji**, Indian Institute of Science Education and Research Bhopal(IISERB), India <br>
**Aryan Amit Barsainyan**, National Institute of Technology Karnataka Surathkal, Karnataka, India<br>
**Ritesh Kumar**, CSIR-CSIO, Chandigarh, India<br>
**Volker Steuber**, University of Hertfordshire, UH Biocomputation Group, United Kingdom <br>
**Michael Schmuker**, Helmholtz-Gemienschaft, Berlin, Germany <br>
