.class Lcom/infraware/evengine/EvMovePageObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eMoveType:I

.field private m_nPage:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;II)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eMoveType"
    .parameter "a_nPage"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 172
    iput p2, p0, Lcom/infraware/evengine/EvMovePageObj;->m_eMoveType:I

    .line 173
    iput p3, p0, Lcom/infraware/evengine/EvMovePageObj;->m_nPage:I

    .line 174
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/infraware/evengine/EvMovePageObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvMovePageObj;->m_eMoveType:I

    iget v2, p0, Lcom/infraware/evengine/EvMovePageObj;->m_nPage:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/EvNative;->IMovePage(II)V

    .line 179
    return-void
.end method
