.class public Lcom/google/android/talk/videochat/RenderTestActivity;
.super Landroid/app/Activity;
.source "RenderTestActivity.java"


# instance fields
.field mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

.field mView:Lcom/google/android/talk/videochat/GlVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/16 v4, 0x140

    const/16 v3, 0xc8

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/RenderTestActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/Libjingle;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    .line 21
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->init()V

    .line 22
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    const-string v1, "foo@test.com/bar"

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/Libjingle;->prepareEngine(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/RenderTestActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mView:Lcom/google/android/talk/videochat/GlVideoView;

    .line 24
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/RenderTestActivity;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mView:Lcom/google/android/talk/videochat/GlVideoView;

    iget-object v1, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->setLibjingle(Lcom/google/android/talk/videochat/Libjingle;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/talk/videochat/Libjingle;->useFakeFrames(III)V

    .line 27
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/talk/videochat/Libjingle;->useFakeFrames(III)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->onPause()V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/google/android/talk/videochat/RenderTestActivity;->mView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->onResume()V

    .line 40
    return-void
.end method
