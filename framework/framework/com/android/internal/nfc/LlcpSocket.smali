.class public Lcom/android/internal/nfc/LlcpSocket;
.super Ljava/lang/Object;
.source "LlcpSocket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LlcpSocket"


# instance fields
.field protected mHandle:I

.field protected mService:Landroid/nfc/ILlcpSocket;


# direct methods
.method public constructor <init>(Landroid/nfc/ILlcpSocket;I)V
    .registers 3
    .parameter "service"
    .parameter "handle"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    .line 85
    iput p2, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    .line 86
    return-void
.end method

.method static convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;
    .registers 2
    .parameter "errorCode"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/nfc/LlcpSocket;->convertErrorToLlcpException(ILjava/lang/String;)Lcom/android/internal/nfc/LlcpException;

    move-result-object v0

    return-object v0
.end method

.method static convertErrorToLlcpException(ILjava/lang/String;)Lcom/android/internal/nfc/LlcpException;
    .registers 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 51
    if-nez p1, :cond_24

    .line 52
    const-string p1, ""

    .line 57
    :goto_4
    packed-switch p0, :pswitch_data_8a

    .line 68
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    :goto_23
    return-object v0

    .line 54
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 59
    :pswitch_3e
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during the creation of an Llcp socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 62
    :pswitch_57
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough ressources are available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 65
    :pswitch_70
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not connected to an Llcp Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 57
    nop

    :pswitch_data_8a
    .packed-switch -0xb
        :pswitch_70
        :pswitch_3e
        :pswitch_57
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpSocket;->close(I)I

    move-result v1

    .line 153
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 154
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 156
    .end local v1           #result:I
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in close(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1d
    return-void
.end method

.method public connect(I)V
    .registers 6
    .parameter "sap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpSocket;->connect(II)I

    move-result v1

    .line 103
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 104
    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 105
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 110
    .end local v1           #result:I
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in accept(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_20
    return-void

    .line 107
    .restart local v1       #result:I
    :cond_21
    :try_start_21
    invoke-static {v1}, Lcom/android/internal/nfc/LlcpSocket;->convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;

    move-result-object v2

    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_17
.end method

.method public connect(Ljava/lang/String;)V
    .registers 6
    .parameter "sn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpSocket;->connectByName(ILjava/lang/String;)I

    move-result v1

    .line 130
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 131
    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 132
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 137
    .end local v1           #result:I
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in accept(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_20
    return-void

    .line 134
    .restart local v1       #result:I
    :cond_21
    :try_start_21
    invoke-static {v1}, Lcom/android/internal/nfc/LlcpSocket;->convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;

    move-result-object v2

    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_17
.end method

.method public getLocalSap()I
    .registers 4

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpSocket;->getLocalSap(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 212
    :goto_8
    return v1

    .line 210
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpSocket"

    const-string v2, "RemoteException in getLocalSap(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLocalSocketMiu()I
    .registers 4

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpSocket;->getLocalSocketMiu(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 226
    :goto_8
    return v1

    .line 224
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpSocket"

    const-string v2, "RemoteException in getLocalSocketMiu(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLocalSocketRw()I
    .registers 4

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpSocket;->getLocalSocketRw(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 240
    :goto_8
    return v1

    .line 238
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpSocket"

    const-string v2, "RemoteException in getLocalSocketRw(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRemoteSocketMiu()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpSocket;->getRemoteSocketMiu(I)I

    move-result v1

    .line 256
    .local v1, result:I
    const/16 v2, -0xb

    if-eq v1, v2, :cond_e

    move v2, v1

    .line 263
    .end local v1           #result:I
    :goto_d
    return v2

    .line 259
    .restart local v1       #result:I
    :cond_e
    invoke-static {v1}, Lcom/android/internal/nfc/LlcpSocket;->convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;

    move-result-object v2

    throw v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 261
    .end local v1           #result:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in getRemoteSocketMiu(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public getRemoteSocketRw()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpSocket;->getRemoteSocketRw(I)I

    move-result v1

    .line 279
    .local v1, result:I
    const/16 v2, -0xb

    if-eq v1, v2, :cond_e

    move v2, v1

    .line 286
    .end local v1           #result:I
    :goto_d
    return v2

    .line 282
    .restart local v1       #result:I
    :cond_e
    invoke-static {v1}, Lcom/android/internal/nfc/LlcpSocket;->convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;

    move-result-object v2

    throw v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 284
    .end local v1           #result:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in getRemoteSocketRw(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public receive([B)I
    .registers 6
    .parameter "receiveBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, receivedLength:I
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpSocket;->receive(I[B)I

    move-result v1

    .line 192
    if-nez v1, :cond_1a

    .line 193
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_11

    .line 195
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in receive(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a
    return v1
.end method

.method public send([B)V
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpSocket;->mService:Landroid/nfc/ILlcpSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpSocket;->send(I[B)I

    move-result v1

    .line 171
    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 172
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 174
    .end local v1           #result:I
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpSocket"

    const-string v3, "RemoteException in send(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1d
    return-void
.end method
