.class public Lcom/google/android/youtube/videos/honeycomb/PlatformImpl;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcom/google/android/youtube/videos/Platform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsPropertyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "UA-20803990-2"

    return-object v0
.end method

.method public getDeveloperKey()[B
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/K;->DEVELOPER_KEY:[B

    return-object v0
.end method

.method public getDeveloperSecret()[B
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/K;->DEVELOPER_SECRET:[B

    return-object v0
.end method

.method public isLargeHeapAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 28
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newDrmManager(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/videos/DrmManager;
    .locals 1
    .parameter "context"
    .parameter "executor"
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    return-object v0
.end method
