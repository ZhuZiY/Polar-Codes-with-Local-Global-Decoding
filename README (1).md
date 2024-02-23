# Outer Code Designs for Augmented and Local-Global Polar Code Architectures

We propose two novel methods to design outer polar codes for concatenated polar code architectures. These methods include a stopping set (SS) construction and a nonstationary density evolution (NDE) construction. Simulation results demonstrate the advantage of these methods over previously proposed constructions based on density evolution (DE) and LLR evolution. Hope this code is useful for peer researchers. If you use this code or parts of it in your research, please kindly cite our paper:

- **Related publication 1:** Ziyuan Zhu, and Paul H. Siegel, "[Outer Code Designs for Augmented and Local-Global Polar Code Architectures](https://www.arxiv.org/abs/2402.04486)," *submitted to 2024 IEEE International Symposium on Information Theory (ISIT 2024).*
- **Related publication 2:** Ziyuan Zhu, Wei Wu, and Paul H. Siegel, "[Polar Codes with Local-Global Decoding](https://ieeexplore.ieee.org/document/10051996)," *published in 2022 IEEE 56th Asilomar Conference on Signals, Systems, and Computers.*

---

## Required Packages

- Matlab R2022 (or later)

<!---
## Parameters

- Users need to customize the *config.py* and *Polar-NN-MULT.ipynb* as
  - `N` : Block length 
  - `K` : Information length
  - `ebn0` : Desired SNR range 
  - `numOfWord` : Desired batch size 
  - `bp_iter_num` : The number of iteration for BP
  - `RNN` : Whether using recurrent architecture (1 = yes)
  - `quantize_weight` : Different mechanism for weight quantization (0 for non-quantize, 1 for normal, 2 for binarized, 3 for bin, 4 for binarized bin)
  - `bin_bit` : The number of different value
  - `binary_prec` : The number of weight precision (binary_prec must >= bin_bit)
-->
## Contact Information

Ziyuan Zhu:
   ```
ziz050@ucsd.edu
   ```
