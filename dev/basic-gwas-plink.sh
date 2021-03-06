geno=agrosavia-genotype-FLT-plink
pheno=agrosavia-phenotype-FLT.plink


echo ""
echo "-----------------------------------------------------"
echo "-----------------------------------------------------"
CMM="plink --file $geno --make-bed --out $geno-bin"
echo -e "\n>>> " $CMM "\n"
eval $CMM

CMM="plink --bfile $geno-bin  --linear --assoc --adjust --all-pheno --pheno $pheno --allow-no-sex --out $geno"
echo -e "\n>>> " $CMM "\n"
eval $CMM
