# HALP
The official repository of the paper "**Remote Sensing Image Dehazing using Heterogeneous Atmospheric Light Prior**"



Remote sensing images (RSIs) captured in haze weather will suffer from serious quality degradation with color distortion and contrast reduction, which creates numerous challenges for the utilization of RSIs. To address these issues, this paper proposes a novel haze removal algorithm, named HALP, for visible RSIs based on a heterogeneous atmospheric light prior and side window filter. HALP is comprised of two key components. Firstly, given the large imaging space of RSIs, the atmospheric light is treated as a globally non-uniform distribution instead of a global constant. Therefore, a simple and effective method for non-uniform atmospheric light estimation is presented, which utilizes the brightest pixel color in each local image patch as the atmospheric light of the local region. Secondly, a side window filter-based transmission estimation algorithm is proposed, which can effectively suppress the block effect in the transmission map caused by the large window of the minimum filter used in the dark channel algorithm. Experiments on both real-world and synthetic remote sensing haze images demonstrate the effectiveness of HALP. In terms of no-reference and full-reference image quality assessments, HALP yields excellent results, outperforming existing state-of-the-art algorithms, including physics-based and neural network-based methods. The visual comparison of dehazed results also shows that HALP can restore degraded RSIs with uneven haze, producing clear images with rich details and natural colors.

<center>
<img src="./img/HALP.png" alt="HALP" />
</center>



## Dataset
1. For subjective evaluation and blind reference evaluation

    We constructed a Real-world Remote Sensing Haze Image Dataset (RRSHID), which consists of 277 haze-contaminated images manually selected from two classical remote sensing datasets, AID and DIOR. **Details in folder "RRSHID".**
2. For full-reference assessments

      - Haze1k: https://www.dropbox.com/s/k2i3p7puuwl2g59/Haze1k.zip?dl=0
      - DICE: https://pan.baidu.com/s/1h6SFWSnzH7GQJoM2UxO_ng

  

## Results

- Results for RRSHID

<table>
<tr>
	<td><img src="./img/hazy_img/AID_industrial_37.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/AID_industrial_37.jpg" width="100%" alt="HALP" /></td>
</tr>
    <tr>
	<td><img src="./img/hazy_img/DIOR_TEST_13004.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/DIOR_TEST_13004.jpg" width="100%" alt="HALP" /></td>
</tr>
    <tr>
	<td><img src="./img/hazy_img/AID_church_116.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/AID_church_116.jpg" width="100%" alt="HALP" /></td>
</tr>
</table>


- Results for natural scene images

<table>
<tr>
	<td><img src="./img/hazy_img/HazyDay.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/HazyDay.png" width="100%" alt="HALP" /></td>
</tr>
<tr>
	<td><img src="./img/hazy_img/house_input.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/house_input.png" width="100%" alt="HALP" /></td>
</tr>
<tr>
	<td><img src="./img/hazy_img/lviv_input.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/lviv_input.png" width="100%" alt="HALP" /></td>
</tr>
</table>


- Results for RICE

<table>
<tr>
	<td><img src="./img/hazy_img/RICE_269.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/RICE_269.png" width="100%" alt="HALP" /></td>
</tr>
</table>

- Results for Haze1k

<table>
<tr>
	<td><img src="./img/hazy_img/Haze1k_thin_375.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/Haze1k_thin_375.png" width="100%" alt="HALP" /></td>
</tr>
<tr>
	<td><img src="./img/hazy_img/Haze1k_moderate_3.png" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/Haze1k_moderate_3.png" width="100%" alt="HALP" /></td>
</tr>
</table>

- Heterogeneous atmospheric light and transmission

<table>
<tr>
	<td><img src="./img/hazy_img/AID_farmland_265.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/AID_farmland_265_T.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/AID_farmland_265_A.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/AID_farmland_265.jpg" width="100%" alt="HALP" /></td>
</tr>
<tr>
	<td><img src="./img/hazy_img/DIOR_TEST_12035.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/DIOR_TEST_12035_T.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/DIOR_TEST_12035_A.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/DIOR_TEST_12035.jpg" width="100%" alt="HALP" /></td>
</tr>
<tr>
	<td><img src="./img/hazy_img/DIOR_TEST_15104.jpg" width="100%" alt="HALP" /></td>
	<td><img src="./img/results/DIOR_TEST_15104_T.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/DIOR_TEST_15104_A.jpg" width="100%" alt="HALP" /></td>
    <td><img src="./img/results/DIOR_TEST_15104.jpg" width="100%" alt="HALP" /></td>
</tr>
</table>


**More results in the "img" folder.**



## Citation

If you find our work useful in your research, please cite:

```tex
@ARTICLE{10050029,
  author={He, Yufeng and Li, Cuili and Li, Xu},
  journal={IEEE Access}, 
  title={Remote Sensing Image Dehazing Using Heterogeneous Atmospheric Light Prior}, 
  year={2023},
  volume={11},
  pages={18805-18820},
  doi={10.1109/ACCESS.2023.3247967}
 }
```



## Acknowledgement

Code borrows from [SideWindowFilter](https://github.com/YuanhaoGong/SideWindowFilter) by [YuanhaoGong](https://github.com/YuanhaoGong). Thanks for sharing !





