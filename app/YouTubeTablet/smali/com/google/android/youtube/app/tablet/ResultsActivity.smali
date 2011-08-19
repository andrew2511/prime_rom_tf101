.class public Lcom/google/android/youtube/app/tablet/ResultsActivity;
.super Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.source "ResultsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/app/tablet/ResultsController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/google/android/youtube/app/tablet/ResultsController;->createArguments(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;
    .locals 4
    .parameter "launchBundle"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 38
    .local v0, application:Lcom/google/android/youtube/app/YouTubeApplication;
    new-instance v1, Lcom/google/android/youtube/app/tablet/ResultsController;

    new-instance v2, Lcom/google/android/youtube/app/tablet/TabletNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/youtube/app/tablet/ResultsController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->enableUpNavigation(Z)V

    .line 33
    return-void
.end method

.method protected onUpPressed()V
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
