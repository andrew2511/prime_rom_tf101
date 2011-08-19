.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I

.field private t:I

.field private x:Lcom/android/org/bouncycastle/math/ec/IntArray;


# direct methods
.method private constructor <init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V
    .registers 7
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "x"

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 913
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 914
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 915
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 916
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 917
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 918
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 920
    if-nez p3, :cond_1b

    if-nez p4, :cond_1b

    .line 922
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 929
    :goto_1a
    return-void

    .line 926
    :cond_1b
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_1a
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .registers 8
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "x"

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 863
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 864
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v0, p5, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 866
    if-nez p3, :cond_27

    if-nez p4, :cond_27

    .line 868
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 885
    :goto_19
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3f

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_27
    if-lt p3, p4, :cond_31

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_31
    if-gtz p3, :cond_3b

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_3b
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_19

    .line 890
    :cond_3f
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 891
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 892
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 893
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 894
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .registers 10
    .parameter "m"
    .parameter "k"
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    .line 908
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 909
    return-void
.end method

.method public static checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 961
    instance-of v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v3, :cond_8

    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_10

    .line 963
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 967
    :cond_10
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v1, v0

    .line 968
    .local v1, aF2m:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v2, v0

    .line 970
    .local v2, bF2m:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_30

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v3, v4, :cond_30

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v3, v4, :cond_30

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v4, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-eq v3, v4, :cond_38

    .line 973
    :cond_30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Field elements are not elements of the same field F2m"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 977
    :cond_38
    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v3, v4, :cond_46

    .line 980
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 984
    :cond_46
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 10
    .parameter "b"

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 992
    .local v6, iarrClone:Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v7, v0

    .line 993
    .local v7, bF2m:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v1, v7, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    .line 994
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .parameter "b"

    .prologue
    .line 1021
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1022
    .local v0, bInv:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "anObject"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1173
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 1185
    :goto_5
    return v2

    .line 1178
    :cond_6
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_c

    move v2, v4

    .line 1180
    goto :goto_5

    .line 1183
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v1, v0

    .line 1185
    .local v1, b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v2, v3, :cond_3a

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v5

    goto :goto_5

    :cond_3a
    move v2, v4

    goto :goto_5
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 938
    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 943
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .registers 2

    .prologue
    .line 1146
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    .prologue
    .line 1157
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 1133
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .registers 2

    .prologue
    .line 1124
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 20

    .prologue
    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 1049
    .local v15, uz:Lcom/android/org/bouncycastle/math/ec/IntArray;
    new-instance v17, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    move v3, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1050
    .local v17, vz:Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    move v3, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1051
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    move v3, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_53

    .line 1055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    move v3, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move v3, v0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1060
    :cond_53
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    move v3, v0

    invoke-direct {v9, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1061
    .local v9, g1z:Lcom/android/org/bouncycastle/math/ec/IntArray;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1062
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1065
    .local v8, g2z:Lcom/android/org/bouncycastle/math/ec/IntArray;
    :goto_6b
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/IntArray;->isZero()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 1070
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v4

    sub-int v12, v3, v4

    .line 1073
    .local v12, j:I
    if-gez v12, :cond_87

    .line 1075
    move-object/from16 v16, v15

    .line 1076
    .local v16, uzCopy:Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object/from16 v15, v17

    .line 1077
    move-object/from16 v17, v16

    .line 1079
    move-object v10, v9

    .line 1080
    .local v10, g1zCopy:Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object v9, v8

    .line 1081
    move-object v8, v10

    .line 1083
    neg-int v12, v12

    .line 1093
    .end local v10           #g1zCopy:Lcom/android/org/bouncycastle/math/ec/IntArray;
    .end local v16           #uzCopy:Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_87
    shr-int/lit8 v14, v12, 0x5

    .line 1095
    .local v14, jInt:I
    and-int/lit8 v13, v12, 0x1f

    .line 1096
    .local v13, jBit:I
    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v18

    .line 1097
    .local v18, vzShift:Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object v0, v15

    move-object/from16 v1, v18

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    .line 1101
    invoke-virtual {v8, v13}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v11

    .line 1102
    .local v11, g2zShift:Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-virtual {v9, v11, v14}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    goto :goto_6b

    .line 1105
    .end local v11           #g2zShift:Lcom/android/org/bouncycastle/math/ec/IntArray;
    .end local v12           #j:I
    .end local v13           #jBit:I
    .end local v14           #jInt:I
    .end local v18           #vzShift:Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_a1
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    move v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v3
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 10
    .parameter "b"

    .prologue
    .line 1012
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v7, v0

    .line 1013
    .local v7, bF2m:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v2, v7, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->multiply(Lcom/android/org/bouncycastle/math/ec/IntArray;I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v6

    .line 1014
    .local v6, mult:Lcom/android/org/bouncycastle/math/ec/IntArray;
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v4, v2, v3

    invoke-virtual {v6, v1, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    .line 1015
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .prologue
    .line 1028
    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .prologue
    .line 1111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->square(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v5

    .line 1034
    .local v5, squared:Lcom/android/org/bouncycastle/math/ec/IntArray;
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    .line 1035
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .parameter "b"

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
