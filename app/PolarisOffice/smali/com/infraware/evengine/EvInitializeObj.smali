.class Lcom/infraware/evengine/EvInitializeObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bFrameBufferSwap:I

.field private m_bUseAutoBookmark:I

.field private m_nBits:I

.field private m_nBookmarkType:I

.field private m_nHeight:I

.field private m_nScrollModeType:I

.field private m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIIIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nScrollModeType"
    .parameter "a_nBookmarkType"
    .parameter "a_bUseAutoBookmark"
    .parameter "a_nBits"
    .parameter "a_bFrameBufferSwap"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 36
    iput p2, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nWidth:I

    .line 37
    iput p3, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nHeight:I

    .line 38
    iput p4, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nScrollModeType:I

    .line 39
    iput p5, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nBookmarkType:I

    .line 40
    iput p6, p0, Lcom/infraware/evengine/EvInitializeObj;->m_bUseAutoBookmark:I

    .line 41
    iput p7, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nBits:I

    .line 42
    iput p8, p0, Lcom/infraware/evengine/EvInitializeObj;->m_bFrameBufferSwap:I

    .line 43
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 8

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/evengine/EvInitializeObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nWidth:I

    .line 48
    iget v2, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nHeight:I

    .line 49
    iget v3, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nScrollModeType:I

    .line 50
    iget v4, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nBookmarkType:I

    .line 51
    iget v5, p0, Lcom/infraware/evengine/EvInitializeObj;->m_bUseAutoBookmark:I

    .line 52
    iget v6, p0, Lcom/infraware/evengine/EvInitializeObj;->m_nBits:I

    .line 53
    iget v7, p0, Lcom/infraware/evengine/EvInitializeObj;->m_bFrameBufferSwap:I

    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/infraware/evengine/EvNative;->IInitialize(IIIIIII)V

    .line 54
    return-void
.end method
