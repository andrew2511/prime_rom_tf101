.class Lcom/infraware/evengine/EvThreadSuspendObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bSuspend:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;I)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_bSuspend"

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 761
    iput p2, p0, Lcom/infraware/evengine/EvThreadSuspendObj;->m_bSuspend:I

    .line 762
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/infraware/evengine/EvThreadSuspendObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvThreadSuspendObj;->m_bSuspend:I

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IThreadSuspend(I)V

    .line 767
    return-void
.end method
