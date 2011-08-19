.class public interface abstract Lcom/google/android/youtube/core/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/Analytics$VideoCategory;
    }
.end annotation


# virtual methods
.method public abstract trackEvent(Ljava/lang/String;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract trackPage(Ljava/lang/String;)V
.end method

.method public abstract trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V
.end method

.method public abstract trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V
.end method

.method public abstract trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V
.end method
