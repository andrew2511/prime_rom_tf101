.class public Lcom/infraware/common/UxEditorGestureDetector;
.super Lcom/infraware/common/UxBaseGestureDetector;
.source "UxEditorGestureDetector.java"

# interfaces
.implements Lcom/infraware/evengine/E;
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/evengine/E$EV_CHAR_INPUT;
.implements Lcom/infraware/evengine/E$EV_VKEYS;
.implements Lcom/infraware/evengine/E$EV_HID_ACTION;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field index:I

.field protected mEvObjectProc:Lcom/infraware/common/EvObjectProc;

.field private m_bAssistSelected:Z

.field protected m_oCaretTask:Lcom/infraware/common/EvCaretTask;

.field protected m_oEditor:Lcom/infraware/common/UxDocEditorBase;

.field protected m_szPrevText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "a_oCaret"
    .parameter "a_oObject"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/UxBaseGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    const-string v0, "UxEditorGestureDetector"

    iput-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->LOG_CAT:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->index:I

    .line 20
    iput-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    .line 21
    iput-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    .line 22
    iput-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    .line 24
    iput-boolean v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bAssistSelected:Z

    .line 28
    check-cast p1, Lcom/infraware/common/UxDocEditorBase;

    .end local p1
    iput-object p1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    .line 29
    iput-object p3, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    .line 30
    iput-object p4, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    .line 31
    return-void
.end method


# virtual methods
.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method protected onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-boolean v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bSearchMode:Z

    if-nez v1, :cond_1

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, bShowIme:Z
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    .line 181
    :goto_0
    invoke-virtual {p0, v0}, Lcom/infraware/common/UxEditorGestureDetector;->showIme(Z)V

    .line 189
    .end local v0           #bShowIme:Z
    :goto_1
    return v3

    .line 179
    .restart local v0       #bShowIme:Z
    :cond_0
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v1}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    move-result v0

    goto :goto_0

    .line 186
    .end local v0           #bShowIme:Z
    :cond_1
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 187
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v1}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    goto :goto_1
.end method

.method public onDoubleTapProc(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 156
    const-string v0, "UxEditorGestureDetector"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bSearchMode:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 161
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    .line 162
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 166
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    move v0, v4

    .line 167
    goto :goto_0
.end method

.method protected onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v2}, Lcom/infraware/common/EvObjectProc;->FlingObjCtrl()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 269
    :goto_0
    return v2

    .line 253
    :cond_0
    iget-boolean v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bAssistSelected:Z

    if-nez v2, :cond_2

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lcom/infraware/common/UxBaseGestureDetector;->onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 257
    .local v1, bReturn:Z
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v2}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v2}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    move-result v0

    .line 260
    .local v0, bResult:Z
    if-nez v0, :cond_1

    .line 261
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .end local v0           #bResult:Z
    :cond_1
    move v2, v1

    .line 264
    goto :goto_0

    .line 268
    .end local v1           #bReturn:Z
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bAssistSelected:Z

    move v2, v3

    .line 269
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 402
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    sparse-switch p1, :sswitch_data_0

    .line 415
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocEditorBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 418
    :goto_0
    return v0

    .line 405
    :sswitch_0
    invoke-virtual {p0}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 406
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    move v0, v2

    .line 407
    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/16 v1, 0x8

    invoke-virtual {v0, v4, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    move v0, v2

    .line 410
    goto :goto_0

    .line 412
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/16 v1, 0x22

    invoke-virtual {v0, v4, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    move v0, v2

    .line 413
    goto :goto_0

    :cond_0
    move v0, v3

    .line 418
    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x70 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "a_nKeyCode"
    .parameter "a_oEvent"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocEditorBase;->processKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 430
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocEditorBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPressProc(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x6

    .line 230
    iget-boolean v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bSearchMode:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/EvObjectProc;->LongPressObjCtrl(II)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iput v3, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->performLongClick()Z

    .line 239
    iput v3, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    goto :goto_0
.end method

.method protected onMultiTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 100
    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    if-ne v0, v2, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_fDistPre:F

    .line 102
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nMultiTouchBeginScale:I

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 105
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    move v0, v2

    .line 108
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
    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 136
    invoke-virtual/range {p0 .. p1}, Lcom/infraware/common/UxEditorGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v20

    .line 137
    .local v20, newDist:F
    const-string v4, "UxEditorGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newDist="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/high16 v4, 0x4120

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/infraware/common/UxEditorGestureDetector;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v16

    .line 140
    .local v16, center:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_nMultiTouchBeginScale:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_fDistPre:F

    move v5, v0

    div-float v5, v20, v5

    mul-float/2addr v4, v5

    float-to-int v6, v4

    .line 141
    .local v6, nScale:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getMinZoomRatio()I

    move-result v19

    .line 142
    .local v19, nMinZoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getMaxZoomRatio()I

    move-result v18

    .line 143
    .local v18, nMaxZoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v17

    .line 144
    .local v17, nCurrentRatio:I
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/common/UxEditorGestureDetector;->minMax(III)I

    move-result v6

    .line 146
    move/from16 v0, v17

    move v1, v6

    if-eq v0, v1, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

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

    .line 149
    .end local v6           #nScale:I
    .end local v16           #center:Landroid/graphics/PointF;
    .end local v17           #nCurrentRatio:I
    .end local v18           #nMaxZoom:I
    .end local v19           #nMinZoom:I
    :cond_0
    const/4 v4, 0x1

    .line 151
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
    const/4 v7, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    if-ne v0, v7, :cond_1

    .line 114
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_fDistPre:F

    .line 115
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentZoomRatio()I

    move-result v0

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nMultiTouchBeginScale:I

    .line 117
    iput v12, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 118
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nMultiTouchBeginScale:I

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 121
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0, v1, v12}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    .line 123
    iget-boolean v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bSearchMode:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    .line 126
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    move v0, v12

    .line 129
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onShowIme(Z)Z
    .locals 1
    .parameter "bShow"

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->showSoftInput()V

    .line 451
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    goto :goto_0
.end method

.method public onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, bShowIme:Z
    iget-boolean v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bSearchMode:Z

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 199
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v2}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    move v2, v5

    .line 224
    :goto_0
    return v2

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    .line 204
    .local v1, hyperlinkInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    iget v2, v1, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    if-ne v2, v5, :cond_1

    .line 206
    iget-object v2, v1, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_strCurrentHyperlinkName:Ljava/lang/String;

    .line 207
    iget-object v2, v1, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_strCurrentHyperlinkURL:Ljava/lang/String;

    .line 208
    iput-boolean v5, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bHyperLink:Z

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v2}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v2

    if-lez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v3, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v2, v3, v5}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    .line 222
    :goto_2
    invoke-virtual {p0, v0}, Lcom/infraware/common/UxEditorGestureDetector;->showIme(Z)V

    .line 223
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocEditorBase;->finishActionMode()V

    move v2, v5

    .line 224
    goto :goto_0

    .line 212
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bHyperLink:Z

    .line 213
    iput-object v6, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_strCurrentHyperlinkName:Ljava/lang/String;

    .line 214
    iput-object v6, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_strCurrentHyperlinkURL:Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    iget-object v3, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/common/EvCaretTask;->CaretOnOff(Lcom/infraware/evengine/EV$CARET_INFO;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onSingleTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    move v0, v4

    .line 51
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxBaseGestureDetector;->onSingleTouchDownProc(Landroid/view/MotionEvent;)Z

    .line 42
    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    if-nez v0, :cond_1

    .line 44
    iput v4, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 45
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/common/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 47
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 49
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    :cond_1
    move v0, v4

    .line 51
    goto :goto_0
.end method

.method protected onSingleTouchDragProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 59
    iput v4, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 60
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/common/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 61
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/infraware/common/UxEditorGestureDetector;->updateCaretPos(Z)V

    .line 72
    return v4

    .line 63
    :cond_1
    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 67
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlSelIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-boolean v4, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_bAssistSelected:Z

    goto :goto_0
.end method

.method protected onSingleTouchUpProc(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    const-string v1, "UxEditorGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSingleTouchUp mTouchState ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    if-ne v1, v6, :cond_1

    .line 79
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/common/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 80
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 82
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oCaretTask:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v1}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    move-result v0

    .line 83
    .local v0, bShowCaret:Z
    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 93
    .end local v0           #bShowCaret:Z
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/infraware/common/UxEditorGestureDetector;->updateCaretPos(Z)V

    .line 94
    iput v5, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    .line 95
    return v6

    .line 88
    :cond_1
    iget v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_nGestureStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    goto :goto_0
.end method

.method public onTextChanged(ZLjava/lang/CharSequence;III)V
    .locals 19
    .parameter "bComposing"
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 290
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 291
    .local v14, endPos:I
    sub-int v11, p5, p4

    .line 293
    .local v11, compLen:I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 294
    .local v18, strText:Ljava/lang/String;
    if-nez v14, :cond_0

    if-nez p4, :cond_0

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 355
    :goto_0
    return-void

    .line 299
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    move-object v5, v0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/infraware/common/UxDocEditorBase;->processTextChangedEvent(ZLjava/lang/CharSequence;III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    goto :goto_0

    .line 305
    :cond_1
    if-nez p1, :cond_3

    .line 306
    if-nez p4, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertString(Ljava/lang/String;III)V

    .line 313
    :goto_1
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertString(Ljava/lang/String;III)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertString(Ljava/lang/String;III)V

    goto :goto_1

    .line 315
    :cond_3
    const/4 v5, 0x1

    sub-int v12, v14, v5

    .line 316
    .local v12, compPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v17, v5

    .line 317
    .local v17, prevPos:I
    :goto_2
    if-nez v11, :cond_6

    .line 318
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTextChanged1  compLen="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p2

    move v1, v12

    move v2, v14

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 348
    :cond_4
    :goto_3
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "comp onTextChanged compPos="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v12

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertString(Ljava/lang/String;III)V

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxEditorGestureDetector;->updateCaretPos(Z)V

    .line 353
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    goto/16 :goto_0

    .line 316
    .end local v17           #prevPos:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_2

    .line 322
    .restart local v17       #prevPos:I
    :cond_6
    if-lez v11, :cond_9

    .line 323
    sub-int v13, v14, v17

    .line 325
    .local v13, diff:I
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTextChanged2-1 prevPos="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " diff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v5, 0x1

    if-ne v13, v5, :cond_8

    .line 327
    const/4 v5, 0x2

    if-lt v14, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 330
    .local v15, nCode1:I
    const/4 v5, 0x2

    sub-int v5, v14, v5

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v16

    .line 331
    .local v16, nCode2:I
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTextChanged2-2 nCode1="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nCode2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 333
    add-int/lit8 v12, v12, -0x1

    .line 334
    add-int/lit8 v11, v11, 0x1

    .line 342
    .end local v15           #nCode1:I
    .end local v16           #nCode2:I
    :cond_7
    :goto_4
    sub-int v5, v14, v11

    move-object/from16 v0, p2

    move v1, v5

    move v2, v14

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 344
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTextChanged2-4 compPos="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " compLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 339
    :cond_8
    const-string v5, "UxEditorGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTextChanged2-3 prevPos="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move/from16 v12, v17

    goto :goto_4

    .line 345
    .end local v13           #diff:I
    :cond_9
    if-gez v11, :cond_4

    .line 346
    sub-int v12, v17, p4

    goto/16 :goto_3
.end method

.method public sendEmptyCommit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_szPrevText:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertString(Ljava/lang/String;III)V

    .line 398
    :cond_0
    return-void
.end method

.method protected final showIme(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-static {v0, v1}, Lcom/infraware/common/Utils;->showIme(Landroid/content/Context;Landroid/view/View;)V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/Utils;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public updateCaretPos(Z)V
    .locals 22
    .parameter "bCommit"

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    move-object v3, v0

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/infraware/common/UxDocEditorBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 360
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretPos()Lcom/infraware/evengine/EV$CARET_POS;

    move-result-object v16

    .line 362
    .local v16, ev_caretPos:Lcom/infraware/evengine/EV$CARET_POS;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_POS;->nParaPos:I

    move v3, v0

    add-int/lit8 v18, v3, 0x1

    .line 363
    .local v18, ev_paraPos:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_POS;->nColPos:I

    move/from16 v17, v0

    .line 364
    .local v17, ev_colPos:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 365
    .local v21, str_colPos:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v19

    .line 366
    .local v19, length:I
    mul-int v3, v18, v19

    mul-int/lit8 v20, v3, 0xa

    .line 367
    .local v20, paraPos:I
    add-int v14, v20, v17

    .line 368
    .local v14, caretPos:I
    const-string v3, "UxEditorGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateCaretPos ev_paraPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ev_colPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paraPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move v10, v14

    .line 371
    .local v10, selStart:I
    move v11, v14

    .line 372
    .local v11, selEnd:I
    const/4 v6, -0x1

    .line 373
    .local v6, candStart:I
    const/4 v7, -0x1

    .line 374
    .local v7, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/infraware/common/UxSurfaceView;->getEditableText()Landroid/text/Editable;

    move-result-object v15

    .line 375
    .local v15, editable:Landroid/text/Editable;
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-nez p1, :cond_2

    .line 376
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v10

    .line 377
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 378
    invoke-static {v15}, Lcom/infraware/common/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 379
    invoke-static {v15}, Lcom/infraware/common/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 387
    :cond_0
    :goto_0
    const-string v3, "UxEditorGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateCaretPos selStart="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " candStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " candEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    move-object v9, v0

    move-object v8, v2

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 390
    .end local v6           #candStart:I
    .end local v7           #candEnd:I
    .end local v10           #selStart:I
    .end local v11           #selEnd:I
    .end local v14           #caretPos:I
    .end local v15           #editable:Landroid/text/Editable;
    .end local v16           #ev_caretPos:Lcom/infraware/evengine/EV$CARET_POS;
    .end local v17           #ev_colPos:I
    .end local v18           #ev_paraPos:I
    .end local v19           #length:I
    .end local v20           #paraPos:I
    .end local v21           #str_colPos:Ljava/lang/String;
    :cond_1
    return-void

    .line 381
    .restart local v6       #candStart:I
    .restart local v7       #candEnd:I
    .restart local v10       #selStart:I
    .restart local v11       #selEnd:I
    .restart local v14       #caretPos:I
    .restart local v15       #editable:Landroid/text/Editable;
    .restart local v16       #ev_caretPos:Lcom/infraware/evengine/EV$CARET_POS;
    .restart local v17       #ev_colPos:I
    .restart local v18       #ev_paraPos:I
    .restart local v19       #length:I
    .restart local v20       #paraPos:I
    .restart local v21       #str_colPos:Ljava/lang/String;
    :cond_2
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p1, :cond_0

    .line 382
    invoke-static {v15}, Lcom/infraware/common/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    const/4 v4, 0x1

    sub-int v4, v3, v4

    .line 383
    .local v4, t:I
    const-string v3, "UxEditorGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "updateCaretPos t="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " candStart="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " candEnd="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/UxEditorGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    move-object v3, v0

    move v5, v4

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto :goto_0
.end method
