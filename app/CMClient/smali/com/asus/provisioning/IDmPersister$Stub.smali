.class public abstract Lcom/asus/provisioning/IDmPersister$Stub;
.super Landroid/os/Binder;
.source "IDmPersister.java"

# interfaces
.implements Lcom/asus/provisioning/IDmPersister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/provisioning/IDmPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/provisioning/IDmPersister$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.asus.provisioning.IDmPersister"

.field static final TRANSACTION_setDMProvisioning:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.asus.provisioning.IDmPersister"

    invoke-virtual {p0, p0, v0}, Lcom/asus/provisioning/IDmPersister$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/provisioning/IDmPersister;
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
    const-string v1, "com.asus.provisioning.IDmPersister"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/asus/provisioning/IDmPersister;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/asus/provisioning/IDmPersister;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/asus/provisioning/IDmPersister$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/asus/provisioning/IDmPersister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "com.asus.provisioning.IDmPersister"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "com.asus.provisioning.IDmPersister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/asus/provisioning/oma/Application;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/provisioning/oma/Application;

    .line 56
    .local v0, _arg0:Lcom/asus/provisioning/oma/Application;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/asus/provisioning/IDmPersister$Stub;->setDMProvisioning(Lcom/asus/provisioning/oma/Application;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 58
    goto :goto_0

    .line 54
    .end local v0           #_arg0:Lcom/asus/provisioning/oma/Application;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/asus/provisioning/oma/Application;
    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
