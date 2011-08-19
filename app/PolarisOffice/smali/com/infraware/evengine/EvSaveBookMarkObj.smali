.class Lcom/infraware/evengine/EvSaveBookMarkObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;)V
    .locals 0
    .parameter "a_Native"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 488
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/infraware/evengine/EvSaveBookMarkObj;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISaveBookMark()V

    .line 493
    return-void
.end method
