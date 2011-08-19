.class abstract Lcom/infraware/evengine/EvMemoObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;ILjava/lang/String;IIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eMemoType"
    .parameter "a_sText"
    .parameter "a_nSelIndex"
    .parameter "a_nXpos"
    .parameter "a_nYpos"
    .parameter "a_nIconW"
    .parameter "a_nIconH"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 699
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
