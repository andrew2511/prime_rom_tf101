.class public interface abstract Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueueListener"
.end annotation


# virtual methods
.method public abstract notifyQueueComplete()V
.end method

.method public abstract notifyQueueFailed()V
.end method
