.class Lcom/google/android/youtube/videos/player/Director$8;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->showShortClockConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 721
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showContinue()V

    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 723
    return-void
.end method
