.class public interface abstract Lcom/google/android/talk/videochat/IVideoChatServiceBinder;
.super Ljava/lang/Object;
.source "IVideoChatServiceBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestVideoChatSession(JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
