# Polar Codes with Local-Global Decoding

We propose a coupled polar code architecture that supports both local and global decoding. This local-global construction is motivated by practical applications in data storage and transmission where reduced-latency recovery of sub-blocks of the coded information is required. Local decoding allows random access to sub-blocks of the full code block. When local decoding performance is insufficient, global decoding provides improved data reliability. The coupling scheme incorporates a systematic outer polar code and a partitioned mapping of the outer codeword to semipolarized bit-channels of the inner polar codes. Hope this code is useful for peer researchers. If you use this code or parts of it in your research, please kindly cite our paper:

- **Related publication 1:** Ziyuan Zhu, Wei Wu, and Paul H. Siegel, "[Polar Codes with Local-Global Decoding](https://ieeexplore.ieee.org/document/10051996)," *published in 2022 IEEE 56th Asilomar Conference on Signals, Systems, and Computers.*
- **Related publication 2:** Ziyuan Zhu, and Paul H. Siegel, "[Outer Code Designs for Augmented and Local-Global Polar Code Architectures](https://www.arxiv.org/abs/2402.04486)," *submitted to 2024 IEEE International Symposium on Information Theory (ISIT 2024).*

---

## Required Packages

- Matlab R2022 (or later)


## Some comments

- Some functions are overlapping. For instance, initPC1 to initPC8 are used to initialize the parameters for polar codes 1 to 8. The main content of these files is very similar, except for the parameter names. Readers can combine them into a single file. I didn't do it because of limited programming skill.
  - `LGP_2parts.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under global decoding for the local-global structure with M=2.
  - `LGP_2parts_notConnected.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under local decoding for the local-global structure with M=2.
  - `LGP_4parts.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under global decoding for the local-global structure with M=4.
  - `LGP_4parts_notConnected.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under local decoding for the local-global structure with M=4.
  - `LGP_8parts.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under global decoding for the local-global structure with M=8.
  - `LGP_8parts_notConnected.m` : Run this file to obtain the bit error rate (BER) and frame error rate (FER) results under local decoding for the local-global structure with M=8.
  
## Contact Information

Ziyuan Zhu:
   ```
ziz050@ucsd.edu
   ```
