.class public interface abstract Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;
.super Ljava/lang/Object;
.source "RemoteVideoChatAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoChatTask"
.end annotation


# virtual methods
.method public abstract runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
