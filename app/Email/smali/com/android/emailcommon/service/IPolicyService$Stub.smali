.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
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
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 55
    .local v0, _arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    .line 56
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 58
    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_1

    .restart local v3       #_result:Z
    :cond_1
    move v4, v6

    .line 57
    goto :goto_2

    .line 62
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :sswitch_2
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 65
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->policiesRequired(J)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 67
    goto :goto_0

    .line 71
    .end local v0           #_arg0:J
    :sswitch_3
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 74
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->updatePolicies(J)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:J
    :sswitch_4
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 85
    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 87
    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_2
    move v2, v6

    .line 84
    goto :goto_3

    .line 91
    .end local v0           #_arg0:J
    :sswitch_5
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActiveAdmin()Z

    move-result v3

    .line 93
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v3, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 95
    goto :goto_0

    :cond_3
    move v4, v6

    .line 94
    goto :goto_4

    .line 99
    .end local v3           #_result:Z
    :sswitch_6
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    move v4, v5

    .line 101
    goto/16 :goto_0

    .line 105
    :sswitch_7
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    sget-object v4, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 113
    .local v0, _arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isSupported(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    .line 114
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 116
    goto/16 :goto_0

    .line 111
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_5

    .restart local v3       #_result:Z
    :cond_5
    move v4, v6

    .line 115
    goto :goto_6

    .line 120
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 123
    sget-object v4, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 128
    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    .line 129
    .local v3, _result:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_7

    .line 131
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    move v4, v5

    .line 137
    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Lcom/android/emailcommon/service/PolicySet;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_7

    .line 135
    .restart local v3       #_result:Lcom/android/emailcommon/service/PolicySet;
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

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
