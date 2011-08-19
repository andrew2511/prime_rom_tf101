.class public interface abstract Lcom/google/android/talk/videochat/ICallStateListener;
.super Ljava/lang/Object;
.source "ICallStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/ICallStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
