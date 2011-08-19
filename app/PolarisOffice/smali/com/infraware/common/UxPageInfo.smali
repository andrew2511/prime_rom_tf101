.class public Lcom/infraware/common/UxPageInfo;
.super Ljava/lang/Object;
.source "UxPageInfo.java"

# interfaces
.implements Lcom/infraware/evengine/E$EDVA_PAGE_INFO_TYPE;
.implements Lcom/infraware/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/evengine/E$EV_DOCEXTENSION_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/UxPageInfo$PageInfoTask;
    }
.end annotation


# instance fields
.field protected final mInitialScrollBarAlpha:I

.field protected mPageInfoTimer:Ljava/util/Timer;

.field protected mPageInfoType:I

.field protected mScrollBarAlpha:I

.field protected final mScrollBarMargin:F

.field protected final mScrollBarMinSize:F

.field protected final mScrollBarThickness:F

.field private m_oBackground:Landroid/graphics/Bitmap;

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

.field protected mbScrollbar:Z


# direct methods
.method constructor <init>(Lcom/infraware/common/UxSurfaceView;Lcom/infraware/evengine/ICoEngineInterface;)V
    .locals 4
    .parameter "a_oView"
    .parameter "a_oInterface"

    .prologue
    const/16 v3, 0xe6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoType:I

    .line 25
    iput-object v2, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    .line 26
    iput v3, p0, Lcom/infraware/common/UxPageInfo;->mInitialScrollBarAlpha:I

    .line 27
    iput v3, p0, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    .line 28
    iput-boolean v1, p0, Lcom/infraware/common/UxPageInfo;->mbScrollbar:Z

    .line 29
    const/high16 v1, 0x4120

    iput v1, p0, Lcom/infraware/common/UxPageInfo;->mScrollBarThickness:F

    .line 30
    const/high16 v1, 0x41f0

    iput v1, p0, Lcom/infraware/common/UxPageInfo;->mScrollBarMinSize:F

    .line 31
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/infraware/common/UxPageInfo;->mScrollBarMargin:F

    .line 32
    iput-object v2, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 33
    iput-object v2, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    .line 34
    iput-object v2, p0, Lcom/infraware/common/UxPageInfo;->m_oBackground:Landroid/graphics/Bitmap;

    .line 35
    iput-object v2, p0, Lcom/infraware/common/UxPageInfo;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 39
    iput-object p2, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 40
    iput-object p1, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v0, oOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 43
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    iget-object v1, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02029d

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/UxPageInfo;->m_oBackground:Landroid/graphics/Bitmap;

    .line 45
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->getInstance()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/UxPageInfo;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 46
    return-void
.end method


# virtual methods
.method protected drawScrollBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "canvas"
    .parameter "hor"
    .parameter "ver"

    .prologue
    const/high16 v2, 0x40a0

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 231
    .local v0, paint:Landroid/graphics/Paint;
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget v1, p0, Lcom/infraware/common/UxPageInfo;->mScrollBarAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    invoke-virtual {p1, p2, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p1, p3, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method protected getPageInfoType(I)I
    .locals 3
    .parameter "nCallBackID"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, infoId:I
    iget-object v1, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget v1, v1, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget v1, v1, Lcom/infraware/common/UxSurfaceView;->m_nDocType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 60
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return v0

    .line 66
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 85
    :sswitch_0
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 92
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x1b -> :sswitch_0
        0x3d -> :sswitch_0
        0x11c -> :sswitch_0
    .end sparse-switch
.end method

.method public getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 8
    .parameter "a_oHor"
    .parameter "a_oVer"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v0, v0, Lcom/infraware/evengine/ICoEngineInterface;->mEditorMode:I

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetScreenPos()Lcom/infraware/evengine/EV$SCREEN_INFO;

    move-result-object v7

    .line 173
    .local v7, screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;
    iget v0, v7, Lcom/infraware/evengine/EV$SCREEN_INFO;->nX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCREEN_INFO;->nY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCREEN_INFO;->nWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCREEN_INFO;->nHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/common/UxPageInfo;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 180
    .end local v7           #screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetScrollInfo_Editor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v7

    .line 178
    .local v7, screenInfo:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;
    iget v0, v7, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;->nCurPosX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;->nCurPosY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;->nWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;->nHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/common/UxPageInfo;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    goto :goto_0
.end method

.method protected final getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 19
    .parameter "h"
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 184
    new-instance v8, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/common/UxSurfaceView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/common/UxSurfaceView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    .local v8, screenRect:Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    cmpl-float v14, p5, v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v14

    iget v14, v14, Lcom/infraware/evengine/EV$CONFIG_INFO;->nReflowState:I

    if-nez v14, :cond_4

    .line 187
    new-instance v9, Landroid/graphics/RectF;

    const/high16 v14, 0x4080

    .line 188
    const/high16 v15, 0x4080

    .line 189
    move-object v0, v8

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    const/high16 v17, 0x4080

    sub-float v16, v16, v17

    const/high16 v17, 0x4120

    sub-float v16, v16, v17

    .line 190
    move-object v0, v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    const/high16 v18, 0x4080

    sub-float v17, v17, v18

    .line 187
    move-object v0, v9

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .local v9, scrollBarHOutline:Landroid/graphics/RectF;
    iget v14, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float v15, v15, p3

    div-float v15, v15, p5

    add-float v5, v14, v15

    .line 193
    .local v5, horizentalSx:F
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x4120

    sub-float v6, v14, v15

    .line 194
    .local v6, horizentalSy:F
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float/2addr v14, v15

    div-float v7, v14, p5

    .line 196
    .local v7, horizentalWidth:F
    const/high16 v14, 0x41f0

    cmpg-float v14, v7, v14

    if-gez v14, :cond_0

    .line 197
    const/high16 v7, 0x41f0

    .line 199
    :cond_0
    const/high16 v14, 0x41f0

    add-float/2addr v14, v5

    iget v15, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    .line 200
    iget v14, v9, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x41f0

    sub-float v5, v14, v15

    .line 202
    :cond_1
    add-float v14, v5, v7

    const/high16 v15, 0x4120

    add-float/2addr v15, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    .end local v5           #horizentalSx:F
    .end local v6           #horizentalSy:F
    .end local v7           #horizentalWidth:F
    .end local v9           #scrollBarHOutline:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    cmpl-float v14, p6, v14

    if-lez v14, :cond_5

    .line 208
    new-instance v10, Landroid/graphics/RectF;

    const/high16 v14, 0x4080

    .line 209
    const/high16 v15, 0x4080

    .line 210
    move-object v0, v8

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    const/high16 v17, 0x4080

    sub-float v16, v16, v17

    .line 211
    move-object v0, v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    const/high16 v18, 0x4080

    sub-float v17, v17, v18

    const/high16 v18, 0x4120

    sub-float v17, v17, v18

    .line 208
    move-object v0, v10

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v10, scrollBarVOutline:Landroid/graphics/RectF;
    iget v14, v10, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x4120

    sub-float v12, v14, v15

    .line 214
    .local v12, verticalSx:F
    iget v14, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-float v15, v15, p4

    div-float v15, v15, p6

    add-float v13, v14, v15

    .line 215
    .local v13, verticalSy:F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-float/2addr v14, v15

    div-float v11, v14, p6

    .line 217
    .local v11, verticalHeight:F
    const/high16 v14, 0x41f0

    cmpg-float v14, v11, v14

    if-gez v14, :cond_2

    .line 218
    const/high16 v11, 0x41f0

    .line 220
    :cond_2
    const/high16 v14, 0x41f0

    add-float/2addr v14, v13

    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 221
    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x41f0

    sub-float v13, v14, v15

    .line 223
    :cond_3
    const/high16 v14, 0x4120

    add-float/2addr v14, v12

    add-float v15, v13, v11

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    .end local v10           #scrollBarVOutline:Landroid/graphics/RectF;
    .end local v11           #verticalHeight:F
    .end local v12           #verticalSx:F
    .end local v13           #verticalSy:F
    :goto_1
    return-void

    .line 205
    :cond_4
    const/high16 v14, -0x4080

    const/high16 v15, -0x4080

    const/high16 v16, -0x4080

    const/high16 v17, -0x4080

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 226
    :cond_5
    const/high16 v14, -0x4080

    const/high16 v15, -0x4080

    const/high16 v16, -0x4080

    const/high16 v17, -0x4080

    move-object/from16 v0, p2

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1
.end method

.method public killPageInfoTimer()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    .line 53
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 129
    iget v9, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/infraware/common/UxPageInfo;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v9}, Lcom/infraware/common/CoCoreFunctionInterface;->isReflowTextMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget v9, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 131
    :cond_1
    iget-object v9, p0, Lcom/infraware/common/UxPageInfo;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v9}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 133
    .local v0, ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 134
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    .line 135
    iget-object v9, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v9}, Lcom/infraware/common/UxSurfaceView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/infraware/common/UxPageInfo;->m_oBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x9

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 136
    const/high16 v10, 0x4150

    .line 137
    iget-object v11, p0, Lcom/infraware/common/UxPageInfo;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v11}, Lcom/infraware/common/UxSurfaceView;->getWidth()I

    move-result v11

    const/16 v12, 0x9

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 138
    iget-object v12, p0, Lcom/infraware/common/UxPageInfo;->m_oBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, 0xd

    int-to-float v12, v12

    .line 134
    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    .local v1, bgRect:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/infraware/common/UxPageInfo;->m_oBackground:Landroid/graphics/Bitmap;

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v9, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 141
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/high16 v9, 0x41a0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 148
    .local v2, fm:Landroid/graphics/Paint$FontMetrics;
    iget v9, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 150
    .local v7, x:F
    iget v9, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float v8, v9, v10

    .line 152
    .local v8, y:F
    iget v9, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nCurPage:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nTotalPages:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, pageInfo:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v4, v7, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    .end local v0           #ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;
    .end local v1           #bgRect:Landroid/graphics/RectF;
    .end local v2           #fm:Landroid/graphics/Paint$FontMetrics;
    .end local v4           #pageInfo:Ljava/lang/String;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_2
    iget-boolean v9, p0, Lcom/infraware/common/UxPageInfo;->mbScrollbar:Z

    if-eqz v9, :cond_3

    .line 161
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 162
    .local v3, hor:Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 163
    .local v6, ver:Landroid/graphics/RectF;
    invoke-virtual {p0, v3, v6}, Lcom/infraware/common/UxPageInfo;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 164
    invoke-virtual {p0, p1, v3, v6}, Lcom/infraware/common/UxPageInfo;->drawScrollBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 166
    .end local v3           #hor:Landroid/graphics/RectF;
    .end local v6           #ver:Landroid/graphics/RectF;
    :cond_3
    return-void

    .line 155
    .restart local v0       #ConfigInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;
    .restart local v1       #bgRect:Landroid/graphics/RectF;
    .restart local v2       #fm:Landroid/graphics/Paint$FontMetrics;
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v7       #x:F
    .restart local v8       #y:F
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #pageInfo:Ljava/lang/String;
    goto :goto_0
.end method

.method public setPageInfoTimer(I)V
    .locals 7
    .parameter "nCallBackID"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxPageInfo;->getPageInfoType(I)I

    move-result v6

    .line 103
    .local v6, infoId:I
    if-eqz v6, :cond_1

    .line 105
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/common/UxPageInfo;->setPageInfoType(I)V

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/UxPageInfo;->mbScrollbar:Z

    .line 113
    invoke-virtual {p0, v6}, Lcom/infraware/common/UxPageInfo;->setPageInfoType(I)V

    .line 114
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    .line 117
    iget-object v0, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/infraware/common/UxPageInfo$PageInfoTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/infraware/common/UxPageInfo$PageInfoTask;-><init>(Lcom/infraware/common/UxPageInfo;J)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 120
    :cond_1
    return-void
.end method

.method protected setPageInfoType(I)V
    .locals 0
    .parameter "EDVA_PAGE_INFO_TYPE"

    .prologue
    .line 124
    iput p1, p0, Lcom/infraware/common/UxPageInfo;->mPageInfoType:I

    .line 125
    return-void
.end method
