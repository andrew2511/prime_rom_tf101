.class public Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
.super Ljava/lang/Object;
.source "JCEPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10
    .parameter "algorithm"
    .parameter "oid"
    .parameter "type"
    .parameter "digest"
    .parameter "keySize"
    .parameter "ivSize"
    .parameter "pbeKeySpec"
    .parameter "param"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 40
    iput p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    .line 41
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    .line 42
    iput p5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    .line 43
    iput p6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    .line 44
    iput-object p7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    .line 45
    iput-object p8, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 46
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getDigest()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v1, :cond_1e

    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    instance-of v1, v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_19

    .line 66
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 73
    .local v0, kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 83
    .end local v0           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_18
    return-object v1

    .line 70
    .restart local p0
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .restart local v0       #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_14

    .line 77
    .end local v0           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1e
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_18

    .line 83
    :cond_2e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_18
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method getIvSize()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    return v0
.end method

.method getKeySize()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    return v0
.end method

.method public getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPassword()[C
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->type:I

    return v0
.end method

.method setTryWrongPKCS12Zero(Z)V
    .registers 2
    .parameter "tryWrong"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    .line 145
    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return v0
.end method
