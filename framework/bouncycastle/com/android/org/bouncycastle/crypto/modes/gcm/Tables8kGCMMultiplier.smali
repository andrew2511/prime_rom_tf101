.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private final M:[[[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x20

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 12
    .parameter "H"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 11
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 12
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 13
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v5

    aput-object v5, v4, v9

    .line 15
    const/4 v1, 0x4

    .local v1, j:I
    :goto_20
    if-lt v1, v8, :cond_3b

    .line 17
    new-array v3, v7, [I

    .line 18
    .local v3, tmp:[I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 21
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aput-object v3, v4, v1

    .line 15
    shr-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 25
    .end local v3           #tmp:[I
    :cond_3b
    new-array v3, v7, [I

    .line 26
    .restart local v3       #tmp:[I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 29
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v9

    .line 32
    const/4 v1, 0x4

    :goto_50
    if-lt v1, v8, :cond_6b

    .line 34
    new-array v3, v7, [I

    .line 35
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 38
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v1

    .line 32
    shr-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 41
    :cond_6b
    const/4 v0, 0x0

    .line 44
    .local v0, i:I
    :cond_6c
    const/4 v1, 0x2

    :goto_6d
    const/16 v4, 0x10

    if-ge v1, v4, :cond_95

    .line 46
    const/4 v2, 0x1

    .local v2, k:I
    :goto_72
    if-ge v2, v1, :cond_93

    .line 48
    new-array v3, v7, [I

    .line 49
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    add-int v5, v1, v2

    aput-object v3, v4, v5

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 44
    :cond_93
    add-int/2addr v1, v1

    goto :goto_6d

    .line 56
    .end local v2           #k:I
    :cond_95
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x20

    if-ne v0, v4, :cond_9c

    .line 58
    return-void

    .line 61
    :cond_9c
    if-le v0, v8, :cond_6c

    .line 63
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 64
    const/16 v1, 0x8

    :goto_a8
    if-lez v1, :cond_6c

    .line 66
    new-array v3, v7, [I

    .line 67
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    const/4 v5, 0x2

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    .line 70
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    .line 64
    shr-int/lit8 v1, v1, 0x1

    goto :goto_a8
.end method

.method public multiplyH([B)V
    .registers 12
    .parameter "x"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    new-array v2, v9, [I

    .line 81
    .local v2, z:[I
    const/16 v0, 0xf

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_62

    .line 84
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    aget-object v1, v3, v4

    .line 85
    .local v1, m:[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 86
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 87
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 88
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 90
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-object v1, v3, v4

    .line 91
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 92
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 93
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 94
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 81
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 97
    .end local v1           #m:[I
    :cond_62
    aget v3, v2, v5

    invoke-static {v3, p1, v5}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 98
    aget v3, v2, v6

    invoke-static {v3, p1, v9}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 99
    aget v3, v2, v7

    const/16 v4, 0x8

    invoke-static {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 100
    aget v3, v2, v8

    const/16 v4, 0xc

    invoke-static {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 101
    return-void
.end method
