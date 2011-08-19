.class public abstract Lcom/google/android/talk/videochat/IVideoChatSession$Stub;
.super Landroid/os/Binder;
.source "IVideoChatSession.java"

# interfaces
.implements Lcom/google/android/talk/videochat/IVideoChatSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/IVideoChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/IVideoChatSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatSession;
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
    const-string v1, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/talk/videochat/IVideoChatSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/talk/videochat/IVideoChatSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/google/android/talk/videochat/IVideoChatSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/ICallStateListener;

    move-result-object v0

    .line 55
    .local v0, _arg0:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->addRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 57
    goto :goto_0

    .line 61
    .end local v0           #_arg0:Lcom/google/android/talk/videochat/ICallStateListener;
    :sswitch_2
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/ICallStateListener;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->removeRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lcom/google/android/talk/videochat/ICallStateListener;
    :sswitch_3
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->initiateVideoChat(Ljava/lang/String;)Z

    move-result v1

    .line 74
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 76
    goto :goto_0

    :cond_0
    move v2, v4

    .line 75
    goto :goto_1

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_4
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->initiateVoiceChat(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 86
    goto :goto_0

    :cond_1
    move v2, v4

    .line 85
    goto :goto_2

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->terminateChat(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 95
    goto :goto_0

    .line 99
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->acceptIncomingCall(Ljava/lang/String;)Z

    move-result v1

    .line 103
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 105
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 104
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_7
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->declineIncomingCall(Ljava/lang/String;)Z

    move-result v1

    .line 113
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v1, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 115
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 114
    goto :goto_4

    .line 119
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_8
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 122
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->setMute(Z)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 124
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v4

    .line 121
    goto :goto_5

    .line 128
    :sswitch_9
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.google.android.talk.videochat.IVideoChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 139
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;->setUseBluetooth(Z)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 141
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v4

    .line 138
    goto :goto_6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
