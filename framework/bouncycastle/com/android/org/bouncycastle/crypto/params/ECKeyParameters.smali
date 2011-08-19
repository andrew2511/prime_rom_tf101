.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 3
    .parameter "isPrivate"
    .parameter "params"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
