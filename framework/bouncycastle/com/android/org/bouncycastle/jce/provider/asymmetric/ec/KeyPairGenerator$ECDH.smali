.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDH;
.super Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 327
    const-string v0, "ECDH"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    .line 328
    return-void
.end method
