.class Lcom/infraware/evengine/EvSetZoomObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bHaveZoomCenter:I

.field private m_bStep:I

.field private m_eKey:I

.field private m_eZoomType:I

.field private m_nEx:I

.field private m_nEy:I

.field private m_nScale:I

.field private m_nSx:I

.field private m_nSy:I

.field private m_nZoomCenterX:I

.field private m_nZoomCenterY:I


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;IIIIIIIIIII)V
    .locals 0
    .parameter "a_Native"
    .parameter "a_eZoomType"
    .parameter "a_nScale"
    .parameter "a_nSx"
    .parameter "a_nSy"
    .parameter "a_nEx"
    .parameter "a_nEy"
    .parameter "a_eKey"
    .parameter "a_bStep"
    .parameter "a_bHaveZoomCenter"
    .parameter "a_nZoomCenterX"
    .parameter "a_nZoomCenterY"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 246
    iput p2, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_eZoomType:I

    .line 247
    iput p3, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nScale:I

    .line 248
    iput p4, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nSx:I

    .line 249
    iput p5, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nSy:I

    .line 250
    iput p6, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nEx:I

    .line 251
    iput p7, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nEy:I

    .line 252
    iput p8, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_eKey:I

    .line 253
    iput p9, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_bStep:I

    .line 254
    iput p10, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_bHaveZoomCenter:I

    .line 255
    iput p11, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nZoomCenterX:I

    .line 256
    iput p12, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nZoomCenterY:I

    .line 257
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 12

    .prologue
    .line 261
    iget-object v0, p0, Lcom/infraware/evengine/EvSetZoomObj;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_eZoomType:I

    .line 262
    iget v2, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nScale:I

    .line 263
    iget v3, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nSx:I

    .line 264
    iget v4, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nSy:I

    .line 265
    iget v5, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nEx:I

    .line 266
    iget v6, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nEy:I

    .line 267
    iget v7, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_eKey:I

    .line 268
    iget v8, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_bStep:I

    .line 269
    iget v9, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_bHaveZoomCenter:I

    .line 270
    iget v10, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nZoomCenterX:I

    .line 271
    iget v11, p0, Lcom/infraware/evengine/EvSetZoomObj;->m_nZoomCenterY:I

    .line 261
    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/EvNative;->ISetZoom(IIIIIIIIIII)V

    .line 272
    return-void
.end method
