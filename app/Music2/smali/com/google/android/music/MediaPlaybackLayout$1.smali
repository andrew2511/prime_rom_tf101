.class Lcom/google/android/music/MediaPlaybackLayout$1;
.super Ljava/lang/Object;
.source "MediaPlaybackLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackLayout;->setupSideButtonAnimation(ZLandroid/view/View;JLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackLayout;

.field final synthetic val$show:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackLayout;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->this$0:Lcom/google/android/music/MediaPlaybackLayout;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$show:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$show:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 174
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$target:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$show:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout$1;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method
