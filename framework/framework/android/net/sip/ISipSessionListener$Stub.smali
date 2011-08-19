.class public abstract Landroid/net/sip/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSessionListener"

.field static final TRANSACTION_onCallBusy:I = 0x6

.field static final TRANSACTION_onCallChangeFailed:I = 0x8

.field static final TRANSACTION_onCallEnded:I = 0x5

.field static final TRANSACTION_onCallEstablished:I = 0x4

.field static final TRANSACTION_onCalling:I = 0x1

.field static final TRANSACTION_onError:I = 0x7

.field static final TRANSACTION_onRegistering:I = 0x9

.field static final TRANSACTION_onRegistrationDone:I = 0xa

.field static final TRANSACTION_onRegistrationFailed:I = 0xb

.field static final TRANSACTION_onRegistrationTimeout:I = 0xc

.field static final TRANSACTION_onRinging:I = 0x2

.field static final TRANSACTION_onRingingBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.net.sip.ISipSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipSessionListener;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/net/sip/ISipSessionListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/sip/ISipSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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

    .line 42
    sparse-switch p1, :sswitch_data_148

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 46
    :sswitch_9
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 47
    goto :goto_8

    .line 51
    :sswitch_10
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 54
    .local v0, _arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCalling(Landroid/net/sip/ISipSession;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 56
    goto :goto_8

    .line 60
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_25
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    .line 65
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 71
    .local v1, _arg1:Landroid/net/sip/SipProfile;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 74
    goto :goto_8

    .line 68
    .end local v1           #_arg1:Landroid/net/sip/SipProfile;
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_4c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/sip/SipProfile;
    goto :goto_40

    .line 78
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Landroid/net/sip/SipProfile;
    :sswitch_4e
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRingingBack(Landroid/net/sip/ISipSession;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 83
    goto :goto_8

    .line 87
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_63
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 91
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 94
    goto :goto_8

    .line 98
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_7c
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 103
    goto/16 :goto_8

    .line 107
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_92
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 112
    goto/16 :goto_8

    .line 116
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_a8
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 125
    goto/16 :goto_8

    .line 129
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_c6
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 133
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 138
    goto/16 :goto_8

    .line 142
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_e4
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 145
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 147
    goto/16 :goto_8

    .line 151
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_fa
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 155
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 158
    goto/16 :goto_8

    .line 162
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    :sswitch_114
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 166
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 171
    goto/16 :goto_8

    .line 175
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_132
    const-string v3, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 178
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 180
    goto/16 :goto_8

    .line 42
    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_92
        0x7 -> :sswitch_a8
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_e4
        0xa -> :sswitch_fa
        0xb -> :sswitch_114
        0xc -> :sswitch_132
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
