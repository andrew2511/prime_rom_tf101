.class public interface abstract Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;
.super Ljava/lang/Object;
.source "IVideoChatSessionReadyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSessionReady(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
