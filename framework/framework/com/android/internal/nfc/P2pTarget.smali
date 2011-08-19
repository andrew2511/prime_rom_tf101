.class public Lcom/android/internal/nfc/P2pTarget;
.super Lcom/android/internal/nfc/P2pDevice;
.source "P2pTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "P2pTarget"


# instance fields
.field private final isClosed:Z

.field private isConnected:Z

.field private final mService:Landroid/nfc/IP2pTarget;


# direct methods
.method constructor <init>(Landroid/nfc/IP2pTarget;I)V
    .registers 4
    .parameter "service"
    .parameter "handle"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/nfc/P2pDevice;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/android/internal/nfc/P2pTarget;->isClosed:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/nfc/P2pTarget;->isConnected:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/nfc/P2pTarget;->mService:Landroid/nfc/IP2pTarget;

    .line 70
    iput p2, p0, Lcom/android/internal/nfc/P2pTarget;->mHandle:I

    .line 71
    return-void
.end method


# virtual methods
.method public checkState()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/nfc/NfcException;
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method public connect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/nfc/NfcException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/nfc/P2pTarget;->checkState()V

    .line 82
    iget-boolean v2, p0, Lcom/android/internal/nfc/P2pTarget;->isConnected:Z

    if-eqz v2, :cond_f

    .line 83
    new-instance v2, Lcom/android/internal/nfc/NfcException;

    const-string v3, "Already connected"

    invoke-direct {v2, v3}, Lcom/android/internal/nfc/NfcException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/nfc/P2pTarget;->mService:Landroid/nfc/IP2pTarget;

    iget v3, p0, Lcom/android/internal/nfc/P2pTarget;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/IP2pTarget;->connect(I)I

    move-result v1

    .line 89
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 90
    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 91
    new-instance v2, Lcom/android/internal/nfc/NfcException;

    const-string v3, "Failed to connect"

    invoke-direct {v2, v3}, Lcom/android/internal/nfc/NfcException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_28} :catch_28

    .line 99
    .end local v1           #result:I
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "P2pTarget"

    const-string v3, "RemoteException in connect(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_31
    return-void

    .line 98
    .restart local v1       #result:I
    :cond_32
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, Lcom/android/internal/nfc/P2pTarget;->isConnected:Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_35} :catch_28

    goto :goto_31
.end method

.method public disconnect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/nfc/NfcException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/nfc/P2pTarget;->checkState()V

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/nfc/P2pTarget;->mService:Landroid/nfc/IP2pTarget;

    iget v2, p0, Lcom/android/internal/nfc/P2pTarget;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/IP2pTarget;->disconnect(I)Z

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/nfc/P2pTarget;->isConnected:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    .line 118
    :goto_d
    return-void

    .line 115
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "P2pTarget"

    const-string v2, "RemoteException in disconnect(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getGeneralBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/nfc/P2pTarget;->isConnected:Z

    if-eqz v1, :cond_d

    .line 156
    iget-object v1, p0, Lcom/android/internal/nfc/P2pTarget;->mService:Landroid/nfc/IP2pTarget;

    iget v2, p0, Lcom/android/internal/nfc/P2pTarget;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/IP2pTarget;->getGeneralBytes(I)[B

    move-result-object v1

    .line 162
    :goto_c
    return-object v1

    .line 158
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Target not in connected state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 160
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "P2pTarget"

    const-string v2, "RemoteException in getGeneralBytes(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public transceive([B)[B
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/nfc/NfcException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/nfc/P2pTarget;->checkState()V

    .line 135
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/nfc/P2pTarget;->mService:Landroid/nfc/IP2pTarget;

    iget v3, p0, Lcom/android/internal/nfc/P2pTarget;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/IP2pTarget;->transceive(I[B)[B

    move-result-object v1

    .line 136
    .local v1, response:[B
    if-nez v1, :cond_20

    .line 137
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_15

    .line 140
    .end local v1           #response:[B
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "P2pTarget"

    const-string v3, "RemoteException in transceive(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1f
    return-object v2

    .restart local v1       #response:[B
    :cond_20
    move-object v2, v1

    .line 139
    goto :goto_1f
.end method
