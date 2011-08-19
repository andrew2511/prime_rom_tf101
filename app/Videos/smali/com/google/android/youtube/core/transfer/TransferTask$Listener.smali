.class public interface abstract Lcom/google/android/youtube/core/transfer/TransferTask$Listener;
.super Ljava/lang/Object;
.source "TransferTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCanceled(Ljava/lang/String;)V
.end method

.method public abstract onCompleted(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
.end method

.method public abstract onProgress(Ljava/lang/String;J)V
.end method

.method public abstract onSize(Ljava/lang/String;J)V
.end method
