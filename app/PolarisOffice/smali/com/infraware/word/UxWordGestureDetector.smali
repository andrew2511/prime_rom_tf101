.class public Lcom/infraware/word/UxWordGestureDetector;
.super Lcom/infraware/common/UxEditorGestureDetector;
.source "UxWordGestureDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "a_oListener"
    .parameter "a_oCaret"
    .parameter "a_oObjectHandler"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/infraware/common/UxEditorGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/word/UxWordGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/infraware/word/UxWordGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->requestFocus()Z

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->onDoubleTapComfirmedProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/infraware/word/UxWordGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/infraware/word/UxWordGestureDetector;->m_oView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->requestFocus()Z

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxEditorGestureDetector;->onSingleTapConfirmedProc(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
