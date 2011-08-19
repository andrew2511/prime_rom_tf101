.class public Lcom/zinio/mobile/android/view/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/VideoView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 42
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 45
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    .line 46
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 51
    iget-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/zinio/mobile/android/view/g;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/g;-><init>(Lcom/zinio/mobile/android/view/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    :cond_0
    return-void
.end method
