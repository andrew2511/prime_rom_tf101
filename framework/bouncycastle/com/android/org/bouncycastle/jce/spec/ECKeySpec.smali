.class public Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 2
    .parameter "spec"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
