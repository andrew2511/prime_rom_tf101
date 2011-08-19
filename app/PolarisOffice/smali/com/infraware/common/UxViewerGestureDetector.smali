.class public Lcom/infraware/common/UxViewerGestureDetector;
.super Lcom/infraware/common/UxBaseGestureDetector;
.source "UxViewerGestureDetector.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_SCROLL_COMMAND_TYPE;
.implements Lcom/infraware/evengine/E$EV_SCROLL_FACTOR_TYPE;
.implements Lcom/infraware/evengine/E$EV_KEY_TYPE;
.implements Lcom/infraware/evengine/E$EV_ZOOM_TYPE;


# instance fields
.field private m_oEditor:Lcom/infraware/common/UxDocViewerBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/UxBaseGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocViewerBase;

    .line 20
    check-cast p1, Lcom/infraware/common/UxDocViewerBase;

    .end local p1
    iput-object p1, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocViewerBase;

    .line 21
    return-void
.end method


# virtual methods
.method protected onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "e"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v12

    .line 121
    .local v12, nCurrentRatio:I
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFitToWidthRatio()I

    move-result v14

    .line 122
    .local v14, nFitToWidthZoomRatio:I
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFitToHeightRatio()I

    move-result v13

    .line 126
    .local v13, nFitToHeightZoomRatio:I
    if-ne v12, v13, :cond_1

    .line 127
    move v2, v14

    .line 138
    .local v2, nZoomRatio:I
    :goto_0
    const-string v0, "UiGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDoubleTap ScreenZoomRatio ZoomRatio = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eq v12, v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 142
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v2           #nZoomRatio:I
    :cond_1
    if-ne v12, v14, :cond_2

    .line 129
    move v2, v13

    .restart local v2       #nZoomRatio:I
    goto :goto_0

    .line 131
    .end local v2           #nZoomRatio:I
    :cond_2
    move v2, v13

    .restart local v2       #nZoomRatio:I
    goto :goto_0
.end method

.method protected onDoubleTapProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocViewerBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocViewerBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLongPressProc(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 152
    return-void
.end method

.method protected onMultiTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 75
    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v6, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxViewerGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_fDistPre:F

    .line 77
    iput v5, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    .line 78
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nMultiTouchBeginScale:I

    .line 79
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IScroll(IIIII)V

    move v0, v6

    .line 82
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method protected onMultiTouchDragProc(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "e"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 98
    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 99
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxViewerGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v13

    .line 100
    .local v13, newDist:F
    const-string v0, "UiGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newDist="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/high16 v0, 0x4120

    cmpl-float v0, v13, v0

    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxViewerGestureDetector;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v12

    .line 103
    .local v12, center:Landroid/graphics/PointF;
    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nMultiTouchBeginScale:I

    int-to-float v0, v0

    iget v3, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_fDistPre:F

    div-float v3, v13, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 104
    .local v2, nScale:I
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getMinZoomRatio()I

    move-result v0

    iget-object v3, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v3}, Lcom/infraware/common/CoCoreFunctionInterface;->getMaxZoomRatio()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/common/UxViewerGestureDetector;->minMax(III)I

    move-result v2

    .line 106
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    float-to-int v10, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .end local v2           #nScale:I
    .end local v12           #center:Landroid/graphics/PointF;
    :cond_0
    move v0, v9

    .line 115
    .end local v13           #newDist:F
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onMultiTouchUpProc(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v7, :cond_0

    .line 88
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_fDistPre:F

    .line 89
    iput v12, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    .line 90
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget-object v2, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    move v0, v12

    .line 93
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/infraware/common/UxBaseGestureDetector;->onSingleTouchDownProc(Landroid/view/MotionEvent;)Z

    .line 28
    iput v5, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    .line 29
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IScroll(IIIII)V

    .line 31
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v6

    .line 32
    .local v6, hyperlinkInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    iget v0, v6, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    if-ne v0, v5, :cond_0

    .line 34
    iput-boolean v5, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_bHyperLink:Z

    .line 37
    :cond_0
    return v5
.end method

.method protected onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v6, :cond_0

    .line 65
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IScroll(IIIII)V

    move v0, v6

    .line 70
    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method protected onSingleTouchUpProc(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 43
    iget v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    if-ne v0, v7, :cond_0

    .line 44
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v5, 0x2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IScroll(IIIII)V

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_bHyperLink:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v6

    .line 50
    .local v6, hyperlinkInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    const-string v0, "UiGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hyperlinkInfo.szHyperLink = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "UiGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hyperlinkInfo.szHyperText = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v1, v6, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UiCoreEventListener;->notifyOnHyperLink(Ljava/lang/String;)V

    .line 54
    .end local v6           #hyperlinkInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    :cond_1
    iput-boolean v3, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_bHyperLink:Z

    .line 56
    iput v3, p0, Lcom/infraware/common/UxViewerGestureDetector;->m_nGestureStatus:I

    .line 57
    return v7
.end method
