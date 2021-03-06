.class public abstract Lcom/android/internal/os/IDropBoxManagerService$Stub;
.super Landroid/os/Binder;
.source "IDropBoxManagerService.java"

# interfaces
.implements Lcom/android/internal/os/IDropBoxManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IDropBoxManagerService"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_getNextEntry:I = 0x3

.field static final TRANSACTION_isTagEnabled:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "com.android.internal.os.IDropBoxManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/os/IDropBoxManagerService;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/os/IDropBoxManagerService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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

    .line 45
    sparse-switch p1, :sswitch_data_6a

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 49
    :sswitch_a
    const-string v4, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 50
    goto :goto_9

    .line 54
    :sswitch_11
    const-string v4, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 57
    sget-object v4, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager$Entry;

    .line 62
    .local v0, _arg0:Landroid/os/DropBoxManager$Entry;
    :goto_24
    invoke-virtual {p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->add(Landroid/os/DropBoxManager$Entry;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 64
    goto :goto_9

    .line 60
    .end local v0           #_arg0:Landroid/os/DropBoxManager$Entry;
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/DropBoxManager$Entry;
    goto :goto_24

    .line 68
    .end local v0           #_arg0:Landroid/os/DropBoxManager$Entry;
    :sswitch_2e
    const-string v4, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 72
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_46

    move v4, v5

    :goto_41
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 74
    goto :goto_9

    :cond_46
    move v4, v6

    .line 73
    goto :goto_41

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_48
    const-string v4, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 83
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v3

    .line 84
    .local v3, _result:Landroid/os/DropBoxManager$Entry;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_66

    .line 86
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v3, p3, v5}, Landroid/os/DropBoxManager$Entry;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_64
    move v4, v5

    .line 92
    goto :goto_9

    .line 90
    :cond_66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64

    .line 45
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_48
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
