.class public Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3
    .parameter "publicParam"
    .parameter "privateParam"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 23
    return-void
.end method


# virtual methods
.method public getPrivate()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
