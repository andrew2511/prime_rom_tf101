.class Lcom/infraware/filemanager/FmSettingActivity$6;
.super Ljava/lang/Object;
.source "FmSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmSettingActivity;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oFileOutputStream:Ljava/io/FileOutputStream;

.field private oInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/infraware/filemanager/FmSettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 360
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    const-string v7, "EULA.txt"

    invoke-virtual {v6, v7}, Lcom/infraware/filemanager/FmSettingActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 363
    .local v4, oFile:Ljava/io/File;
    const/16 v1, 0x1000

    .line 364
    .local v1, buffersize:I
    new-array v0, v1, [B

    .line 365
    .local v0, buffer:[B
    const/4 v3, -0x1

    .line 368
    .local v3, nCount:I
    :try_start_0
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v6}, Lcom/infraware/filemanager/FmSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    .line 369
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v6}, Lcom/infraware/filemanager/FmSettingActivity;->access$2(Lcom/infraware/filemanager/FmSettingActivity;)Lcom/infraware/filemanager/FmSettingActivity;

    move-result-object v6

    const-string v7, "EULA.txt"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/infraware/filemanager/FmSettingActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oFileOutputStream:Ljava/io/FileOutputStream;

    .line 370
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 371
    :goto_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 384
    :try_start_1
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 385
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 392
    :goto_1
    new-instance v5, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v6}, Lcom/infraware/filemanager/FmSettingActivity;->access$2(Lcom/infraware/filemanager/FmSettingActivity;)Lcom/infraware/filemanager/FmSettingActivity;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;-><init>(Landroid/app/Activity;Z)V

    .line 393
    .local v5, oFmFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v6}, Lcom/infraware/filemanager/FmSettingActivity;->access$2(Lcom/infraware/filemanager/FmSettingActivity;)Lcom/infraware/filemanager/FmSettingActivity;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I

    .line 396
    return-void

    .line 373
    .end local v5           #oFmFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oFileOutputStream:Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 374
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    goto :goto_0

    .line 377
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 379
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FmSettingActivity"

    const-string v7, "Failed to Write EULA"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    :try_start_4
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 385
    iget-object v6, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 387
    :catch_1
    move-exception v6

    goto :goto_1

    .line 382
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 384
    :try_start_5
    iget-object v7, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 385
    iget-object v7, p0, Lcom/infraware/filemanager/FmSettingActivity$6;->oFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 390
    :goto_2
    throw v6

    .line 387
    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_2
.end method
