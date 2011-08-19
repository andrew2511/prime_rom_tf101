.class public interface abstract Lcom/google/android/youtube/videos/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# virtual methods
.method public abstract getAnalyticsPropertyId()Ljava/lang/String;
.end method

.method public abstract getDeveloperKey()[B
.end method

.method public abstract getDeveloperSecret()[B
.end method

.method public abstract isLargeHeapAvailable(Landroid/content/Context;)Z
.end method

.method public abstract newDrmManager(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/videos/DrmManager;
.end method
