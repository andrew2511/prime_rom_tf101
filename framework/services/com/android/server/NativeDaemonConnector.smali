.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "callbacks"
    .parameter "socket"
    .parameter "responseQueueSize"
    .parameter "logTag"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 72
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 73
    if-eqz p4, :cond_11

    .line 74
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 75
    :cond_11
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 77
    return-void
.end method

.method private listenToSocket()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v16, 0x0

    .line 95
    .local v16, socket:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v17, Landroid/net/LocalSocket;

    invoke-direct/range {v17 .. v17}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_12b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_1e5

    .line 96
    .end local v16           #socket:Landroid/net/LocalSocket;
    .local v17, socket:Landroid/net/LocalSocket;
    :try_start_7
    new-instance v5, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 99
    .local v5, address:Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 101
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 102
    .local v13, inputStream:Ljava/io/InputStream;
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 106
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object v6, v0

    .line 107
    .local v6, buffer:[B
    const/16 v18, 0x0

    .line 110
    .local v18, start:I
    :goto_3f
    const/16 v20, 0x1000

    sub-int v20, v20, v18

    move-object v0, v13

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_170
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4c} :catch_115

    move-result v8

    .line 111
    .local v8, count:I
    if-gez v8, :cond_70

    .line 164
    monitor-enter p0

    .line 165
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_1ba

    if-eqz v20, :cond_69

    .line 167
    :try_start_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_1ba
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_1d0

    .line 171
    :goto_61
    const/16 v20, 0x0

    :try_start_63
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 173
    :cond_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_1ba

    .line 176
    if-eqz v17, :cond_6f

    .line 177
    :try_start_6c
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_1bd

    .line 183
    :cond_6f
    :goto_6f
    return-void

    .line 114
    :cond_70
    add-int v8, v8, v18

    .line 115
    const/16 v18, 0x0

    .line 117
    const/4 v12, 0x0

    .local v12, i:I
    :goto_75
    if-ge v12, v8, :cond_174

    .line 118
    :try_start_77
    aget-byte v20, v6, v12

    if-nez v20, :cond_cf

    .line 119
    new-instance v10, Ljava/lang/String;

    sub-int v20, v12, v18

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 122
    .local v10, event:Ljava/lang/String;
    const-string v20, " "

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_90
    .catchall {:try_start_77 .. :try_end_90} :catchall_170
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_90} :catch_115

    move-result-object v19

    .line 124
    .local v19, tokens:[Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_93
    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_170
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_98} :catch_f6
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_98} :catch_115

    move-result v7

    .line 126
    .local v7, code:I
    const/16 v20, 0x258

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_14d

    .line 128
    :try_start_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v7

    move-object v2, v10

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_cd

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Unhandled event (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_a0 .. :try_end_cd} :catchall_170
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_cd} :catch_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_cd} :catch_f6
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_cd} :catch_115

    .line 146
    .end local v7           #code:I
    :cond_cd
    :goto_cd
    add-int/lit8 v18, v12, 0x1

    .line 117
    .end local v10           #event:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    :cond_cf
    add-int/lit8 v12, v12, 0x1

    goto :goto_75

    .line 132
    .restart local v7       #code:I
    .restart local v10       #event:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    :catch_d2
    move-exception v20

    move-object/from16 v11, v20

    .line 133
    .local v11, ex:Ljava/lang/Exception;
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Error handling \'%s\'"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f5
    .catchall {:try_start_d5 .. :try_end_f5} :catchall_170
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_f5} :catch_f6
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_f5} :catch_115

    goto :goto_cd

    .line 143
    .end local v7           #code:I
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_f6
    move-exception v20

    move-object/from16 v14, v20

    .line 144
    .local v14, nfe:Ljava/lang/NumberFormatException;
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Bad msg (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_f9 .. :try_end_114} :catchall_170
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_114} :catch_115

    goto :goto_cd

    .line 160
    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v10           #event:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .end local v18           #start:I
    .end local v19           #tokens:[Ljava/lang/String;
    :catch_115
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v16, v17

    .line 161
    .end local v17           #socket:Landroid/net/LocalSocket;
    .local v11, ex:Ljava/io/IOException;
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :goto_11a
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Communications error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    throw v11
    :try_end_12b
    .catchall {:try_start_11a .. :try_end_12b} :catchall_12b

    .line 164
    .end local v11           #ex:Ljava/io/IOException;
    :catchall_12b
    move-exception v20

    :goto_12c
    monitor-enter p0

    .line 165
    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v21, v0
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_191

    if-eqz v21, :cond_146

    .line 167
    :try_start_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_13e
    .catchall {:try_start_135 .. :try_end_13e} :catchall_191
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_13e} :catch_1a6

    .line 171
    :goto_13e
    const/16 v21, 0x0

    :try_start_140
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 173
    :cond_146
    monitor-exit p0
    :try_end_147
    .catchall {:try_start_140 .. :try_end_147} :catchall_191

    .line 176
    if-eqz v16, :cond_14c

    .line 177
    :try_start_149
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_194

    .line 164
    :cond_14c
    :goto_14c
    throw v20

    .line 138
    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v7       #code:I
    .restart local v8       #count:I
    .restart local v10       #event:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    .restart local v19       #tokens:[Ljava/lang/String;
    :cond_14d
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_159
    .catchall {:try_start_14d .. :try_end_159} :catchall_170
    .catch Ljava/lang/InterruptedException; {:try_start_14d .. :try_end_159} :catch_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_159} :catch_f6
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_159} :catch_115

    goto/16 :goto_cd

    .line 139
    :catch_15b
    move-exception v20

    move-object/from16 v11, v20

    .line 140
    .local v11, ex:Ljava/lang/InterruptedException;
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed to put response onto queue"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16e
    .catchall {:try_start_15e .. :try_end_16e} :catchall_170
    .catch Ljava/lang/NumberFormatException; {:try_start_15e .. :try_end_16e} :catch_f6
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_16e} :catch_115

    goto/16 :goto_cd

    .line 164
    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v7           #code:I
    .end local v8           #count:I
    .end local v10           #event:Ljava/lang/String;
    .end local v11           #ex:Ljava/lang/InterruptedException;
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v18           #start:I
    .end local v19           #tokens:[Ljava/lang/String;
    :catchall_170
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #socket:Landroid/net/LocalSocket;
    .restart local v16       #socket:Landroid/net/LocalSocket;
    goto :goto_12c

    .line 152
    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v8       #count:I
    .restart local v12       #i:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    :cond_174
    move/from16 v0, v18

    move v1, v8

    if-eq v0, v1, :cond_18d

    .line 153
    const/16 v20, 0x1000

    sub-int v15, v20, v18

    .line 154
    .local v15, remaining:I
    const/16 v20, 0x0

    :try_start_17f
    move-object v0, v6

    move/from16 v1, v18

    move-object v2, v6

    move/from16 v3, v20

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_189
    .catchall {:try_start_17f .. :try_end_189} :catchall_170
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_189} :catch_115

    .line 155
    move/from16 v18, v15

    .line 156
    goto/16 :goto_3f

    .line 157
    .end local v15           #remaining:I
    :cond_18d
    const/16 v18, 0x0

    goto/16 :goto_3f

    .line 173
    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v17           #socket:Landroid/net/LocalSocket;
    .end local v18           #start:I
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :catchall_191
    move-exception v20

    :try_start_192
    monitor-exit p0
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v20

    .line 179
    :catch_194
    move-exception v11

    .line 180
    .local v11, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Failed closing socket"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14c

    .line 168
    .end local v11           #ex:Ljava/io/IOException;
    :catch_1a6
    move-exception v21

    move-object/from16 v9, v21

    .line 169
    .local v9, e:Ljava/io/IOException;
    :try_start_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Failed closing output stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b9
    .catchall {:try_start_1a9 .. :try_end_1b9} :catchall_191

    goto :goto_13e

    .line 173
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v8       #count:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    :catchall_1ba
    move-exception v20

    :try_start_1bb
    monitor-exit p0
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1ba

    throw v20

    .line 179
    :catch_1bd
    move-exception v11

    .line 180
    .restart local v11       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed closing socket"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6f

    .line 168
    .end local v11           #ex:Ljava/io/IOException;
    :catch_1d0
    move-exception v20

    move-object/from16 v9, v20

    .line 169
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_1d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed closing output stream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e3
    .catchall {:try_start_1d3 .. :try_end_1e3} :catchall_1ba

    goto/16 :goto_61

    .line 160
    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v17           #socket:Landroid/net/LocalSocket;
    .end local v18           #start:I
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :catch_1e5
    move-exception v20

    move-object/from16 v11, v20

    goto/16 :goto_11a
.end method

.method private sendCommand(Ljava/lang/String;)V
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NativeDaemonConnector;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "command"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_1c

    .line 201
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "No output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :catchall_19
    move-exception v2

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v2

    .line 204
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_26

    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_19

    .line 211
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_19
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_39

    .line 216
    :goto_37
    :try_start_37
    monitor-exit p0

    .line 217
    return-void

    .line 212
    :catch_39
    move-exception v2

    move-object v1, v2

    .line 213
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_19

    goto :goto_37
.end method


# virtual methods
.method public declared-synchronized doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 224
    monitor-enter p0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->sendCommand(Ljava/lang/String;)V

    .line 227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_3f

    .line 228
    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 229
    .local v1, complete:Z
    const/4 v0, -0x1

    .line 231
    .local v0, code:I
    :goto_11
    if-nez v1, :cond_56

    .line 234
    :try_start_13
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_20} :catch_35

    move-result-object v6

    .line 238
    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_22
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_27} :catch_42
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_27} :catch_35

    move-result v0

    .line 244
    const/16 v7, 0xc8

    if-lt v0, v7, :cond_31

    const/16 v7, 0x258

    if-ge v0, v7, :cond_31

    .line 245
    const/4 v1, 0x1

    .line 247
    :cond_31
    :try_start_31
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_11

    .line 248
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tokens:[Ljava/lang/String;
    :catch_35
    move-exception v7

    move-object v2, v7

    .line 249
    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_37
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_11

    .line 224
    .end local v0           #code:I
    .end local v1           #complete:Z
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .end local v5           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_3f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 239
    .restart local v0       #code:I
    .restart local v1       #complete:Z
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tokens:[Ljava/lang/String;
    :catch_42
    move-exception v7

    move-object v4, v7

    .line 240
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_44
    new-instance v7, Lcom/android/server/NativeDaemonConnectorException;

    const-string v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_56} :catch_35

    .line 253
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_56
    const/16 v7, 0x190

    if-lt v0, v7, :cond_74

    const/16 v7, 0x257

    if-gt v0, v7, :cond_74

    .line 259
    :try_start_5e
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, p1, v7}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_3f

    .line 262
    :cond_74
    monitor-exit p0

    return-object v5
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 21
    .parameter "cmd"
    .parameter "expectedResponseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 272
    .local v11, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    new-array v10, v13, [Ljava/lang/String;

    .line 273
    .local v10, rdata:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 275
    .local v4, idx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_c0

    .line 276
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, line:Ljava/lang/String;
    :try_start_1a
    const-string v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, tok:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_26} :catch_ab

    move-result v2

    .line 280
    .local v2, code:I
    move v0, v2

    move/from16 v1, p2

    if-ne v0, v1, :cond_41

    .line 281
    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .local v5, idx:I
    const/4 v13, 0x0

    :try_start_2f
    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v4
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3d} :catch_c9

    .line 275
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto :goto_e

    .line 282
    :cond_41
    const/16 v13, 0xc8

    if-ne v2, v13, :cond_8c

    .line 284
    :try_start_45
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int v7, v13, v14

    .line 285
    .local v7, last:I
    if-eq v3, v7, :cond_c8

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object v13, v0

    const-string v14, "Recv\'d %d lines after end of list {%s}"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sub-int v17, v7, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move v6, v3

    .local v6, j:I
    :goto_6e
    if-gt v6, v7, :cond_c8

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object v13, v0

    const-string v14, "ExtraData <%s>"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 293
    .end local v6           #j:I
    .end local v7           #last:I
    :cond_8c
    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Expected list response %d, but got %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_ab} :catch_ab

    .line 297
    .end local v2           #code:I
    .end local v12           #tok:[Ljava/lang/String;
    :catch_ab
    move-exception v13

    move-object v9, v13

    .line 298
    .local v9, nfe:Ljava/lang/NumberFormatException;
    :goto_ad
    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Error reading code \'%s\'"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 302
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    :cond_c0
    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Got an empty response"

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 291
    .restart local v2       #code:I
    .restart local v7       #last:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v12       #tok:[Ljava/lang/String;
    :cond_c8
    return-object v10

    .line 297
    .end local v4           #idx:I
    .end local v7           #last:I
    .restart local v5       #idx:I
    :catch_c9
    move-exception v13

    move-object v9, v13

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto :goto_ad
.end method

.method public run()V
    .registers 4

    .prologue
    .line 83
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_0

    .line 84
    :catch_4
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v2, "Error in NativeDaemonConnector"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
