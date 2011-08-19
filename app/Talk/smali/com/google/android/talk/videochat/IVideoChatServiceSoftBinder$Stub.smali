.class public abstract Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;
.super Landroid/os/Binder;
.source "IVideoChatServiceSoftBinder.java"

# interfaces
.implements Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 49
    :sswitch_0
    const-string v3, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 58
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/ICallStateListener;

    move-result-object v2

    .line 59
    .local v2, _arg1:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;->addRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 61
    goto :goto_0

    .line 65
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/google/android/talk/videochat/ICallStateListener;
    :sswitch_2
    const-string v3, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 69
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/ICallStateListener;

    move-result-object v2

    .line 70
    .restart local v2       #_arg1:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;->removeRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 72
    goto :goto_0

    .line 76
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/google/android/talk/videochat/ICallStateListener;
    :sswitch_3
    const-string v3, "com.google.android.talk.videochat.IVideoChatServiceSoftBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 79
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;->requestCallStateUpdate(J)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 81
    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
