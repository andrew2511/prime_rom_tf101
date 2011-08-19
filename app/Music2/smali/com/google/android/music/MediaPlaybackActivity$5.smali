.class Lcom/google/android/music/MediaPlaybackActivity$5;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$show:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$show:Z

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-ne v1, v2, :cond_1

    .line 899
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 901
    :cond_1
    monitor-exit v0

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 904
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$show:Z

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    :cond_0
    return-void
.end method
