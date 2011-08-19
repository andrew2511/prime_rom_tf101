.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 36
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 98
    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 43
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 44
    return-void
.end method
