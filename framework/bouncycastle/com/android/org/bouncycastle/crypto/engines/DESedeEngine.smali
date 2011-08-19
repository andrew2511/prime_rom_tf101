.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 16
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 26
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .parameter "encrypting"
    .parameter "params"

    .prologue
    const/16 v7, 0x18

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 40
    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-nez v4, :cond_2a

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid parameter passed to DESede init - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_2a
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 47
    .local v3, keyMaster:[B
    array-length v4, v3

    if-le v4, v7, :cond_3b

    .line 49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "key size greater than 24 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_3b
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 54
    new-array v0, v5, [B

    .line 55
    .local v0, key1:[B
    array-length v4, v0

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 58
    new-array v1, v5, [B

    .line 59
    .local v1, key2:[B
    array-length v4, v1

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    if-nez p1, :cond_6a

    const/4 v4, 0x1

    :goto_52
    invoke-virtual {p0, v4, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 62
    array-length v4, v3

    if-ne v4, v7, :cond_6c

    .line 64
    new-array v2, v5, [B

    .line 65
    .local v2, key3:[B
    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-virtual {p0, p1, v2}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 72
    .end local v2           #key3:[B
    :goto_69
    return-void

    :cond_6a
    move v4, v6

    .line 60
    goto :goto_52

    .line 70
    :cond_6c
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_69
.end method

.method public processBlock([BI[BI)I
    .registers 14
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez v0, :cond_f

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_f
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1c

    .line 97
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1c
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_29

    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_29
    new-array v4, v8, [B

    .line 107
    .local v4, temp:[B
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_48

    .line 109
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 110
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 120
    :goto_47
    return v8

    .line 115
    :cond_48
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 116
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 117
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v2, p0

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_47
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method
