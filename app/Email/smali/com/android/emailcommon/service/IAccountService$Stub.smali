.class public abstract Lcom/android/emailcommon/service/IAccountService$Stub;
.super Landroid/os/Binder;
.source "IAccountService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.emailcommon.service.IAccountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IAccountService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IAccountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 50
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginFailed(J)V

    move v3, v4

    .line 51
    goto :goto_0

    .line 55
    .end local v0           #_arg0:J
    :sswitch_2
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 58
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginSucceeded(J)V

    move v3, v4

    .line 59
    goto :goto_0

    .line 63
    .end local v0           #_arg0:J
    :sswitch_3
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyNewMessages(J)V

    move v3, v4

    .line 67
    goto :goto_0

    .line 71
    .end local v0           #_arg0:J
    :sswitch_4
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->accountDeleted()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 74
    goto :goto_0

    .line 78
    :sswitch_5
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->restoreAccountsIfNeeded()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 81
    goto :goto_0

    .line 85
    :sswitch_6
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 88
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->getAccountColor(J)I

    move-result v2

    .line 89
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_arg0:J
    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 99
    .local v2, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v3, v4

    .line 107
    goto :goto_0

    .line 105
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 111
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_8
    const-string v3, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 115
    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
