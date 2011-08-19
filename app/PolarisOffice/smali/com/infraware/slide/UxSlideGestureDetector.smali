.class public Lcom/infraware/slide/UxSlideGestureDetector;
.super Lcom/infraware/common/UxEditorGestureDetector;
.source "UxSlideGestureDetector.java"


# instance fields
.field m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

.field m_oSlideEditorShowActivity:Lcom/infraware/slide/UxSlideEditorShowActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;I)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "a_oListener"
    .parameter "a_oCaretHandler"
    .parameter "a_oObjectHandler"
    .parameter "nEditModeType"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/infraware/common/UxEditorGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    .line 17
    iput-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    .line 18
    iput-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideEditorShowActivity:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 23
    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 24
    check-cast p1, Lcom/infraware/slide/UxSlideEditorActivity;

    .end local p1
    iput-object p1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    .line 27
    :goto_0
    return-void

    .line 26
    .restart local p1
    :cond_0
    check-cast p1, Lcom/infraware/slide/UxSlideEditorShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideEditorShowActivity:Lcom/infraware/slide/UxSlideEditorShowActivity;

    goto :goto_0
.end method


# virtual methods
.method protected onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->requestFocus()Z

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPressProc(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x6

    .line 32
    iget-boolean v1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_bSearchMode:Z

    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->mEvObjectProc:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/common/EvObjectProc;->LongPressObjCtrl(II)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iput v4, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_nGestureStatus:I

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/slide/UxSlideEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    .line 42
    .local v0, oUpdater:Lcom/infraware/common/UxToolBarUpdater;
    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canRedo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->performLongClick()Z

    .line 45
    iput v4, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_nGestureStatus:I

    goto :goto_0
.end method

.method public onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/infraware/slide/UxSlideGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->requestFocus()Z

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
