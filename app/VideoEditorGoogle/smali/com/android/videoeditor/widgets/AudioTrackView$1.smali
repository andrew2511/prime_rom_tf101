.class Lcom/android/videoeditor/widgets/AudioTrackView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AudioTrackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackView;->access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackView;->access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackView;->access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackView;->access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackView;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
