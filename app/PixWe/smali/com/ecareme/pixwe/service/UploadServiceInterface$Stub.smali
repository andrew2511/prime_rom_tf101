.class public abstract Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;
.super Landroid/os/Binder;
.source "UploadServiceInterface.java"

# interfaces
.implements Lcom/ecareme/pixwe/service/UploadServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecareme.pixwe.service.UploadServiceInterface"

.field static final TRANSACTION_clearNotification:I = 0x7

.field static final TRANSACTION_cloudToLocalSync:I = 0xa

.field static final TRANSACTION_delToSync:I = 0x9

.field static final TRANSACTION_getUploadStatus:I = 0x6

.field static final TRANSACTION_pouseUpload:I = 0x3

.field static final TRANSACTION_resetService:I = 0x5

.field static final TRANSACTION_showUploadStatus:I = 0x4

.field static final TRANSACTION_stardUpload:I = 0x2

.field static final TRANSACTION_uploadDB:I = 0x8

.field static final TRANSACTION_uploadMediaList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecareme/pixwe/service/UploadServiceInterface;
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
    const-string v1, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->uploadMediaList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 53
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 55
    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 59
    .end local v0           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->stardUpload()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 62
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->pouseUpload()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 69
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->showUploadStatus()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 76
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->resetService()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 83
    goto :goto_0

    .line 87
    :sswitch_6
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->getUploadStatus()I

    move-result v2

    .line 89
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 91
    goto :goto_0

    .line 95
    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->clearNotification()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 98
    goto :goto_0

    .line 102
    :sswitch_8
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->uploadDB()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 105
    goto/16 :goto_0

    .line 109
    :sswitch_9
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->delToSync()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 112
    goto/16 :goto_0

    .line 116
    :sswitch_a
    const-string v3, "com.ecareme.pixwe.service.UploadServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->cloudToLocalSync()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 119
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
