.class Lcom/infraware/evengine/EvScrollObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eFactor:I

.field private m_eKey:I

.field private m_eScrollType:I

.field private m_nOffsetX:I

.field private m_nOffsetY:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eScrollType"
    .parameter "a_eFactor"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "a_eKey"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 286
    iput p2, p0, Lcom/infraware/evengine/EvScrollObj;->m_eScrollType:I

    .line 287
    iput p3, p0, Lcom/infraware/evengine/EvScrollObj;->m_eFactor:I

    .line 288
    iput p4, p0, Lcom/infraware/evengine/EvScrollObj;->m_nOffsetX:I

    .line 289
    iput p5, p0, Lcom/infraware/evengine/EvScrollObj;->m_nOffsetY:I

    .line 290
    iput p6, p0, Lcom/infraware/evengine/EvScrollObj;->m_eKey:I

    .line 291
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 6

    .prologue
    .line 295
    iget-object v0, p0, Lcom/infraware/evengine/EvScrollObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvScrollObj;->m_eScrollType:I

    iget v2, p0, Lcom/infraware/evengine/EvScrollObj;->m_eFactor:I

    iget v3, p0, Lcom/infraware/evengine/EvScrollObj;->m_nOffsetX:I

    iget v4, p0, Lcom/infraware/evengine/EvScrollObj;->m_nOffsetY:I

    iget v5, p0, Lcom/infraware/evengine/EvScrollObj;->m_eKey:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IScroll(IIIII)V

    .line 296
    return-void
.end method
