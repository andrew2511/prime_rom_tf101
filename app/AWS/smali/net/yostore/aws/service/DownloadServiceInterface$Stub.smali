.class public abstract Lnet/yostore/aws/service/DownloadServiceInterface$Stub;
.super Landroid/os/Binder;
.source "DownloadServiceInterface.java"

# interfaces
.implements Lnet/yostore/aws/service/DownloadServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/DownloadServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.yostore.aws.service.DownloadServiceInterface"

.field static final TRANSACTION_addDownloadItem:I = 0x5

.field static final TRANSACTION_addDownloadItemList:I = 0x4

.field static final TRANSACTION_clearNotification:I = 0x1

.field static final TRANSACTION_pauseDownload:I = 0x7

.field static final TRANSACTION_resetService:I = 0x2

.field static final TRANSACTION_restartDownload:I = 0x6

.field static final TRANSACTION_startDownload:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p0, p0, v0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/DownloadServiceInterface;
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
    const-string v1, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/yostore/aws/service/DownloadServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnet/yostore/aws/service/DownloadServiceInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lnet/yostore/aws/service/DownloadServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->clearNotification()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 50
    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->resetService()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 57
    goto :goto_0

    .line 61
    :sswitch_3
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->startDownload()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 64
    goto :goto_0

    .line 68
    :sswitch_4
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    sget-object v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->addDownloadItemList(Ljava/util/List;)Z

    move-result v2

    .line 72
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 74
    goto :goto_0

    :cond_0
    move v3, v5

    .line 73
    goto :goto_1

    .line 78
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    .end local v2           #_result:Z
    :sswitch_5
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    sget-object v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 86
    .local v0, _arg0:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    :goto_2
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->addDownloadItem(Lnet/yostore/aws/sqlite/entity/DownloadItem;)Z

    move-result v2

    .line 87
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 89
    goto :goto_0

    .line 84
    .end local v0           #_arg0:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .end local v2           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    goto :goto_2

    .restart local v2       #_result:Z
    :cond_2
    move v3, v5

    .line 88
    goto :goto_3

    .line 93
    .end local v0           #_arg0:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->restartDownload()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 96
    goto :goto_0

    .line 100
    :sswitch_7
    const-string v3, "net.yostore.aws.service.DownloadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;->pauseDownload()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 103
    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
