.class Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;
.super Lcom/asus/DLNA/IMusicPlaybackService$Stub;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/asus/DLNA/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/asus/DLNA/MusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/asus/DLNA/IMusicPlaybackService$Stub;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public duration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->duration()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->next()V

    .line 115
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->pause()V

    .line 103
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->play()V

    .line 107
    return-void
.end method

.method public position()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->position()I

    move-result v0

    return v0
.end method

.method public prev()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->prev()V

    .line 111
    return-void
.end method

.method public seek(I)I
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/asus/DLNA/MusicPlaybackService;->seek(I)I

    move-result v0

    return v0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "trackname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/asus/DLNA/MusicPlaybackService;->setDataSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->stop()V

    .line 99
    return-void
.end method
