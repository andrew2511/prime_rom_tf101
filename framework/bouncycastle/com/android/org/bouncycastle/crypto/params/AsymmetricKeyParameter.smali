.class public Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field privateKey:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "privateKey"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .registers 2

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return v0
.end method
