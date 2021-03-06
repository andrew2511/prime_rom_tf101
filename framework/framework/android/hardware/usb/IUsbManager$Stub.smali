.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setDevicePackage:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_1fa

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 44
    goto :goto_9

    .line 48
    :sswitch_11
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, _arg0:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v0, :cond_2b

    .line 54
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v0, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    move v4, v5

    .line 60
    goto :goto_9

    .line 58
    :cond_2b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 64
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_2f
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 68
    .local v3, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_49

    .line 70
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_47
    move v4, v5

    .line 76
    goto :goto_9

    .line 74
    :cond_49
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_4d
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v3

    .line 82
    .local v3, _result:Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_63

    .line 84
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v3, p3, v5}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_61
    move v4, v5

    .line 90
    goto :goto_9

    .line 88
    :cond_63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_61

    .line 94
    .end local v3           #_result:Landroid/hardware/usb/UsbAccessory;
    :sswitch_67
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    .line 97
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 102
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_7a
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 103
    .local v3, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v3, :cond_8e

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_89
    move v4, v5

    .line 111
    goto/16 :goto_9

    .line 100
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_8c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_7a

    .line 109
    .restart local v3       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_8e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_89

    .line 115
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_92
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b2

    .line 118
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 124
    .local v0, _arg0:Landroid/hardware/usb/UsbDevice;
    :goto_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 127
    goto/16 :goto_9

    .line 121
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_b2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbDevice;
    goto :goto_a5

    .line 131
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    :sswitch_b4
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d4

    .line 134
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 140
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 143
    goto/16 :goto_9

    .line 137
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_d4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_c7

    .line 147
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    :sswitch_d6
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    .line 150
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 155
    .local v0, _arg0:Landroid/hardware/usb/UsbDevice;
    :goto_e9
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    .line 156
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_fb

    move v4, v5

    :goto_f3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 158
    goto/16 :goto_9

    .line 153
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v3           #_result:Z
    :cond_f9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbDevice;
    goto :goto_e9

    .restart local v3       #_result:Z
    :cond_fb
    move v4, v6

    .line 157
    goto :goto_f3

    .line 162
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v3           #_result:Z
    :sswitch_fd
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_120

    .line 165
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 170
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_110
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 171
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v3, :cond_122

    move v4, v5

    :goto_11a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 173
    goto/16 :goto_9

    .line 168
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Z
    :cond_120
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_110

    .restart local v3       #_result:Z
    :cond_122
    move v4, v6

    .line 172
    goto :goto_11a

    .line 177
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Z
    :sswitch_124
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_152

    .line 180
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 186
    .local v0, _arg0:Landroid/hardware/usb/UsbDevice;
    :goto_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_154

    .line 189
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 194
    .local v2, _arg2:Landroid/app/PendingIntent;
    :goto_149
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 196
    goto/16 :goto_9

    .line 183
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :cond_152
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbDevice;
    goto :goto_137

    .line 192
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_154
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/app/PendingIntent;
    goto :goto_149

    .line 200
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :sswitch_156
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_184

    .line 203
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 209
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_186

    .line 212
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 217
    .restart local v2       #_arg2:Landroid/app/PendingIntent;
    :goto_17b
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 219
    goto/16 :goto_9

    .line 206
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :cond_184
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_169

    .line 215
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_186
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/app/PendingIntent;
    goto :goto_17b

    .line 223
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :sswitch_188
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a8

    .line 226
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 232
    .local v0, _arg0:Landroid/hardware/usb/UsbDevice;
    :goto_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 235
    goto/16 :goto_9

    .line 229
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    .end local v1           #_arg1:I
    :cond_1a8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbDevice;
    goto :goto_19b

    .line 239
    .end local v0           #_arg0:Landroid/hardware/usb/UsbDevice;
    :sswitch_1aa
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ca

    .line 242
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 248
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 251
    goto/16 :goto_9

    .line 245
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:I
    :cond_1ca
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_1bd

    .line 255
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    :sswitch_1cc
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;)Z

    move-result v3

    .line 259
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v3, :cond_1e5

    move v4, v5

    :goto_1df
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 261
    goto/16 :goto_9

    :cond_1e5
    move v4, v6

    .line 260
    goto :goto_1df

    .line 265
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1e7
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 270
    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_1fa
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_67
        0x5 -> :sswitch_92
        0x6 -> :sswitch_b4
        0x7 -> :sswitch_d6
        0x8 -> :sswitch_fd
        0x9 -> :sswitch_124
        0xa -> :sswitch_156
        0xb -> :sswitch_188
        0xc -> :sswitch_1aa
        0xd -> :sswitch_1cc
        0xe -> :sswitch_1e7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
