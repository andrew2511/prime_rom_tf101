.class public abstract Lcom/google/android/music/dl/IDownloadManager$Stub;
.super Landroid/os/Binder;
.source "IDownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/IDownloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/IDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.music.dl.IDownloadManager"

.field static final TRANSACTION_addDownloadProgressListener:I = 0x7

.field static final TRANSACTION_getAvailableFreeSpace:I = 0x9

.field static final TRANSACTION_getCurrentDownloads:I = 0x6

.field static final TRANSACTION_getStreamingDownload:I = 0x2

.field static final TRANSACTION_getTotalSpace:I = 0xa

.field static final TRANSACTION_isDownloading:I = 0x4

.field static final TRANSACTION_isKeepOnDownloaderOn:I = 0x5

.field static final TRANSACTION_removeDownloadProgressListener:I = 0x8

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_streamSong:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;
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
    const-string v1, "com.google.android.music.dl.IDownloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/music/dl/IDownloadManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/android/music/dl/IDownloadManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 50
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->streamSong(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    .line 51
    .local v3, _result:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3, p3, v7}, Lcom/google/android/music/dl/DownloadOrder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v6, v7

    .line 59
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 63
    .end local v0           #_arg0:J
    .end local v3           #_result:Lcom/google/android/music/dl/DownloadOrder;
    :sswitch_2
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    .line 67
    .restart local v3       #_result:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v3, p3, v7}, Lcom/google/android/music/dl/DownloadOrder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v6, v7

    .line 75
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 79
    .end local v0           #_arg0:J
    .end local v3           #_result:Lcom/google/android/music/dl/DownloadOrder;
    :sswitch_3
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->stop()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 82
    goto :goto_0

    .line 86
    :sswitch_4
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->isDownloading()Z

    move-result v3

    .line 88
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_2

    move v6, v7

    :goto_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 90
    goto :goto_0

    :cond_2
    move v6, v8

    .line 89
    goto :goto_3

    .line 94
    .end local v3           #_result:Z
    :sswitch_5
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->isKeepOnDownloaderOn()Z

    move-result v3

    .line 96
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_3

    move v6, v7

    :goto_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 98
    goto :goto_0

    :cond_3
    move v6, v8

    .line 97
    goto :goto_4

    .line 102
    .end local v3           #_result:Z
    :sswitch_6
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getCurrentDownloads()Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    :sswitch_7
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 114
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v2

    .line 115
    .local v2, _arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v3

    .line 116
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_4

    move v6, v7

    :goto_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 118
    goto/16 :goto_0

    :cond_4
    move v6, v8

    .line 117
    goto :goto_5

    .line 122
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 126
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v2

    .line 127
    .restart local v2       #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 129
    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    :sswitch_9
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getAvailableFreeSpace()J

    move-result-wide v3

    .line 135
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v3           #_result:J
    :sswitch_a
    const-string v6, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getTotalSpace()J

    move-result-wide v3

    .line 143
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 145
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
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
