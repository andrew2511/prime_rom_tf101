.class Lcom/infraware/common/UxSurfaceView$ChangeWatcher;
.super Ljava/lang/Object;
.source "UxSurfaceView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/UxSurfaceView;


# direct methods
.method private constructor <init>(Lcom/infraware/common/UxSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/UxSurfaceView;Lcom/infraware/common/UxSurfaceView$ChangeWatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;-><init>(Lcom/infraware/common/UxSurfaceView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 558
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 537
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    .line 565
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 562
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    .line 568
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-boolean v0, v0, Lcom/infraware/common/UxSurfaceView;->m_bKeyProc:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iput-boolean v1, v0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-boolean v0, v0, Lcom/infraware/common/UxSurfaceView;->m_bEditableClear:Z

    if-nez v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-object v0, v0, Lcom/infraware/common/UxSurfaceView;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-boolean v1, v1, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/UxGestureDetector;->onTextChanged(ZLjava/lang/CharSequence;III)V

    .line 549
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-boolean v0, v0, Lcom/infraware/common/UxSurfaceView;->m_bComposing:Z

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->clearEditable()V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/infraware/common/UxSurfaceView$ChangeWatcher;->this$0:Lcom/infraware/common/UxSurfaceView;

    iput-boolean v1, v0, Lcom/infraware/common/UxSurfaceView;->m_bEditableClear:Z

    goto :goto_0
.end method
