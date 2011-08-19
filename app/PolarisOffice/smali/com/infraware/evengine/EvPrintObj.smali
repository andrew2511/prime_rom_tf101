.class abstract Lcom/infraware/evengine/EvPrintObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIILjava/lang/String;)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_ePaperType"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 749
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
