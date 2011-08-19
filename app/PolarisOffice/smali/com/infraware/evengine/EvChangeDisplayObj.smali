.class abstract Lcom/infraware/evengine/EvChangeDisplayObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;I)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eType"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 371
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
