.class public interface abstract Lcom/google/android/youtube/app/player/Director$Listener;
.super Ljava/lang/Object;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/player/Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBranding(Lcom/google/android/youtube/core/model/Branding;)V
.end method

.method public abstract onControllerHidden()V
.end method

.method public abstract onControllerShown()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onReset()V
.end method

.method public abstract onToggleFullscreen(Z)V
.end method

.method public abstract onVideo(Lcom/google/android/youtube/core/model/Video;)V
.end method
