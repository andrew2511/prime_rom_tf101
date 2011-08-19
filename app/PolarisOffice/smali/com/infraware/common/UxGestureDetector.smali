.class public abstract Lcom/infraware/common/UxGestureDetector;
.super Ljava/lang/Object;
.source "UxGestureDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field protected static final LOG_CAT:Ljava/lang/String; = "UiGestureDetector"

.field protected static final STATUS_DOUBLETAP:I = 0x1

.field protected static final STATUS_FLING:I = 0x2

.field protected static final STATUS_LONGPRESS:I = 0x3

.field protected static final STATUS_NONE:I


# instance fields
.field private m_bAlwaysInTapRegion:Z

.field protected m_bHyperLink:Z

.field protected m_bSearchMode:Z

.field private m_fLastMotionX:F

.field private m_fLastMotionY:F

.field protected m_nDoubleTapBeginTime:J

.field private m_nTouchSlopSquare:I

.field private m_nTouchState:I

.field private m_oCurDownEvent:Landroid/view/MotionEvent;

.field protected m_oDetector:Landroid/view/GestureDetector;

.field protected m_oView:Lcom/infraware/common/UxSurfaceView;

.field protected m_strCurrentHyperlinkName:Ljava/lang/String;

.field protected m_strCurrentHyperlinkURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nDoubleTapBeginTime:J

    .line 24
    iput-boolean v2, p0, Lcom/infraware/common/UxGestureDetector;->m_bAlwaysInTapRegion:Z

    .line 28
    iput-object v3, p0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    .line 30
    iput-boolean v2, p0, Lcom/infraware/common/UxGestureDetector;->m_bSearchMode:Z

    .line 31
    iput-boolean v2, p0, Lcom/infraware/common/UxGestureDetector;->m_bHyperLink:Z

    .line 33
    iput-object v3, p0, Lcom/infraware/common/UxGestureDetector;->m_strCurrentHyperlinkName:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/infraware/common/UxGestureDetector;->m_strCurrentHyperlinkURL:Ljava/lang/String;

    .line 37
    check-cast p2, Lcom/infraware/common/UxSurfaceView;

    .end local p2
    iput-object p2, p0, Lcom/infraware/common/UxGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    .line 38
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDetector;->m_oDetector:Landroid/view/GestureDetector;

    .line 39
    iget-object v0, p0, Lcom/infraware/common/UxGestureDetector;->m_oDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 40
    iget-object v0, p0, Lcom/infraware/common/UxGestureDetector;->m_oDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected dumpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 236
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 237
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 239
    .local v3, names:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 241
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 242
    .local v1, actionCode:I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    if-eq v1, v7, :cond_0

    if-ne v1, v8, :cond_1

    .line 245
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 258
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v5, "Event dump"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 251
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 256
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getHyperlinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/common/UxGestureDetector;->m_strCurrentHyperlinkName:Ljava/lang/String;

    return-object v0
.end method

.method public getHyperlinkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/common/UxGestureDetector;->m_strCurrentHyperlinkURL:Ljava/lang/String;

    return-object v0
.end method

.method public isHyperlink()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/infraware/common/UxGestureDetector;->m_bHyperLink:Z

    return v0
.end method

.method protected midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 223
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 224
    .local v0, x:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 225
    .local v1, y:F
    new-instance v2, Landroid/graphics/PointF;

    div-float v3, v0, v4

    div-float v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method protected minMax(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 229
    if-ge p1, p2, :cond_0

    move v0, p2

    .line 232
    :goto_0
    return v0

    .line 230
    :cond_0
    if-le p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    .line 232
    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 63
    const-string v0, "UiGestureDetector"

    const-string v1, "mTouchState = STATUS_DOUBLETAP"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nDoubleTapBeginTime:J

    .line 66
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxGestureDetector;->onDoubleTapProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "paramMotionEvent"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onDoubleTapProc(Landroid/view/MotionEvent;)Z
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "paramMotionEvent"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/common/UxGestureDetector;->onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method protected abstract onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_nKeyCode"
    .parameter "a_oEvent"

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_nKeyCode"
    .parameter "a_oEvent"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_nKeyCode"
    .parameter "a_oEvent"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 82
    iget v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxGestureDetector;->onLongPressProc(Landroid/view/MotionEvent;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected abstract onLongPressProc(Landroid/view/MotionEvent;)V
.end method

.method protected abstract onMultiTouchDownProc(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onMultiTouchDragProc(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onMultiTouchUpProc(Landroid/view/MotionEvent;)Z
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/common/UxGestureDetector;->onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowIme(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "paramMotionEvent"

    .prologue
    .line 73
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxGestureDetector;->onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "paramMotionEvent"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onSingleTouchDownProc(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method protected abstract onSingleTouchUpProc(Landroid/view/MotionEvent;)Z
.end method

.method public onTextChanged(ZLjava/lang/CharSequence;III)V
    .locals 0
    .parameter "a_bComposing"
    .parameter "a_szText"
    .parameter "a_nStart"
    .parameter "a_nBefore"
    .parameter "a_nAfter"

    .prologue
    .line 205
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "v"
    .parameter "e"

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    if-ne v0, v1, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oDetector:Landroid/view/GestureDetector;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 99
    .local v13, y:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 100
    .local v12, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v5, v14, 0xff

    .line 102
    .local v5, action:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v0

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    .line 103
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 109
    const-string v14, "UiGestureDetector"

    const-string v15, "Oops!! mTouchState = STATUS_DOUBLETAP"

    invoke-static {v14, v15}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    .line 116
    :cond_1
    :pswitch_0
    packed-switch v5, :pswitch_data_1

    .line 190
    .end local v5           #action:I
    .end local v12           #x:F
    .end local v13           #y:F
    :cond_2
    :goto_0
    :pswitch_1
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 118
    .restart local v5       #action:I
    .restart local v12       #x:F
    .restart local v13       #y:F
    :pswitch_2
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionX:F

    .line 119
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionY:F

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    if-eqz v14, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 122
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    .line 123
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/common/UxGestureDetector;->m_bAlwaysInTapRegion:Z

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onSingleTouchDownProc(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_1

    .line 128
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onSingleTouchUpProc(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 129
    .local v9, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nDoubleTapBeginTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x190

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z

    .line 137
    :cond_4
    :goto_2
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v9

    .line 138
    goto :goto_1

    .line 135
    :cond_5
    const-string v14, "UiGestureDetector"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Double tap canceled, endTime - startTime = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nDoubleTapBeginTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    .end local v9           #result:Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v0

    const/4 v15, 0x1

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchState:I

    move v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    .line 146
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionX:F

    move v14, v0

    sub-float v10, v14, v12

    .line 147
    .local v10, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionY:F

    move v14, v0

    sub-float v11, v14, v13

    .line 149
    .local v11, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/common/UxGestureDetector;->m_bAlwaysInTapRegion:Z

    move v14, v0

    if-eqz v14, :cond_8

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v14, v12, v14

    float-to-int v6, v14

    .line 152
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float v14, v13, v14

    float-to-int v7, v14

    .line 153
    .local v7, deltaY:I
    mul-int v14, v6, v6

    mul-int v15, v7, v7

    add-int v8, v14, v15

    .line 154
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxGestureDetector;->m_nTouchSlopSquare:I

    move v14, v0

    if-le v8, v14, :cond_2

    .line 155
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionX:F

    .line 156
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionY:F

    .line 157
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/common/UxGestureDetector;->m_bAlwaysInTapRegion:Z

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onMultiTouchDragProc(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 162
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/common/UxGestureDetector;->onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    goto/16 :goto_1

    .line 165
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distance:I
    :cond_8
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-gez v14, :cond_9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2

    .line 167
    :cond_9
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionX:F

    .line 168
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/common/UxGestureDetector;->m_fLastMotionY:F

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onMultiTouchDragProc(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 173
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxGestureDetector;->m_oCurDownEvent:Landroid/view/MotionEvent;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/common/UxGestureDetector;->onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    goto/16 :goto_1

    .line 176
    .end local v10           #scrollX:F
    .end local v11           #scrollY:F
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onMultiTouchDragProc(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 179
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 183
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onMultiTouchDownProc(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_1

    .line 186
    :cond_d
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDetector;->onMultiTouchUpProc(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "a_bSearchMode"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/infraware/common/UxGestureDetector;->m_bSearchMode:Z

    .line 265
    return-void
.end method

.method protected spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 218
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 219
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public updateCaretPos(Z)V
    .locals 0
    .parameter "bCommit"

    .prologue
    .line 209
    return-void
.end method
