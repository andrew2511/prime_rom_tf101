.class public abstract Lcom/asus/dm/IStatusNotifyRegister$Stub;
.super Landroid/os/Binder;
.source "IStatusNotifyRegister.java"

# interfaces
.implements Lcom/asus/dm/IStatusNotifyRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/IStatusNotifyRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/IStatusNotifyRegister$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.dm.IStatusNotifyRegister"

.field static final TRANSACTION_cancelDMSession:I = 0x3

.field static final TRANSACTION_destoryEngine:I = 0x4

.field static final TRANSACTION_registerStateCallback:I = 0x1

.field static final TRANSACTION_unregisterStateCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p0, p0, v0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IStatusNotifyRegister;
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
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/dm/IStatusNotifyRegister;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/asus/dm/IStatusNotifyRegister;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/dm/IStatusNotifyRegister$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/dm/IStatusNotifyRegister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/IDMServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IDMServiceStateCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/asus/dm/IDMServiceStateCallback;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->registerStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 52
    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/asus/dm/IDMServiceStateCallback;
    :sswitch_2
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/IDMServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IDMServiceStateCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/asus/dm/IDMServiceStateCallback;
    invoke-virtual {p0, v0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 61
    goto :goto_0

    .line 65
    .end local v0           #_arg0:Lcom/asus/dm/IDMServiceStateCallback;
    :sswitch_3
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->cancelDMSession()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v1, "com.asus.dm.IStatusNotifyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->destoryEngine()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 75
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
