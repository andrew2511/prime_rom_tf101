.class Lcom/asus/reader/ProgressActivity$1;
.super Ljava/lang/Object;
.source "ProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ProgressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ProgressActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/asus/reader/ProgressActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    iput-object p2, p0, Lcom/asus/reader/ProgressActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 51
    const/4 v7, 0x0

    .line 52
    .local v7, fileExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->val$intent:Landroid/content/Intent;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 54
    .local v2, data:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    const-string v12, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->val$intent:Landroid/content/Intent;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, contentType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->finish()V

    .line 120
    .end local v1           #contentType:Ljava/lang/String;
    :goto_0
    return-void

    .line 60
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v2, v1, v12}, Lcom/asus/reader/util/Downloader;->saveInputStream(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .end local v1           #contentType:Ljava/lang/String;
    .local v10, path:Ljava/lang/String;
    :goto_1
    if-nez v10, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->finish()V

    goto :goto_0

    .line 62
    .end local v10           #path:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->val$intent:Landroid/content/Intent;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #path:Ljava/lang/String;
    goto :goto_1

    .line 69
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->val$intent:Landroid/content/Intent;

    move-object v12, v0

    const-string v13, "skipcheckfile"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 71
    .local v11, skipcheck:Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 73
    if-nez v11, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_3
    const/4 v7, 0x1

    .line 80
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 86
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 87
    .local v9, loaded_successfully:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    const/16 v12, 0xf

    if-ge v8, v12, :cond_5

    .line 89
    const-wide/16 v12, 0x3e8

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-static {v12, v10}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 95
    const/4 v9, 0x1

    .line 111
    :cond_5
    if-nez v9, :cond_6

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/asus/reader/book/DocErrorHandler;->getDocErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, errorString:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/ProgressActivity;->access$000(Lcom/asus/reader/ProgressActivity;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/ProgressActivity;->access$000(Lcom/asus/reader/ProgressActivity;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    .end local v5           #errorString:Ljava/lang/String;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/ProgressActivity;->finish()V

    goto/16 :goto_0

    .line 81
    .end local v8           #i:I
    .end local v9           #loaded_successfully:Z
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v8       #i:I
    .restart local v9       #loaded_successfully:Z
    :catch_1
    move-exception v4

    .line 91
    .local v4, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v4           #e1:Ljava/lang/InterruptedException;
    :cond_7
    if-nez v8, :cond_8

    if-eqz v7, :cond_8

    .line 100
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/asus/reader/book/ReaderDatabase;->insertUsbBook(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 101
    const-string v12, "ProgressActivity"

    const-string v13, "Start to insert file in usb disk"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 104
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Lcom/asus/reader/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 116
    .restart local v5       #errorString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ProgressActivity$1;->this$0:Lcom/asus/reader/ProgressActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/ProgressActivity;->access$000(Lcom/asus/reader/ProgressActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-static {}, Lcom/asus/reader/ProgressActivity;->access$100()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method
