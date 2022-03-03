int value[] = {1,2,3,4,5,6,7,8,9,10};
int nelem = 10;
int i, j;
int tmp;
for (i = 0; i < nelem-1; i++){
    for(j = i++; j < nelem; j++){
        if(value[i] < value[j]){
            tmp = value[i];
            value[i] = value[j];
            value[j] = tmp;
        }
    }
}

// registos em assembly -> ARQUITETURA DO PROGRAMA
// r1 -> address(value[i])
// r2 -> value(value[i])
// r3 -> address(value[j])
// r4 -> value(value[j])
// r5 -> value(nelem)
// r'5 -> value(nelem-1)
// r6 -> value(i)
// r7 -> value(j)
// r8 -> value(tmp) 
// r9 -> registo temporário para as condições
