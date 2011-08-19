.class public Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;
.super Landroid/os/AsyncTask;
.source "PCSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PCSyncConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private isTimeout:Z

.field private mCancelNetwork:Z

.field private final mLauncherActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 182
    iput-object p1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    .line 183
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-boolean v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mCancelNetwork:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    .line 179
    iput-boolean v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mSuccess:Z

    .line 180
    iput-boolean v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->isTimeout:Z

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->isTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->cancelTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->finishActivity()V

    return-void
.end method

.method private cancelTask()V
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mCancelNetwork:Z

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->resetSocket()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->purgeCanceledTask()V

    .line 263
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 265
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->cancel(Z)Z

    .line 266
    return-void
.end method

.method private connect()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 289
    const/16 v9, 0x22ba

    .line 290
    .local v9, port:I
    const/4 v5, 0x1

    .line 291
    .local v5, maxClient:I
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mCancelNetwork:Z

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, clientSocket:Ljava/net/Socket;
    const/4 v3, 0x0

    .line 296
    .local v3, in:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 299
    .local v7, out:Ljava/io/PrintWriter;
    :try_start_0
    new-instance v10, Ljava/net/ServerSocket;

    const/16 v11, 0x22ba

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    .line 300
    iget-object v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v10, :cond_4

    new-instance v10, Ljava/io/IOException;

    const-string v11, "can\'t establish server socket"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :catchall_0
    move-exception v10

    :goto_0
    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 345
    const/4 v3, 0x0

    .line 347
    :cond_0
    if-eqz v7, :cond_1

    .line 348
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 349
    const/4 v7, 0x0

    .line 351
    :cond_1
    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 353
    const/4 v0, 0x0

    .line 355
    :cond_2
    iget-object v11, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v11, :cond_3

    .line 356
    iget-object v11, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v11}, Ljava/net/ServerSocket;->close()V

    .line 357
    iput-object v13, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    :cond_3
    throw v10

    .line 302
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v10}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 303
    if-nez v0, :cond_5

    new-instance v10, Ljava/io/IOException;

    const-string v11, "can\'t get client socket"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 305
    :cond_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 307
    .end local v7           #out:Ljava/io/PrintWriter;
    .local v8, out:Ljava/io/PrintWriter;
    if-eqz v4, :cond_6

    if-nez v8, :cond_7

    :cond_6
    :try_start_3
    new-instance v10, Ljava/io/IOException;

    const-string v11, "in/out error"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 343
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 310
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v8       #out:Ljava/io/PrintWriter;
    :cond_7
    const-string v1, "AT+CGSN"

    .line 312
    .local v1, cmd:Ljava/lang/String;
    :cond_8
    :goto_1
    iget-boolean v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mCancelNetwork:Z

    if-eqz v10, :cond_9

    .line 313
    new-instance v10, Ljava/io/IOException;

    const-string v11, "network canceled"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 315
    :cond_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, networkStr:Ljava/lang/String;
    if-nez v6, :cond_a

    .line 318
    new-instance v10, Ljava/io/IOException;

    const-string v11, "read null string"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 319
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 321
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 322
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, deviceId:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 328
    const-string v10, "PCSyncLauncher"

    const-string v11, "Fail to get device id"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v2, ""

    .line 332
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v8}, Ljava/io/PrintWriter;->checkError()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 334
    new-instance v10, Ljava/io/IOException;

    const-string v11, "failed to write socket"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 338
    .end local v2           #deviceId:Ljava/lang/String;
    :cond_c
    const-string v10, "PCSyncLauncher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v10, "PCSyncLauncher"

    const-string v11, "Please input string which starts with \"AT+CGSN\""

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 343
    .restart local v2       #deviceId:Ljava/lang/String;
    :cond_d
    if-eqz v4, :cond_11

    .line 344
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 345
    const/4 v3, 0x0

    .line 347
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v8, :cond_10

    .line 348
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 349
    const/4 v7, 0x0

    .line 351
    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    :goto_3
    if-eqz v0, :cond_e

    .line 352
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 353
    const/4 v0, 0x0

    .line 355
    :cond_e
    iget-object v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v10, :cond_f

    .line 356
    iget-object v10, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v10}, Ljava/net/ServerSocket;->close()V

    .line 357
    iput-object v13, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    .line 360
    :cond_f
    return-void

    .line 343
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #deviceId:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v6           #networkStr:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v2       #deviceId:Ljava/lang/String;
    .restart local v6       #networkStr:Ljava/lang/String;
    .restart local v8       #out:Ljava/io/PrintWriter;
    :cond_10
    move-object v7, v8

    .end local v8           #out:Ljava/io/PrintWriter;
    .restart local v7       #out:Ljava/io/PrintWriter;
    goto :goto_3

    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #out:Ljava/io/PrintWriter;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v8       #out:Ljava/io/PrintWriter;
    :cond_11
    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->cancelTask()V

    .line 270
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->finish()V

    .line 273
    :cond_0
    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hardware_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private purgeCanceledTask()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 243
    :cond_0
    return-void
.end method

.method private resetSocket()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mCancelNetwork:Z

    .line 247
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startSyncApp()V
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.pcsynctool"

    const-string v2, "com.asus.pcsynctool.activity.PCSyncActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->startActivity(Landroid/content/Intent;)V

    .line 286
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 212
    iput-boolean v2, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mSuccess:Z

    .line 214
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 206
    .local v0, ioe:Ljava/io/IOException;
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 208
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->resetSocket()V

    .line 222
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->isTimeout:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    const-class v3, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->finishActivity()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->startSyncApp()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->finish()V

    .line 237
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->mLauncherActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-virtual {v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    .line 194
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;

    iget-object v2, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {v1, v2, p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;-><init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 196
    :cond_0
    return-void
.end method
