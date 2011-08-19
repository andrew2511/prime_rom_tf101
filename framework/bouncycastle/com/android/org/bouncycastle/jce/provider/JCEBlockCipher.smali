.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndTwofish;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd128BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES3Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$Blowfish;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$DESede;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7
    .parameter "engine"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 111
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 115
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 116
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 126
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 8
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 111
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 115
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 116
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 135
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 136
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .registers 8
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 111
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 115
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 116
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 145
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 146
    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .registers 3
    .parameter "modeName"

    .prologue
    .line 773
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 15
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v7, 0x0

    .line 744
    .local v7, len:I
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v8

    .line 746
    .local v8, outputLen:I
    add-int v0, v8, p5

    array-length v1, p4

    if-le v0, v1, :cond_2b

    .line 747
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_2b
    if-eqz p3, :cond_38

    .line 753
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 758
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    add-int v1, p5, v7

    invoke-interface {v0, p4, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_3f
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_38 .. :try_end_3f} :catch_42
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_38 .. :try_end_3f} :catch_4e

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 760
    :catch_42
    move-exception v0

    move-object v6, v0

    .line 762
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_4e
    move-exception v0

    move-object v6, v0

    .line 766
    .local v6, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 697
    const/4 v7, 0x0

    .line 698
    .local v7, len:I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 700
    .local v4, tmp:[B
    if-eqz p3, :cond_13

    .line 702
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 707
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v4, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_18
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_13 .. :try_end_18} :catch_1f
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_13 .. :try_end_18} :catch_2b

    move-result v0

    add-int/2addr v7, v0

    .line 718
    array-length v0, v4

    if-ne v7, v0, :cond_37

    move-object v0, v4

    .line 727
    :goto_1e
    return-object v0

    .line 709
    :catch_1f
    move-exception v0

    move-object v6, v0

    .line 711
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_2b
    move-exception v0

    move-object v6, v0

    .line 715
    .local v6, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    :cond_37
    new-array v8, v7, [B

    .line 725
    .local v8, out:[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v8

    .line 727
    goto :goto_1e
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 172
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_1b

    .line 174
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_22

    .line 178
    :try_start_a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 179
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1e

    .line 207
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1d
    return-object v2

    .line 181
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1d

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :cond_22
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1b

    .line 188
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3f

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_3f
    :try_start_3f
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 198
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_52} :catch_53

    goto :goto_1b

    .line 200
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 202
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 597
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_34

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_11

    .line 603
    :try_start_9
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v1

    .line 612
    :cond_11
    if-nez v1, :cond_34

    .line 614
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :catch_30
    move-exception v2

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 618
    .end local v0           #i:I
    :cond_34
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 620
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 621
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 631
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 637
    return-void

    .line 633
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 635
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 19
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 388
    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 389
    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 390
    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 395
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move v10, v0

    if-nez v10, :cond_32

    .line 397
    new-instance v10, Ljava/security/InvalidKeyException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Key for algorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not suitable for symmetric enryption."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 413
    :cond_32
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move v10, v0

    if-eqz v10, :cond_108

    .line 415
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v6, v0

    .line 417
    .local v6, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    if-eqz v10, :cond_d6

    .line 419
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 426
    :goto_4e
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v10

    if-eqz v10, :cond_de

    .line 428
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .line 429
    .local v8, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v10, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v12

    invoke-direct {v10, v11, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 441
    :goto_67
    instance-of v10, v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v10, :cond_71

    .line 443
    move-object v0, v8

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 538
    .end local v6           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_71
    :goto_71
    iget v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v10, :cond_1c5

    instance-of v10, v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v10, :cond_1c5

    .line 540
    move-object/from16 v5, p4

    .line 542
    .local v5, ivRandom:Ljava/security/SecureRandom;
    if-nez v5, :cond_82

    .line 544
    new-instance v5, Ljava/security/SecureRandom;

    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 547
    .restart local v5       #ivRandom:Ljava/security/SecureRandom;
    :cond_82
    if-eq p1, v13, :cond_87

    const/4 v10, 0x3

    if-ne p1, v10, :cond_19a

    .line 549
    :cond_87
    iget v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v4, v10, [B

    .line 551
    .local v4, iv:[B
    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 552
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v9, v8, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 553
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v9, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v9

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 561
    .end local v4           #iv:[B
    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    :goto_99
    if-eqz p4, :cond_1c2

    iget-boolean v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v10, :cond_1c2

    .line 563
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 568
    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_a8
    packed-switch p1, :pswitch_data_1c8

    .line 579
    :try_start_ab
    new-instance v10, Ljava/security/InvalidParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown opmode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " passed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ca} :catch_ca

    .line 582
    :catch_ca
    move-exception v10

    move-object v3, v10

    .line 584
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 423
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v6       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_d6
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_4e

    .line 431
    :cond_de
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/PBEParameterSpec;

    move v10, v0

    if-eqz v10, :cond_100

    .line 433
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v10, v0

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 434
    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v10}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v10

    move-object v0, v6

    move-object/from16 v1, p3

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_67

    .line 438
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_100
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    const-string v11, "PBE requires PBE parameters to be set."

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 446
    .end local v6           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_108
    if-nez p3, :cond_115

    .line 448
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_71

    .line 450
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_115
    move-object/from16 v0, p3

    instance-of v0, v0, Ljavax/crypto/spec/IvParameterSpec;

    move v10, v0

    if-eqz v10, :cond_192

    .line 452
    iget v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v10, :cond_171

    .line 454
    move-object/from16 v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v7, v0

    .line 456
    .local v7, p:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v10

    array-length v10, v10

    iget v11, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v10, v11, :cond_157

    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_157

    .line 458
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IV must be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes long."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 461
    :cond_157
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 462
    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v8

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v10, v0

    iput-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_71

    .line 466
    .end local v7           #p:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_171
    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v10, :cond_187

    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v11, "ECB"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_187

    .line 468
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    const-string v11, "ECB mode does not use an IV"

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 471
    :cond_187
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_71

    .line 535
    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_192
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    const-string v11, "unknown parameter type."

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 555
    .restart local v5       #ivRandom:Ljava/security/SecureRandom;
    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_19a
    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v10}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PGPCFB"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_1c5

    .line 557
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    const-string v11, "no IV set when one expected"

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 572
    .end local v5           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_1b4
    :try_start_1b4
    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v11, 0x1

    invoke-interface {v10, v11, v8}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 586
    :goto_1ba
    return-void

    .line 576
    :pswitch_1bb
    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v8}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c1} :catch_ca

    goto :goto_1ba

    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1c2
    move-object v8, v9

    .end local v9           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_a8

    :cond_1c5
    move-object v9, v8

    .end local v8           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_99

    .line 568
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_1bb
        :pswitch_1b4
        :pswitch_1bb
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 7
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 214
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "ECB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 218
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 219
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 321
    :goto_1d
    return-void

    .line 221
    :cond_1e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 223
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 224
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_1d

    .line 227
    :cond_3f
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 229
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 230
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_72

    .line 232
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, wordSize:I
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_1d

    .line 239
    .end local v0           #wordSize:I
    :cond_72
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_1d

    .line 243
    :cond_89
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 245
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 246
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_bd

    .line 248
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .restart local v0       #wordSize:I
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 255
    .end local v0           #wordSize:I
    :cond_bd
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 275
    :cond_d5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "SIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 277
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 278
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_f5

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_f5
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 285
    :cond_10a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 287
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 288
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 291
    :cond_131
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GOFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 293
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 294
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 297
    :cond_158
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 299
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 300
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 302
    :cond_17f
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 304
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 305
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 307
    :cond_1a1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "EAX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 309
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 310
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 312
    :cond_1c3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 314
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 315
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_1d

    .line 319
    :cond_1e5
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, paddingName:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 331
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 333
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 377
    :cond_26
    :goto_26
    return-void

    .line 336
    :cond_27
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 338
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_26

    .line 342
    :cond_42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 344
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 346
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_55
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 350
    :cond_65
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_26

    .line 352
    :cond_73
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 354
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_26

    .line 356
    :cond_8e
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 358
    :cond_9e
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_26

    .line 360
    :cond_b2
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 362
    :cond_c2
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_26

    .line 364
    :cond_d6
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 366
    :cond_e6
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_26

    .line 368
    :cond_fa
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 370
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_26

    .line 374
    :cond_116
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_a
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    return v0

    .line 685
    :catch_c
    move-exception v0

    move-object v6, v0

    .line 687
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 20
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v14

    .line 646
    .local v14, length:I
    if-lez v14, :cond_32

    .line 648
    new-array v6, v14, [B

    .line 650
    .local v6, out:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v2, v0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v13

    .line 652
    .local v13, len:I
    if-nez v13, :cond_24

    .line 654
    const/4 v2, 0x0

    .line 670
    .end local v6           #out:[B
    .end local v13           #len:I
    :goto_23
    return-object v2

    .line 656
    .restart local v6       #out:[B
    .restart local v13       #len:I
    :cond_24
    array-length v2, v6

    if-eq v13, v2, :cond_30

    .line 658
    new-array v15, v13, [B

    .line 660
    .local v15, tmp:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v15, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v15

    .line 662
    goto :goto_23

    .end local v15           #tmp:[B
    :cond_30
    move-object v2, v6

    .line 665
    goto :goto_23

    .line 668
    .end local v6           #out:[B
    .end local v13           #len:I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v7, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface/range {v7 .. v12}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 670
    const/4 v2, 0x0

    goto :goto_23
.end method
