.class Lcom/android/videoeditor/widgets/MediaLinearLayout$1;
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
    .line 413
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "view"
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    .line 456
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 461
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v2

    if-le v2, v6, :cond_2

    .line 462
    const-string v2, "File"

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowBuilder()Landroid/view/View$DragShadowBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 466
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2, p1, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {v3, v4, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "area"
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 418
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x0

    .line 449
    :goto_0
    return v2

    .line 422
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 445
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2, p1, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    :cond_2
    move v2, v4

    .line 449
    goto :goto_0

    .line 424
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 426
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 428
    .local v1, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto :goto_1

    .line 438
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v1           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v3, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
