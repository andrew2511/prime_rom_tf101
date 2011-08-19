.class Lcom/infraware/evengine/EvFindWordNextObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bDirUp:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;I)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_bDirUp"

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 633
    iput p2, p0, Lcom/infraware/evengine/EvFindWordNextObj;->m_bDirUp:I

    .line 634
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/infraware/evengine/EvFindWordNextObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvFindWordNextObj;->m_bDirUp:I

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IFindWordNext(I)V

    .line 639
    return-void
.end method
