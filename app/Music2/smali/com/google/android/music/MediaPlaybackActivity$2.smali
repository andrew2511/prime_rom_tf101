.class Lcom/google/android/music/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentProgress:I

.field private mFromTouch:Z

.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mFromTouch:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 521
    :cond_0
    if-nez p3, :cond_2

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 524
    :cond_2
    iput p2, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mCurrentProgress:I

    .line 525
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$100(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mCurrentProgress:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$002(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 526
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mFromTouch:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 528
    invoke-virtual {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity$2;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "bar"

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mFromTouch:Z

    .line 512
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$200(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$200(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$000(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->seek(J)J

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mFromTouch:Z

    .line 537
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$002(Lcom/google/android/music/MediaPlaybackActivity;J)J

    goto :goto_0
.end method
