.class abstract Lcom/infraware/evengine/EvTextPlayObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_ePlayType"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 724
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
