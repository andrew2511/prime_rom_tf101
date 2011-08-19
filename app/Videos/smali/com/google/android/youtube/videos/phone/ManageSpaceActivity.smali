.class public Lcom/google/android/youtube/videos/phone/ManageSpaceActivity;
.super Landroid/app/Activity;
.source "ManageSpaceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/ManageSpaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "offline_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, videosIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/phone/ManageSpaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/ManageSpaceActivity;->finish()V

    .line 28
    return-void
.end method
