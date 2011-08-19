.class public Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;
.super Landroid/app/Service;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountsChangedService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/BaseApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    .line 547
    .local v0, userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->access$400(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 548
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;->stopSelf()V

    .line 549
    const/4 v1, 0x2

    return v1
.end method
