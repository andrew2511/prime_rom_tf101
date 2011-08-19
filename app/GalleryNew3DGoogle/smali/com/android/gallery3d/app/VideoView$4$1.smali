.class Lcom/android/gallery3d/app/VideoView$4$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/VideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/VideoView$4;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$4$1;->this$1:Lcom/android/gallery3d/app/VideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$4$1;->this$1:Lcom/android/gallery3d/app/VideoView$4;

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$1300(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$4$1;->this$1:Lcom/android/gallery3d/app/VideoView$4;

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$1300(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView$4$1;->this$1:Lcom/android/gallery3d/app/VideoView$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v1}, Lcom/android/gallery3d/app/VideoView;->access$700(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 394
    :cond_0
    return-void
.end method
