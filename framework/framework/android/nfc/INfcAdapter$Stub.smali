.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_createLlcpConnectionlessSocket:I = 0x10

.field static final TRANSACTION_createLlcpServiceSocket:I = 0x11

.field static final TRANSACTION_createLlcpSocket:I = 0x12

.field static final TRANSACTION_deselectSecureElement:I = 0x13

.field static final TRANSACTION_disable:I = 0x14

.field static final TRANSACTION_disableForegroundDispatch:I = 0xd

.field static final TRANSACTION_disableForegroundNdefPush:I = 0xf

.field static final TRANSACTION_enable:I = 0x15

.field static final TRANSACTION_enableForegroundDispatch:I = 0xc

.field static final TRANSACTION_enableForegroundNdefPush:I = 0xe

.field static final TRANSACTION_getLlcpConnectionlessInterface:I = 0x2

.field static final TRANSACTION_getLlcpInterface:I = 0x1

.field static final TRANSACTION_getLlcpServiceInterface:I = 0x3

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x7

.field static final TRANSACTION_getNfcTagInterface:I = 0x4

.field static final TRANSACTION_getP2pInitiatorInterface:I = 0x6

.field static final TRANSACTION_getP2pTargetInterface:I = 0x5

.field static final TRANSACTION_getProperties:I = 0x16

.field static final TRANSACTION_getSecureElementList:I = 0x17

.field static final TRANSACTION_getSelectedSecureElement:I = 0x18

.field static final TRANSACTION_isEnabled:I = 0x8

.field static final TRANSACTION_localGet:I = 0x9

.field static final TRANSACTION_localSet:I = 0xa

.field static final TRANSACTION_openTagConnection:I = 0xb

.field static final TRANSACTION_selectSecureElement:I = 0x19

.field static final TRANSACTION_setProperties:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_2ec

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 45
    :sswitch_b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpInterface()Landroid/nfc/ILlcpSocket;

    move-result-object v6

    .line 52
    .local v6, _result:Landroid/nfc/ILlcpSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/nfc/ILlcpSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 54
    goto :goto_a

    :cond_29
    move-object v0, v8

    .line 53
    goto :goto_24

    .line 58
    .end local v6           #_result:Landroid/nfc/ILlcpSocket;
    :sswitch_2b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpConnectionlessInterface()Landroid/nfc/ILlcpConnectionlessSocket;

    move-result-object v6

    .line 60
    .local v6, _result:Landroid/nfc/ILlcpConnectionlessSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_42

    invoke-interface {v6}, Landroid/nfc/ILlcpConnectionlessSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 62
    goto :goto_a

    :cond_42
    move-object v0, v8

    .line 61
    goto :goto_3d

    .line 66
    .end local v6           #_result:Landroid/nfc/ILlcpConnectionlessSocket;
    :sswitch_44
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpServiceInterface()Landroid/nfc/ILlcpServiceSocket;

    move-result-object v6

    .line 68
    .local v6, _result:Landroid/nfc/ILlcpServiceSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_5b

    invoke-interface {v6}, Landroid/nfc/ILlcpServiceSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 70
    goto :goto_a

    :cond_5b
    move-object v0, v8

    .line 69
    goto :goto_56

    .line 74
    .end local v6           #_result:Landroid/nfc/ILlcpServiceSocket;
    :sswitch_5d
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v6

    .line 76
    .local v6, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 78
    goto :goto_a

    :cond_74
    move-object v0, v8

    .line 77
    goto :goto_6f

    .line 82
    .end local v6           #_result:Landroid/nfc/INfcTag;
    :sswitch_76
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pTargetInterface()Landroid/nfc/IP2pTarget;

    move-result-object v6

    .line 84
    .local v6, _result:Landroid/nfc/IP2pTarget;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v6, :cond_8e

    invoke-interface {v6}, Landroid/nfc/IP2pTarget;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 86
    goto/16 :goto_a

    :cond_8e
    move-object v0, v8

    .line 85
    goto :goto_88

    .line 90
    .end local v6           #_result:Landroid/nfc/IP2pTarget;
    :sswitch_90
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pInitiatorInterface()Landroid/nfc/IP2pInitiator;

    move-result-object v6

    .line 92
    .local v6, _result:Landroid/nfc/IP2pInitiator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_a8

    invoke-interface {v6}, Landroid/nfc/IP2pInitiator;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 94
    goto/16 :goto_a

    :cond_a8
    move-object v0, v8

    .line 93
    goto :goto_a2

    .line 98
    .end local v6           #_result:Landroid/nfc/IP2pInitiator;
    :sswitch_aa
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcSecureElementInterface()Landroid/nfc/INfcSecureElement;

    move-result-object v6

    .line 100
    .local v6, _result:Landroid/nfc/INfcSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v6, :cond_c2

    invoke-interface {v6}, Landroid/nfc/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 102
    goto/16 :goto_a

    :cond_c2
    move-object v0, v8

    .line 101
    goto :goto_bc

    .line 106
    .end local v6           #_result:Landroid/nfc/INfcSecureElement;
    :sswitch_c4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isEnabled()Z

    move-result v6

    .line 108
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v6, :cond_d9

    move v0, v7

    :goto_d3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 110
    goto/16 :goto_a

    :cond_d9
    move v0, v9

    .line 109
    goto :goto_d3

    .line 114
    .end local v6           #_result:Z
    :sswitch_db
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->localGet()Landroid/nfc/NdefMessage;

    move-result-object v6

    .line 116
    .local v6, _result:Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v6, :cond_f2

    .line 118
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v6, p3, v7}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ef
    move v0, v7

    .line 124
    goto/16 :goto_a

    .line 122
    :cond_f2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ef

    .line 128
    .end local v6           #_result:Landroid/nfc/NdefMessage;
    :sswitch_f6
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_112

    .line 131
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 136
    .local v1, _arg0:Landroid/nfc/NdefMessage;
    :goto_109
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->localSet(Landroid/nfc/NdefMessage;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 138
    goto/16 :goto_a

    .line 134
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :cond_112
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/NdefMessage;
    goto :goto_109

    .line 142
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :sswitch_114
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_130

    .line 145
    sget-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 150
    .local v1, _arg0:Landroid/nfc/Tag;
    :goto_127
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->openTagConnection(Landroid/nfc/Tag;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 152
    goto/16 :goto_a

    .line 148
    .end local v1           #_arg0:Landroid/nfc/Tag;
    :cond_130
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/Tag;
    goto :goto_127

    .line 156
    .end local v1           #_arg0:Landroid/nfc/Tag;
    :sswitch_132
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_172

    .line 159
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 165
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_174

    .line 166
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 172
    .local v2, _arg1:Landroid/app/PendingIntent;
    :goto_153
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 174
    .local v3, _arg2:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_176

    .line 175
    sget-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .line 180
    .local v4, _arg3:Landroid/nfc/TechListParcel;
    :goto_169
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 182
    goto/16 :goto_a

    .line 162
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :cond_172
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_145

    .line 169
    :cond_174
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    goto :goto_153

    .line 178
    .restart local v3       #_arg2:[Landroid/content/IntentFilter;
    :cond_176
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/nfc/TechListParcel;
    goto :goto_169

    .line 186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :sswitch_178
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_194

    .line 189
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 194
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_18b
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 196
    goto/16 :goto_a

    .line 192
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_194
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_18b

    .line 200
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_196
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c0

    .line 203
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 209
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c2

    .line 210
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 215
    .local v2, _arg1:Landroid/nfc/NdefMessage;
    :goto_1b7
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 217
    goto/16 :goto_a

    .line 206
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :cond_1c0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a9

    .line 213
    :cond_1c2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_1b7

    .line 221
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_1c4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e0

    .line 224
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 229
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1d7
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 231
    goto/16 :goto_a

    .line 227
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_1e0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d7

    .line 235
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e2
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->createLlcpConnectionlessSocket(I)I

    move-result v6

    .line 239
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 241
    goto/16 :goto_a

    .line 245
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_1f8
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->createLlcpServiceSocket(ILjava/lang/String;III)I

    move-result v6

    .line 257
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 259
    goto/16 :goto_a

    .line 263
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:I
    :sswitch_21f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->createLlcpSocket(IIII)I

    move-result v6

    .line 273
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 275
    goto/16 :goto_a

    .line 279
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_241
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deselectSecureElement()I

    move-result v6

    .line 281
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 283
    goto/16 :goto_a

    .line 287
    .end local v6           #_result:I
    :sswitch_253
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disable()Z

    move-result v6

    .line 289
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v6, :cond_268

    move v0, v7

    :goto_262
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 291
    goto/16 :goto_a

    :cond_268
    move v0, v9

    .line 290
    goto :goto_262

    .line 295
    .end local v6           #_result:Z
    :sswitch_26a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v6

    .line 297
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v6, :cond_27f

    move v0, v7

    :goto_279
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 299
    goto/16 :goto_a

    :cond_27f
    move v0, v9

    .line 298
    goto :goto_279

    .line 303
    .end local v6           #_result:Z
    :sswitch_281
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 309
    goto/16 :goto_a

    .line 313
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_297
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v6

    .line 315
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v7

    .line 317
    goto/16 :goto_a

    .line 321
    .end local v6           #_result:[I
    :sswitch_2a9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSelectedSecureElement()I

    move-result v6

    .line 323
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 325
    goto/16 :goto_a

    .line 329
    .end local v6           #_result:I
    :sswitch_2bb
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->selectSecureElement(I)I

    move-result v6

    .line 333
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 335
    goto/16 :goto_a

    .line 339
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_2d1
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 345
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 347
    goto/16 :goto_a

    .line 41
    nop

    :sswitch_data_2ec
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_44
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_76
        0x6 -> :sswitch_90
        0x7 -> :sswitch_aa
        0x8 -> :sswitch_c4
        0x9 -> :sswitch_db
        0xa -> :sswitch_f6
        0xb -> :sswitch_114
        0xc -> :sswitch_132
        0xd -> :sswitch_178
        0xe -> :sswitch_196
        0xf -> :sswitch_1c4
        0x10 -> :sswitch_1e2
        0x11 -> :sswitch_1f8
        0x12 -> :sswitch_21f
        0x13 -> :sswitch_241
        0x14 -> :sswitch_253
        0x15 -> :sswitch_26a
        0x16 -> :sswitch_281
        0x17 -> :sswitch_297
        0x18 -> :sswitch_2a9
        0x19 -> :sswitch_2bb
        0x1a -> :sswitch_2d1
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
