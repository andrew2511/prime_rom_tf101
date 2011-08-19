.class Lcom/infraware/evengine/EvSetPageMapObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bDrawContents:I

.field private m_bGenerateDrawEvt:I

.field private m_ePos:I

.field private m_nColMargin:I

.field private m_nMode:I

.field private m_nRowMargin:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_nMode"
    .parameter "a_bDrawContents"
    .parameter "a_ePos"
    .parameter "a_bGenerateDrawEvt"
    .parameter "a_nRowMargin"
    .parameter "a_nColMargin"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 424
    iput p2, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nMode:I

    .line 425
    iput p3, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_bDrawContents:I

    .line 426
    iput p4, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_ePos:I

    .line 427
    iput p5, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_bGenerateDrawEvt:I

    .line 428
    iput p6, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nRowMargin:I

    .line 429
    iput p7, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nColMargin:I

    .line 430
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Lcom/infraware/evengine/EvSetPageMapObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nMode:I

    iget v2, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_bDrawContents:I

    iget v3, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_ePos:I

    iget v4, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_bGenerateDrawEvt:I

    iget v5, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nRowMargin:I

    iget v6, p0, Lcom/infraware/evengine/EvSetPageMapObj;->m_nColMargin:I

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 435
    return-void
.end method
