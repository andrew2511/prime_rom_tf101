.class public Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 3
    .parameter "q"
    .parameter "spec"

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 26
    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
