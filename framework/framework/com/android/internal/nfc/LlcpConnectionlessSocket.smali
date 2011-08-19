.class public Lcom/android/internal/nfc/LlcpConnectionlessSocket;
.super Ljava/lang/Object;
.source "LlcpConnectionlessSocket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LlcpConnectionlessSocket"


# instance fields
.field protected mHandle:I

.field protected mService:Landroid/nfc/ILlcpConnectionlessSocket;


# direct methods
.method constructor <init>(Landroid/nfc/ILlcpConnectionlessSocket;I)V
    .registers 3
    .parameter "service"
    .parameter "handle"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    .line 52
    iput p2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpConnectionlessSocket;->close(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 105
    :goto_7
    return-void

    .line 102
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpConnectionlessSocket"

    const-string v2, "RemoteException in close(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getSap()I
    .registers 5

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 116
    .local v1, sap:I
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpConnectionlessSocket;->getSap(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    .line 122
    :goto_9
    return v1

    .line 118
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public receiveFrom()Landroid/nfc/LlcpPacket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpConnectionlessSocket;->receiveFrom(I)Landroid/nfc/LlcpPacket;

    move-result-object v1

    .line 84
    .local v1, packet:Landroid/nfc/LlcpPacket;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 93
    .end local v1           #packet:Landroid/nfc/LlcpPacket;
    :goto_b
    return-object v2

    .line 88
    .restart local v1       #packet:Landroid/nfc/LlcpPacket;
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_12

    .line 90
    .end local v1           #packet:Landroid/nfc/LlcpPacket;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpConnectionlessSocket"

    const-string v3, "RemoteException in receiveFrom(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public sendTo(Landroid/nfc/LlcpPacket;)V
    .registers 6
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpConnectionlessSocket;->sendTo(ILandroid/nfc/LlcpPacket;)I

    move-result v1

    .line 66
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 67
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 69
    .end local v1           #result:I
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpConnectionlessSocket"

    const-string v3, "RemoteException in sendTo(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1d
    return-void
.end method
