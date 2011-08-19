.class public Lcom/ecareme/pixwe/media/MovieView;
.super Landroid/app/Activity;
.source "MovieView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieView"


# instance fields
.field private mApp:Lcom/ecareme/pixwe/app/App;

.field private mControl:Lcom/ecareme/pixwe/media/MovieViewControl;

.field private mFinishOnCompletion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/MovieView;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mFinishOnCompletion:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v5, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ecareme/pixwe/media/MovieView;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 46
    const v5, 0x7f030008

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/media/MovieView;->setContentView(I)V

    .line 47
    const v5, 0x7f090030

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/media/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    new-instance v5, Lcom/ecareme/pixwe/media/MovieView$1;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, p0, v2, p0, v6}, Lcom/ecareme/pixwe/media/MovieView$1;-><init>(Lcom/ecareme/pixwe/media/MovieView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/ecareme/pixwe/media/MovieView;->mControl:Lcom/ecareme/pixwe/media/MovieViewControl;

    .line 57
    const-string v5, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const-string v5, "android.intent.extra.screenOrientation"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, orientation:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MovieView;->getRequestedOrientation()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/MovieView;->setRequestedOrientation(I)V

    .line 63
    .end local v1           #orientation:I
    :cond_0
    const-string v5, "android.intent.extra.finishOnCompletion"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/MovieView;->mFinishOnCompletion:Z

    .line 64
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MovieView;->getWindow()Landroid/view/Window;

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
    .line 86
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mControl:Lcom/ecareme/pixwe/media/MovieViewControl;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MovieViewControl;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mControl:Lcom/ecareme/pixwe/media/MovieViewControl;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MovieViewControl;->onPause()V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mControl:Lcom/ecareme/pixwe/media/MovieViewControl;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MovieViewControl;->onResume()V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onResume()V

    .line 82
    return-void
.end method
