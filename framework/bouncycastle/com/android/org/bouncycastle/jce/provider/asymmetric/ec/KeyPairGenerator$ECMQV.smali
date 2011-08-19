.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV;
.super Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 345
    const-string v0, "ECMQV"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;-><init>(Ljava/lang/String;)V

    .line 346
    return-void
.end method
