.class public Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .registers 5
    .parameter "key"
    .parameter "macSize"
    .parameter "nonce"
    .parameter "associatedText"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 24
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    .line 25
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    .line 26
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-object v0
.end method

.method public getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public getNonce()[B
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    return-object v0
.end method
