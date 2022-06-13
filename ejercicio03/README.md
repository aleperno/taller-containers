`bash compare.sh`

La salida muestra

```
diff alpine.txt fabric.txt
sha256:73046094a9b835e443af1a9d736fcfc11a994107500e474d0abf39	sha256:73046094a9b835e443af1a9d736fcfc11a994107500e474d0abf39
sha256:298c3bb2664fb7f8514ecdde8b76c0ca95c7c7b82eaa326a7e9661 |	sha256:7884dc8a73eb153770c61d327c027df411ea035bb2292a0a753734
sha256:8bc7bbcd76b68a51a3b70de9f19faed58f9c0795802dbff98de584 |	sha256:717d137b16f996bf59af63c2abfd89b69faec166381549203c1439
sha256:07f83dc33f640a098b67a7587dfc42f0e91f3b21aa08a7a02e613e |	sha256:b85e653858e97c56eedb2e19e225c482cbad71fd54f90059c0da3c
                                                              >	sha256:f42a66141db68550a56f7b8c4cd9e2f0127d94accfe77e124f4b68
                                                              >	sha256:ad275ed181794a5e37d0b3964e23ecedbd272a03ba26215f8d83de
                                                              >	sha256:dd69ad62f09595f6c7ffa79438b9e7b3f0135a8d8d3e425c1bc37c
                                                              >	sha256:8bef50a12deaffef57f54aaf2facddce8c04ea9253efe8afd33c44
                                                              >	sha256:b4b541fa416f1d2f1d983b11c28cb1a91e3c09167cabb0cfd29fcd
```

Vemos que fabric parece ser una extensión de alpine, o al menos posee los primeros 4 layers en común
