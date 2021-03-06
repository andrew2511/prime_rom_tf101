.class public abstract Landroid/nfc/INfcSecureElement$Stub;
.super Landroid/os/Binder;
.source "INfcSecureElement.java"

# interfaces
.implements Landroid/nfc/INfcSecureElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcSecureElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcSecureElement$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcSecureElement"

.field static final TRANSACTION_closeSecureElementConnection:I = 0x2

.field static final TRANSACTION_exchangeAPDU:I = 0x3

.field static final TRANSACTION_getSecureElementTechList:I = 0x4

.field static final TRANSACTION_getSecureElementUid:I = 0x5

.field static final TRANSACTION_openSecureElementConnection:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcSecureElement"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcSecureElement$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcSecureElement;
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
    const-string v1, "android.nfc.INfcSecureElement"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcSecureElement;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/nfc/INfcSecureElement;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/nfc/INfcSecureElement$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcSecureElement$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_7a

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_8

    .line 50
    :sswitch_10
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcSecureElement$Stub;->openSecureElementConnection()I

    move-result v2

    .line 52
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 54
    goto :goto_8

    .line 58
    .end local v2           #_result:I
    :sswitch_21
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcSecureElement$Stub;->closeSecureElementConnection(I)I

    move-result v2

    .line 62
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 64
    goto :goto_8

    .line 68
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_36
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 73
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcSecureElement$Stub;->exchangeAPDU(I[B)[B

    move-result-object v2

    .line 74
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 76
    goto :goto_8

    .line 80
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_result:[B
    :sswitch_4f
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcSecureElement$Stub;->getSecureElementTechList(I)[I

    move-result-object v2

    .line 84
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    move v3, v4

    .line 86
    goto :goto_8

    .line 90
    .end local v0           #_arg0:I
    .end local v2           #_result:[I
    :sswitch_64
    const-string v3, "android.nfc.INfcSecureElement"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcSecureElement$Stub;->getSecureElementUid(I)[B

    move-result-object v2

    .line 94
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 96
    goto :goto_8

    .line 41
    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_64
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
