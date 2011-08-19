.class public Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 3
    .parameter "isPrivate"
    .parameter "params"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
