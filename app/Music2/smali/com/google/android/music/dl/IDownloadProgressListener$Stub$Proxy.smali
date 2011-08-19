.class Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadProgressListener.java"

# interfaces
.implements Lcom/google/android/music/dl/IDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "com.google.android.music.dl.IDownloadProgressListener"

    return-object v0
.end method

.method public onDownloadProgress(JIFI)V
    .locals 5
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.google.android.music.dl.IDownloadProgressListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 87
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v2, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    return-void

    .line 92
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
