.class Lcom/infraware/evengine/EvFindWordStopObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;)V
    .locals 0
    .parameter "a_Native"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 665
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/infraware/evengine/EvFindWordStopObj;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IFindWordStop()V

    .line 670
    return-void
.end method
