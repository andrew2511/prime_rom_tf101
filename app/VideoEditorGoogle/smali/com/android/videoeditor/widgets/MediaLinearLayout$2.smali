.class Lcom/android/videoeditor/widgets/MediaLinearLayout$2;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "view"
    .parameter "e"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    new-instance v1, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieTransition;

    invoke-direct {v1, v2, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "area"
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    :cond_1
    move v0, v1

    .line 489
    goto :goto_0
.end method
