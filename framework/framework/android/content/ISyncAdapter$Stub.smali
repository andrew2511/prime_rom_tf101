.class public abstract Landroid/content/ISyncAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncAdapter.java"

# interfaces
.implements Landroid/content/ISyncAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_initialize:I = 0x3

.field static final TRANSACTION_startSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.content.ISyncAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.content.ISyncAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/ISyncAdapter;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/content/ISyncAdapter;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/content/ISyncAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/ISyncAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_76

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 46
    :sswitch_9
    const-string v4, "android.content.ISyncAdapter"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_8

    .line 51
    :sswitch_10
    const-string v4, "android.content.ISyncAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/content/ISyncContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 58
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 64
    .local v2, _arg2:Landroid/accounts/Account;
    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 65
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 70
    .local v3, _arg3:Landroid/os/Bundle;
    :goto_3d
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ISyncAdapter$Stub;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    move v4, v5

    .line 71
    goto :goto_8

    .line 61
    .end local v2           #_arg2:Landroid/accounts/Account;
    .end local v3           #_arg3:Landroid/os/Bundle;
    :cond_42
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/accounts/Account;
    goto :goto_2f

    .line 68
    :cond_44
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/Bundle;
    goto :goto_3d

    .line 75
    .end local v0           #_arg0:Landroid/content/ISyncContext;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/accounts/Account;
    .end local v3           #_arg3:Landroid/os/Bundle;
    :sswitch_46
    const-string v4, "android.content.ISyncAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    .line 78
    .restart local v0       #_arg0:Landroid/content/ISyncContext;
    invoke-virtual {p0, v0}, Landroid/content/ISyncAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    move v4, v5

    .line 79
    goto :goto_8

    .line 83
    .end local v0           #_arg0:Landroid/content/ISyncContext;
    :sswitch_58
    const-string v4, "android.content.ISyncAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    .line 86
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 92
    .local v0, _arg0:Landroid/accounts/Account;
    :goto_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/ISyncAdapter$Stub;->initialize(Landroid/accounts/Account;Ljava/lang/String;)V

    move v4, v5

    .line 94
    goto :goto_8

    .line 89
    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_74
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_6b

    .line 42
    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_46
        0x3 -> :sswitch_58
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
