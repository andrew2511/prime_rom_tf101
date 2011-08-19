.class public Lcom/infraware/sheet/UxSheetViewerGestureDetector;
.super Lcom/infraware/common/UxViewerGestureDetector;
.source "UxSheetViewerGestureDetector.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_HID_ACTION;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/UxViewerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    const-string v0, "UxSheetViewerGestureDetector"

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->LOG_CAT:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4100

    const/high16 v3, -0x4080

    .line 22
    const/4 v2, 0x3

    iput v2, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    .line 24
    mul-float/2addr p3, v3

    .line 25
    mul-float/2addr p4, v3

    .line 27
    div-float v0, p3, v4

    .line 28
    .local v0, x:F
    div-float v1, p4, v4

    .line 30
    .local v1, y:F
    iget-object v2, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IFlick(II)V

    .line 31
    const/4 v2, 0x1

    return v2
.end method

.method protected onMultiTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 70
    iget v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_fDistPre:F

    .line 73
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nMultiTouchBeginScale:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    move v0, v1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMultiTouchDragProc(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "e"

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 103
    invoke-virtual/range {p0 .. p1}, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v20

    .line 104
    .local v20, newDist:F
    const/high16 v4, 0x4120

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v16

    .line 107
    .local v16, center:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nMultiTouchBeginScale:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_fDistPre:F

    move v5, v0

    div-float v5, v20, v5

    mul-float/2addr v4, v5

    float-to-int v6, v4

    .line 108
    .local v6, nScale:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getMinZoomRatio()I

    move-result v19

    .line 109
    .local v19, nMinZoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getMaxZoomRatio()I

    move-result v18

    .line 110
    .local v18, nMaxZoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v17

    .line 112
    .local v17, nCurrentRatio:I
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->minMax(III)I

    move-result v6

    .line 113
    move/from16 v0, v17

    move v1, v6

    if-eq v0, v1, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v14, v0

    float-to-int v14, v14

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v15, v0

    float-to-int v15, v15

    invoke-virtual/range {v4 .. v15}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 116
    .end local v6           #nScale:I
    .end local v16           #center:Landroid/graphics/PointF;
    .end local v17           #nCurrentRatio:I
    .end local v18           #nMaxZoom:I
    .end local v19           #nMinZoom:I
    :cond_0
    const/4 v4, 0x1

    .line 118
    .end local v20           #newDist:F
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onMultiTouchUpProc(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v7, :cond_0

    .line 86
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_fDistPre:F

    .line 87
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v2

    .line 89
    .local v2, nCurrentRatio:I
    iput v12, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    .line 90
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    move v0, v12

    .line 95
    .end local v2           #nCurrentRatio:I
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onSingleTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-virtual {v0}, Lcom/infraware/common/UiCoreEventListener;->reDrawrect()V

    .line 38
    iput v4, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    .line 39
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 40
    return v4
.end method

.method protected onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    iget v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 48
    iput v4, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    .line 49
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 53
    :goto_0
    return v4

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    goto :goto_0
.end method

.method protected onSingleTouchUpProc(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    iget v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v5, :cond_0

    .line 60
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 61
    iput v4, p0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;->m_nGestureStatus:I

    .line 63
    :cond_0
    return v5
.end method
