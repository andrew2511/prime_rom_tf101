.class public interface abstract Lcom/google/android/youtube/videos/PinManager$Listener;
.super Ljava/lang/Object;
.source "PinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/PinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDirectoryMountedChange()V
.end method

.method public abstract onPinErrorInsufficientSpace(Ljava/lang/String;)V
.end method

.method public abstract onPinErrorLicenseException(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onPinErrorUnsupportedVideoFormat(Ljava/lang/String;)V
.end method

.method public abstract onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V
.end method

.method public abstract onRestored()V
.end method

.method public abstract onUnpinError(Ljava/lang/String;)V
.end method
