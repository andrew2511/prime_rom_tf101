.class public abstract Landroid/os/ServiceManagerNative;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ServiceManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v1, 0x0

    .line 42
    :goto_3
    return-object v1

    .line 36
    :cond_4
    const-string v1, "android.os.IServiceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IServiceManager;

    .line 38
    .local v0, in:Landroid/os/IServiceManager;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 39
    goto :goto_3

    .line 42
    :cond_10
    new-instance v1, Landroid/os/ServiceManagerProxy;

    invoke-direct {v1, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 102
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    .line 53
    packed-switch p1, :pswitch_data_5e

    .line 97
    :goto_4
    :pswitch_4
    const/4 v4, 0x0

    :goto_5
    return v4

    .line 55
    :pswitch_6
    :try_start_6
    const-string v4, "android.os.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 58
    .local v3, service:Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    .line 59
    goto :goto_5

    .line 63
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #service:Landroid/os/IBinder;
    :pswitch_18
    const-string v4, "android.os.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ServiceManagerNative;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 66
    .restart local v3       #service:Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    .line 67
    goto :goto_5

    .line 71
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #service:Landroid/os/IBinder;
    :pswitch_2a
    const-string v4, "android.os.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2       #name:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 74
    .restart local v3       #service:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/os/ServiceManagerNative;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move v4, v5

    .line 75
    goto :goto_5

    .line 79
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #service:Landroid/os/IBinder;
    :pswitch_3c
    const-string v4, "android.os.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/ServiceManagerNative;->listServices()[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, list:[Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 82
    goto :goto_5

    .line 86
    .end local v1           #list:[Ljava/lang/String;
    :pswitch_4a
    const-string v4, "android.os.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPermissionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;

    move-result-object v0

    .line 90
    .local v0, controller:Landroid/os/IPermissionController;
    invoke-virtual {p0, v0}, Landroid/os/ServiceManagerNative;->setPermissionController(Landroid/os/IPermissionController;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_5a} :catch_5c

    move v4, v5

    .line 91
    goto :goto_5

    .line 94
    .end local v0           #controller:Landroid/os/IPermissionController;
    :catch_5c
    move-exception v4

    goto :goto_4

    .line 53
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_18
        :pswitch_2a
        :pswitch_3c
        :pswitch_4
        :pswitch_4a
    .end packed-switch
.end method
