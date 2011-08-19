.class Lcom/infraware/evengine/EvHyperLinkEndObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;)V
    .locals 0
    .parameter "a_Native"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 563
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/infraware/evengine/EvHyperLinkEndObj;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IHyperLinkEnd()V

    .line 568
    return-void
.end method
