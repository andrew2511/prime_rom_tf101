.class public abstract Lcom/asus/dm/IManageEMail$Stub;
.super Landroid/os/Binder;
.source "IManageEMail.java"

# interfaces
.implements Lcom/asus/dm/IManageEMail;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/IManageEMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/IManageEMail$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.dm.IManageEMail"

.field static final TRANSACTION_getRecvHost:I = 0x1

.field static final TRANSACTION_getRecvPassword:I = 0xd

.field static final TRANSACTION_getRecvPort:I = 0x3

.field static final TRANSACTION_getRecvProtocol:I = 0x9

.field static final TRANSACTION_getRecvUserName:I = 0xb

.field static final TRANSACTION_getReplyAddr:I = 0xf

.field static final TRANSACTION_getSendHost:I = 0x5

.field static final TRANSACTION_getSendPort:I = 0x7

.field static final TRANSACTION_setRecvHost:I = 0x2

.field static final TRANSACTION_setRecvPassword:I = 0xe

.field static final TRANSACTION_setRecvPort:I = 0x4

.field static final TRANSACTION_setRecvProtocol:I = 0xa

.field static final TRANSACTION_setRecvUserName:I = 0xc

.field static final TRANSACTION_setReplyAddr:I = 0x10

.field static final TRANSACTION_setSendHost:I = 0x6

.field static final TRANSACTION_setSendPort:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.asus.dm.IManageEMail"

    invoke-virtual {p0, p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IManageEMail;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "com.asus.dm.IManageEMail"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/dm/IManageEMail;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/asus/dm/IManageEMail;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/dm/IManageEMail$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/dm/IManageEMail$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getRecvHost()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 52
    goto :goto_0

    .line 56
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setRecvHost(Ljava/lang/String;)Z

    move-result v1

    .line 60
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 62
    goto :goto_0

    :cond_0
    move v2, v4

    .line 61
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getRecvPort()I

    move-result v1

    .line 68
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 70
    goto :goto_0

    .line 74
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setRecvPort(I)Z

    move-result v1

    .line 78
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 80
    goto :goto_0

    :cond_1
    move v2, v4

    .line 79
    goto :goto_2

    .line 84
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getSendHost()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 88
    goto :goto_0

    .line 92
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setSendHost(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 98
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 97
    goto :goto_3

    .line 102
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_7
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getSendPort()I

    move-result v1

    .line 104
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v1           #_result:I
    :sswitch_8
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setSendPort(I)Z

    move-result v1

    .line 114
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v1, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 116
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 115
    goto :goto_4

    .line 120
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_9
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getRecvProtocol()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setRecvProtocol(Ljava/lang/String;)Z

    move-result v1

    .line 132
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v1, :cond_4

    move v2, v3

    :goto_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 134
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 133
    goto :goto_5

    .line 138
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_b
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getRecvUserName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setRecvUserName(Ljava/lang/String;)Z

    move-result v1

    .line 150
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v1, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 152
    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 151
    goto :goto_6

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_d
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getRecvPassword()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 160
    goto/16 :goto_0

    .line 164
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setRecvPassword(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v1, :cond_6

    move v2, v3

    :goto_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 170
    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 169
    goto :goto_7

    .line 174
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_f
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/asus/dm/IManageEMail$Stub;->getReplyAddr()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 178
    goto/16 :goto_0

    .line 182
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v2, "com.asus.dm.IManageEMail"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IManageEMail$Stub;->setReplyAddr(Ljava/lang/String;)Z

    move-result v1

    .line 186
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v1, :cond_7

    move v2, v3

    :goto_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 188
    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 187
    goto :goto_8

    .line 39
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
