.class public Lcom/google/android/finsky/activities/AppsUrlHandlerActivity;
.super Landroid/app/Activity;
.source "AppsUrlHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->forwardIntentToMainActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsUrlHandlerActivity;->finish()V

    .line 16
    return-void
.end method
