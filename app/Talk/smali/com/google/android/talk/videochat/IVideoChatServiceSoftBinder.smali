.class public interface abstract Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
.super Ljava/lang/Object;
.source "IVideoChatServiceSoftBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;
    }
.end annotation


# virtual methods
.method public abstract addRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCallStateUpdate(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
