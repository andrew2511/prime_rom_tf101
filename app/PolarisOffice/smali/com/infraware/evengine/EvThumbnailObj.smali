.class Lcom/infraware/evengine/EvThumbnailObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field m_eMode:I

.field m_nHeight:I

.field m_nPages:I

.field m_nStartPage:I

.field m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eMode"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 454
    iput p2, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_eMode:I

    .line 455
    iput p3, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nPages:I

    .line 456
    iput p4, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nWidth:I

    .line 457
    iput p5, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nHeight:I

    .line 458
    iput p6, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nStartPage:I

    .line 459
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/infraware/evengine/EvThumbnailObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_eMode:I

    iget v2, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nPages:I

    iget v3, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nWidth:I

    iget v4, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nHeight:I

    iget v5, p0, Lcom/infraware/evengine/EvThumbnailObj;->m_nStartPage:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IThumbnail(IIIII)V

    .line 464
    return-void
.end method
