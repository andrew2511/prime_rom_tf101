.class public abstract Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;
.super Landroid/os/Binder;
.source "IVideoChatSessionReadyCallback.java"

# interfaces
.implements Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.talk.videochat.IVideoChatSessionReadyCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.google.android.talk.videochat.IVideoChatSessionReadyCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "com.google.android.talk.videochat.IVideoChatSessionReadyCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.google.android.talk.videochat.IVideoChatSessionReadyCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatSession;

    move-result-object v0

    .line 55
    .local v0, _arg0:Lcom/google/android/talk/videochat/IVideoChatSession;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback$Stub;->onSessionReady(Lcom/google/android/talk/videochat/IVideoChatSession;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 57
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
