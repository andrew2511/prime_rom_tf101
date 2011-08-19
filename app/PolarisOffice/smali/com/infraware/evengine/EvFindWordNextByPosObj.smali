.class Lcom/infraware/evengine/EvFindWordNextByPosObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_nXpos:I

.field private m_nYpos:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 650
    iput p2, p0, Lcom/infraware/evengine/EvFindWordNextByPosObj;->m_nXpos:I

    .line 651
    iput p3, p0, Lcom/infraware/evengine/EvFindWordNextByPosObj;->m_nYpos:I

    .line 652
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/infraware/evengine/EvFindWordNextByPosObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvFindWordNextByPosObj;->m_nXpos:I

    iget v2, p0, Lcom/infraware/evengine/EvFindWordNextByPosObj;->m_nYpos:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 657
    return-void
.end method
