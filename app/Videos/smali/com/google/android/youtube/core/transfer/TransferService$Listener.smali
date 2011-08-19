.class public interface abstract Lcom/google/android/youtube/core/transfer/TransferService$Listener;
.super Ljava/lang/Object;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
.end method

.method public abstract onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
.end method

.method public abstract onRestored()V
.end method

.method public abstract onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
.end method

.method public abstract onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
.end method
