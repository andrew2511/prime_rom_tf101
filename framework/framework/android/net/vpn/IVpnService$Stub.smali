.class public abstract Landroid/net/vpn/IVpnService$Stub;
.super Landroid/os/Binder;
.source "IVpnService.java"

# interfaces
.implements Landroid/net/vpn/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vpn/IVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vpn/IVpnService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.vpn.IVpnService"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_isIdle:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.vpn.IVpnService"

    invoke-virtual {p0, p0, v0}, Landroid/net/vpn/IVpnService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;
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
    const-string v1, "android.net.vpn.IVpnService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/vpn/IVpnService;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/net/vpn/IVpnService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/vpn/IVpnService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/vpn/IVpnService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_84

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 46
    :sswitch_a
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_9

    .line 51
    :sswitch_11
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 54
    sget-object v4, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 60
    .local v0, _arg0:Landroid/net/vpn/VpnProfile;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/vpn/IVpnService$Stub;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 64
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_3d

    move v4, v5

    :goto_36
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 66
    goto :goto_9

    .line 57
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :cond_3b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    goto :goto_24

    .restart local v1       #_arg1:Ljava/lang/String;
    .restart local v2       #_arg2:Ljava/lang/String;
    .restart local v3       #_result:Z
    :cond_3d
    move v4, v6

    .line 65
    goto :goto_36

    .line 70
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3f
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/net/vpn/IVpnService$Stub;->disconnect()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 73
    goto :goto_9

    .line 77
    :sswitch_4c
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 80
    sget-object v4, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 85
    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/net/vpn/IVpnService$Stub;->getState(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 88
    goto :goto_9

    .line 83
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    .end local v3           #_result:Ljava/lang/String;
    :cond_6b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    goto :goto_5f

    .line 92
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    :sswitch_6d
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/net/vpn/IVpnService$Stub;->isIdle()Z

    move-result v3

    .line 94
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_81

    move v4, v5

    :goto_7c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 96
    goto :goto_9

    :cond_81
    move v4, v6

    .line 95
    goto :goto_7c

    .line 42
    nop

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_6d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
