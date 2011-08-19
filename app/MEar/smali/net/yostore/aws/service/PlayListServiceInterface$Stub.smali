.class public abstract Lnet/yostore/aws/service/PlayListServiceInterface$Stub;
.super Landroid/os/Binder;
.source "PlayListServiceInterface.java"

# interfaces
.implements Lnet/yostore/aws/service/PlayListServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayListServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/PlayListServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.yostore.aws.service.PlayListServiceInterface"

.field static final TRANSACTION_AddOfflinePlaylist:I = 0x3

.field static final TRANSACTION_DelOfflinePlaylist:I = 0x4

.field static final TRANSACTION_PauseeDownload:I = 0x6

.field static final TRANSACTION_RenewPlayList:I = 0x2

.field static final TRANSACTION_ResumeDownload:I = 0x5

.field static final TRANSACTION_cliarNotification:I = 0x7

.field static final TRANSACTION_getDownloadMessage:I = 0x9

.field static final TRANSACTION_getDownloadStatus:I = 0x8

.field static final TRANSACTION_resetService:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p0, p0, v0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/PlayListServiceInterface;
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
    const-string v1, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/yostore/aws/service/PlayListServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnet/yostore/aws/service/PlayListServiceInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lnet/yostore/aws/service/PlayListServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->resetService()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 50
    goto :goto_0

    .line 54
    :sswitch_2
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 59
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->RenewPlayList(Ljava/lang/String;J)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 61
    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:J
    :sswitch_3
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->AddOfflinePlaylist(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 70
    goto :goto_0

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->DelOfflinePlaylist(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 79
    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->ResumeDownload()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 86
    goto :goto_0

    .line 90
    :sswitch_6
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->PauseeDownload()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 93
    goto :goto_0

    .line 97
    :sswitch_7
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->cliarNotification()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 100
    goto :goto_0

    .line 104
    :sswitch_8
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->getDownloadStatus()I

    move-result v3

    .line 106
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 108
    goto/16 :goto_0

    .line 112
    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "net.yostore.aws.service.PlayListServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->getDownloadMessage()I

    move-result v3

    .line 114
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 116
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
