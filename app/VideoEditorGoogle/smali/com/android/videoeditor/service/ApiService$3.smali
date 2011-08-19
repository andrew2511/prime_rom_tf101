.class Lcom/android/videoeditor/service/ApiService$3;
.super Ljava/lang/Thread;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$data:Landroid/net/Uri;

.field final synthetic val$projectPath:Ljava/lang/String;

.field final synthetic val$requestIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$3;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$3;->val$projectPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$3;->val$requestIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 2473
    const/4 v5, 0x0

    .line 2474
    .local v5, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2475
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService$3;->val$projectPath:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "download_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    .local v1, file:Ljava/io/File;
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v10

    .line 2478
    .local v10, statusIntent:Landroid/content/Intent;
    const-string v11, "op"

    const/16 v12, 0x72

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2479
    const-string v11, "project"

    iget-object v12, p0, Lcom/android/videoeditor/service/ApiService$3;->val$requestIntent:Landroid/content/Intent;

    const-string v13, "project"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    const-string v11, "req_intent"

    iget-object v12, p0, Lcom/android/videoeditor/service/ApiService$3;->val$requestIntent:Landroid/content/Intent;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2483
    :try_start_0
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService$3;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 2485
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 2486
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v11, 0x800

    :try_start_1
    new-array v8, v11, [B

    .line 2488
    .local v8, readBuffer:[B
    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, readBytes:I
    if-ltz v9, :cond_3

    .line 2489
    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2491
    .end local v8           #readBuffer:[B
    .end local v9           #readBytes:I
    :catch_0
    move-exception v11

    move-object v0, v11

    move-object v3, v4

    .line 2492
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v0, ex:Ljava/lang/Exception;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot open input stream for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const-string v11, "ex"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2494
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2496
    if-eqz v5, :cond_0

    .line 2498
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2504
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 2506
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2507
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2514
    :cond_1
    :goto_3
    const-string v11, "ex"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2515
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2517
    .local v2, filename:Ljava/lang/String;
    :try_start_5
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService$3;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 2518
    .local v6, mimeType:Ljava/lang/String;
    const-string v11, "image/jpeg"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2519
    new-instance v7, Ljava/io/File;

    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService$3;->val$projectPath:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "download_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    .local v7, outputFile:Ljava/io/File;
    invoke-static {v2, v7}, Lcom/android/videoeditor/util/ImageUtils;->transformJpeg(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2523
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2524
    const-string v11, "filename"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 2539
    .end local v2           #filename:Ljava/lang/String;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #outputFile:Ljava/io/File;
    :cond_2
    :goto_4
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService$3;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v11}, Lcom/android/videoeditor/service/ApiService;->access$600(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$ServiceThread;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    .line 2540
    return-void

    .line 2496
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #readBuffer:[B
    .restart local v9       #readBytes:I
    :cond_3
    if-eqz v5, :cond_4

    .line 2498
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2504
    :cond_4
    :goto_5
    if-eqz v4, :cond_9

    .line 2506
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 2507
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v4

    .line 2510
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2499
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 2500
    .local v0, ex:Ljava/io/IOException;
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot close input stream for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2508
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v11

    move-object v0, v11

    .line 2509
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot close output stream for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 2510
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 2499
    .end local v8           #readBuffer:[B
    .end local v9           #readBytes:I
    .local v0, ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2500
    .local v0, ex:Ljava/io/IOException;
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot close input stream for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2508
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v11

    move-object v0, v11

    .line 2509
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot close output stream for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2496
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v5, :cond_5

    .line 2498
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2504
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 2506
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2507
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2510
    :cond_6
    :goto_8
    throw v11

    .line 2499
    :catch_5
    move-exception v0

    .line 2500
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v12, "VEApiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close input stream for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2508
    .end local v0           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v12

    move-object v0, v12

    .line 2509
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v12, "VEApiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close output stream for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/videoeditor/service/ApiService$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2527
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #outputFile:Ljava/io/File;
    :cond_7
    :try_start_a
    const-string v11, "filename"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_4

    .line 2532
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #outputFile:Ljava/io/File;
    :catch_7
    move-exception v11

    move-object v0, v11

    .line 2534
    .local v0, ex:Ljava/lang/Exception;
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not transform JPEG: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2535
    const-string v11, "filename"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 2530
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_8
    :try_start_b
    const-string v11, "filename"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_4

    .line 2496
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v6           #mimeType:Ljava/lang/String;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 2491
    :catch_8
    move-exception v11

    move-object v0, v11

    goto/16 :goto_1

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #readBuffer:[B
    .restart local v9       #readBytes:I
    :cond_9
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method
