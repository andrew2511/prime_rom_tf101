.class public Lcom/google/android/youtube/videos/tablet/VideosActivity;
.super Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;
.source "VideosActivity.java"


# instance fields
.field private localVideosController:Lcom/google/android/youtube/videos/tablet/LocalVideosController;

.field private navigation:Lcom/google/android/youtube/videos/Navigation;

.field private rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/tablet/VideosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createLocalVideosIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    .line 63
    .local v0, application:Lcom/google/android/youtube/videos/VideosApplication;
    new-instance v2, Lcom/google/android/youtube/videos/tablet/TabletNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 66
    .local v1, launchBundle:Landroid/os/Bundle;
    new-instance v2, Lcom/google/android/youtube/videos/tablet/RentalsController;

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/tablet/RentalsController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    .line 67
    new-instance v2, Lcom/google/android/youtube/videos/tablet/LocalVideosController;

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/tablet/LocalVideosController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/tablet/LocalVideosController;

    .line 69
    const v2, 0x7f0c0002

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->addController(ILcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f0c0003

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/tablet/LocalVideosController;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->addController(ILcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 72
    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const-string v5, "offline_mode"

    const-string v4, "download_video_id"

    const-string v3, "authAccount"

    .line 79
    const-string v1, "authAccount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    const-string v2, "authAccount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/tablet/RentalsController;->reset(Ljava/lang/String;)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, defaultToRentalsTab:Z
    const-string v1, "offline_mode"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    const-string v2, "offline_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/tablet/RentalsController;->setOfflineManagement(Z)V

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_1
    const-string v1, "download_video_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    const-string v2, "download_video_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/tablet/RentalsController;->pinVideo(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_2
    const-string v1, "selected_controller_index"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->selectControllerFromExtras(Landroid/os/Bundle;)V

    .line 98
    :cond_3
    :goto_0
    return-void

    .line 95
    :cond_4
    if-eqz v0, :cond_3

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/tablet/RentalsController;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->selectController(Lcom/google/android/youtube/core/tablet/Controller;)V

    goto :goto_0
.end method
