.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# instance fields
.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v5, 0x7f040005

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 45
    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intent:Landroid/content/Intent;
    new-instance v5, Lcom/android/gallery3d/app/MovieActivity$1;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, p0, v2, p0, v6}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 55
    const-string v5, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, "android.intent.extra.screenOrientation"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, orientation:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 63
    .end local v1           #orientation:I
    :cond_0
    const-string v5, "android.intent.extra.finishOnCompletion"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 65
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 66
    .local v4, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 67
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 72
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 83
    return-void
.end method
