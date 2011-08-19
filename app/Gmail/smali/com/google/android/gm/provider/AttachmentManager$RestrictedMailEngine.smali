.class public interface abstract Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/AttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestrictedMailEngine"
.end annotation


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRequestVersion()I
.end method

.method public abstract onDownloadFinished(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)V
.end method

.method public abstract postBackgroundTask(Ljava/lang/Runnable;)V
.end method
