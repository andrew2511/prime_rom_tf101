.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Landroid/nfc/Tag;I)V
    .registers 3
    .parameter "tag"
    .parameter "tech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 40
    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 41
    return-void
.end method


# virtual methods
.method checkConnected()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call connect() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1b
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 118
    :try_start_1
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_18

    .line 122
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 123
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 125
    :goto_17
    return-void

    .line 119
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_29

    .line 122
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 123
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    goto :goto_17

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 123
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    throw v1
.end method

.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    iget v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v2, v3, v4}, Landroid/nfc/INfcTag;->connect(II)I

    move-result v1

    .line 76
    .local v1, errorCode:I
    if-nez v1, :cond_1f

    .line 78
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 87
    return-void

    .line 81
    :cond_1f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 83
    .end local v1           #errorCode:I
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public isConnected()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-boolean v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v1, :cond_7

    move v1, v3

    .line 66
    :goto_6
    return v1

    .line 63
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_6

    .line 64
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 66
    goto :goto_6
.end method

.method public reconnect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v2, :cond_d

    .line 93
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Technology not connected yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->reconnect(I)I

    move-result v1

    .line 99
    .local v1, errorCode:I
    if-eqz v1, :cond_45

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 101
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 102
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_2d

    .line 104
    .end local v1           #errorCode:I
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 106
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 107
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #errorCode:I
    :cond_45
    return-void
.end method

.method transceive([BZ)[B
    .registers 7
    .parameter "data"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 132
    :try_start_3
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v1

    .line 134
    .local v1, result:Landroid/nfc/TransceiveResult;
    if-nez v1, :cond_2f

    .line 135
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_1e

    .line 148
    .end local v1           #result:Landroid/nfc/TransceiveResult;
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #result:Landroid/nfc/TransceiveResult;
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 138
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->getResponseData()[B

    move-result-object v2

    return-object v2

    .line 140
    :cond_3a
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->isTagLost()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 141
    new-instance v2, Landroid/nfc/TagLostException;

    const-string v3, "Tag was lost."

    invoke-direct {v2, v3}, Landroid/nfc/TagLostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_48
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_51} :catch_1e
.end method
