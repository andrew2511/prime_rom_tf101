.class public Lcom/infraware/sheet/UxSheetGestureDetector;
.super Lcom/infraware/common/UxEditorGestureDetector;
.source "UxSheetGestureDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "a_oListener"
    .parameter "a_oCaretHandler"
    .parameter "a_oObjectHandler"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/infraware/common/UxEditorGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    .line 52
    :goto_0
    return v2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-virtual {v0}, Lcom/infraware/common/UiCoreEventListener;->notifySheetEditFocus()V

    goto :goto_0
.end method

.method public onDoubleTapProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_nGestureStatus:I

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 63
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocEditorBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 77
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, p2}, Lcom/infraware/common/UxDocEditorBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPressProc(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlSelIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/UiCoreEventListener;->notifyLongPressProc(II)V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->onLongPressProc(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 22
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->requestFocus()Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    if-lez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/UiCoreEventListener;->drawObject(Lcom/infraware/common/EvObjectProc;Z)V

    .line 27
    :cond_1
    return v2
.end method
