.class Landroid/webkit/SslErrorHandlerImpl;
.super Landroid/webkit/SslErrorHandler;
.source "SslErrorHandlerImpl.java"


# static fields
.field private static final HANDLE_RESPONSE:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final mLoadListener:Landroid/webkit/LoadListener;

.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginHandler:Landroid/webkit/SslErrorHandler;

.field private mSslPrefTable:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    .line 83
    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 84
    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "origin"
    .parameter "listener"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 92
    iput-object p2, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    .line 93
    return-void
.end method

.method private declared-synchronized processNextLoader()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 185
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/LoadListener;

    .line 186
    .local v1, loader:Landroid/webkit/LoadListener;
    if-eqz v1, :cond_3b

    .line 188
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 191
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_3d

    move v3, v4

    .line 216
    :goto_18
    monitor-exit p0

    return v3

    .line 195
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v0

    .line 204
    .local v0, error:Landroid/net/http/SslError;
    invoke-virtual {p0, v1, v0}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 205
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move v3, v4

    .line 206
    goto :goto_18

    .line 211
    :cond_2b
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v2

    .line 212
    .local v2, proxy:Landroid/webkit/CallbackProxy;
    new-instance v3, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v3, p0, v1}, Landroid/webkit/SslErrorHandlerImpl;-><init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3d

    .line 216
    .end local v0           #error:Landroid/net/http/SslError;
    .end local v2           #proxy:Landroid/webkit/CallbackProxy;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_18

    .line 185
    .end local v1           #loader:Landroid/webkit/LoadListener;
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method declared-synchronized checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .registers 7
    .parameter "loader"
    .parameter "error"

    .prologue
    const/4 v3, 0x1

    .line 155
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 162
    .local v1, primary:I
    iget-object v2, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 163
    iget-object v2, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gt v1, v2, :cond_21

    .line 164
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_23

    move v2, v3

    .line 168
    :goto_1f
    monitor-exit p0

    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_1f

    .line 155
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #primary:I
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized clear()V
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fastProcessQueuedSslErrors()V
    .registers 2

    .prologue
    .line 176
    :cond_0
    invoke-direct {p0}, Landroid/webkit/SslErrorHandlerImpl;->processNextLoader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 73
    :goto_6
    return-void

    .line 64
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/LoadListener;

    .line 65
    .local v0, loader:Landroid/webkit/LoadListener;
    monitor-enter p0

    .line 66
    :try_start_c
    invoke-virtual {v0}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_25

    move v2, v3

    :goto_15
    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V

    .line 68
    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V

    .line 70
    monitor-exit p0

    goto :goto_6

    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1

    .line 66
    :cond_25
    const/4 v2, 0x0

    goto :goto_15

    .line 62
    nop

    :pswitch_data_28
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 142
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 144
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 147
    :cond_17
    monitor-exit p0

    return-void

    .line 141
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    .registers 8
    .parameter "loader"
    .parameter "error"
    .parameter "proceed"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 255
    if-eqz p3, :cond_26

    .line 257
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    .line 258
    .local v2, primary:I
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, hasKey:Z
    if-eqz v0, :cond_21

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_26

    .line 266
    :cond_21
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    .end local v0           #hasKey:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #primary:I
    :cond_26
    invoke-virtual {p1, p3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 271
    :cond_29
    monitor-exit p0

    return-void

    .line 254
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public proceed()V
    .registers 7

    .prologue
    .line 223
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method declared-synchronized restoreState(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "inState"

    .prologue
    .line 114
    monitor-enter p0

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    move v0, v1

    .line 115
    .local v0, success:Z
    :goto_5
    if-eqz v0, :cond_19

    .line 116
    :try_start_7
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-eqz v0, :cond_19

    .line 118
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1e

    .line 122
    :cond_19
    monitor-exit p0

    return v0

    .line 114
    .end local v0           #success:Z
    :cond_1b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_5

    .restart local v0       #success:Z
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized saveState(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "outState"

    .prologue
    .line 100
    monitor-enter p0

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    move v0, v1

    .line 101
    .local v0, success:Z
    :goto_5
    if-eqz v0, :cond_f

    .line 103
    :try_start_7
    const-string/jumbo v1, "ssl-error-handler"

    iget-object v2, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 106
    :cond_f
    monitor-exit p0

    return v0

    .line 100
    .end local v0           #success:Z
    :cond_11
    const/4 v1, 0x0

    move v0, v1

    goto :goto_5

    .restart local v0       #success:Z
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
