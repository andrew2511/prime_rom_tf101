.class public abstract Lcom/asus/cm/IDMService$Stub;
.super Landroid/os/Binder;
.source "IDMService.java"

# interfaces
.implements Lcom/asus/cm/IDMService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/IDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/IDMService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.cm.IDMService"

.field static final TRANSACTION_doCIDMSession:I = 0x2

.field static final TRANSACTION_doDMSession:I = 0x1

.field static final TRANSACTION_doProvision:I = 0x4

.field static final TRANSACTION_setDMEngineDebugable:I = 0x5

.field static final TRANSACTION_showConfirmUpdateDialog:I = 0x3

.field static final TRANSACTION_showLockScreen:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.asus.cm.IDMService"

    invoke-virtual {p0, p0, v0}, Lcom/asus/cm/IDMService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/cm/IDMService;
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
    const-string v1, "com.asus.cm.IDMService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/cm/IDMService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/asus/cm/IDMService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/cm/IDMService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/cm/IDMService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/asus/cm/IDMService$Stub;->doDMSession()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 51
    goto :goto_0

    .line 55
    :sswitch_2
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/asus/cm/IDMService$Stub;->doCIDMSession()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 58
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 65
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/asus/cm/IDMService$Stub;->showConfirmUpdateDialog(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 67
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v3

    .line 64
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 74
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/asus/cm/IDMService$Stub;->doProvision([B)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:[B
    :sswitch_5
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 83
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/asus/cm/IDMService$Stub;->setDMEngineDebugable(Z)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 85
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v3

    .line 82
    goto :goto_2

    .line 89
    :sswitch_6
    const-string v1, "com.asus.cm.IDMService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/asus/cm/IDMService$Stub;->showLockScreen()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 92
    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
