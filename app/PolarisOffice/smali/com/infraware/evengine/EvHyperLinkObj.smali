.class Lcom/infraware/evengine/EvHyperLinkObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eType:I

.field private m_nXPos:I

.field private m_nYPos:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;III)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eType"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 547
    iput p2, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_eType:I

    .line 548
    iput p3, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_nXPos:I

    .line 549
    iput p4, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_nYPos:I

    .line 550
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/infraware/evengine/EvHyperLinkObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_eType:I

    iget v2, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_nXPos:I

    iget v3, p0, Lcom/infraware/evengine/EvHyperLinkObj;->m_nYPos:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/EvNative;->IHyperLink(III)V

    .line 555
    return-void
.end method
