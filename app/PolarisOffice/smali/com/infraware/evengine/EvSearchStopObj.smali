.class Lcom/infraware/evengine/EvSearchStopObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;)V
    .locals 0
    .parameter "a_Native"

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 600
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/infraware/evengine/EvSearchStopObj;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISearchStop()V

    .line 605
    return-void
.end method
