.class Lcom/android/videoeditor/widgets/MediaItemView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaItemView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v4

    .line 154
    :goto_0
    return v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 139
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/android/videoeditor/widgets/MediaItemView;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v1, v2, v4, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/android/videoeditor/widgets/MediaItemView;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v1, v2, v5, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 154
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$1;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v1, v2, v5, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method
