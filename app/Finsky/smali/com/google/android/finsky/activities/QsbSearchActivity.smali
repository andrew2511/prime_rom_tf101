.class public Lcom/google/android/finsky/activities/QsbSearchActivity;
.super Landroid/app/Activity;
.source "QsbSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QsbSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/QsbSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QsbSearchActivity;->finish()V

    .line 29
    return-void
.end method
