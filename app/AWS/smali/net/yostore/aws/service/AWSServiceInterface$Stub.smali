.class public abstract Lnet/yostore/aws/service/AWSServiceInterface$Stub;
.super Landroid/os/Binder;
.source "AWSServiceInterface.java"

# interfaces
.implements Lnet/yostore/aws/service/AWSServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/AWSServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/AWSServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.yostore.aws.service.AWSServiceInterface"

.field static final TRANSACTION_addUploadItem:I = 0x5

.field static final TRANSACTION_addUploadItemList:I = 0x4

.field static final TRANSACTION_clearNotification:I = 0xb

.field static final TRANSACTION_clearUploadQueue:I = 0x6

.field static final TRANSACTION_createFolder:I = 0x7

.field static final TRANSACTION_getMySyncFolderId:I = 0x8

.field static final TRANSACTION_login:I = 0x1

.field static final TRANSACTION_logout:I = 0x2

.field static final TRANSACTION_pauseUpload:I = 0xa

.field static final TRANSACTION_resetService:I = 0xc

.field static final TRANSACTION_restartUpload:I = 0xd

.field static final TRANSACTION_startUpload:I = 0x9

.field static final TRANSACTION_updateApiConfig:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p0, p0, v0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/AWSServiceInterface;
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
    const-string v1, "net.yostore.aws.service.AWSServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lnet/yostore/aws/service/AWSServiceInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lnet/yostore/aws/service/AWSServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->login(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 53
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_2
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->logout()Z

    move-result v5

    .line 61
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v5, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 63
    goto :goto_0

    :cond_0
    move v7, v9

    .line 62
    goto :goto_1

    .line 67
    .end local v5           #_result:Z
    :sswitch_3
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->updateApiConfig()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 70
    goto :goto_0

    .line 74
    :sswitch_4
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    sget-object v7, Lnet/yostore/aws/sqlite/entity/UploadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 77
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    invoke-virtual {p0, v2}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->addUploadItemList(Ljava/util/List;)Z

    move-result v5

    .line 78
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v5, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 80
    goto :goto_0

    :cond_1
    move v7, v9

    .line 79
    goto :goto_2

    .line 84
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    .end local v5           #_result:Z
    :sswitch_5
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    sget-object v7, Lnet/yostore/aws/sqlite/entity/UploadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 92
    .local v0, _arg0:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :goto_3
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->addUploadItem(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z

    move-result v5

    .line 93
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v5, :cond_3

    move v7, v8

    :goto_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 95
    goto/16 :goto_0

    .line 90
    .end local v0           #_arg0:Lnet/yostore/aws/sqlite/entity/UploadItem;
    .end local v5           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lnet/yostore/aws/sqlite/entity/UploadItem;
    goto :goto_3

    .restart local v5       #_result:Z
    :cond_3
    move v7, v9

    .line 94
    goto :goto_4

    .line 99
    .end local v0           #_arg0:Lnet/yostore/aws/sqlite/entity/UploadItem;
    .end local v5           #_result:Z
    :sswitch_6
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->clearUploadQueue(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 104
    goto/16 :goto_0

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3, v4}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->createFolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 116
    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_result:J
    :sswitch_8
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 126
    goto/16 :goto_0

    .line 130
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->startUpload()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 133
    goto/16 :goto_0

    .line 137
    :sswitch_a
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->pauseUpload()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 140
    goto/16 :goto_0

    .line 144
    :sswitch_b
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->clearNotification()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_c
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->resetService()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 154
    goto/16 :goto_0

    .line 158
    :sswitch_d
    const-string v7, "net.yostore.aws.service.AWSServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->restartUpload()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 161
    goto/16 :goto_0

    .line 38
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
