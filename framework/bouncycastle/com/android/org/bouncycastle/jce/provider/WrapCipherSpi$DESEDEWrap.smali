.class public Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "WrapCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESEDEWrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 450
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    .line 451
    return-void
.end method
