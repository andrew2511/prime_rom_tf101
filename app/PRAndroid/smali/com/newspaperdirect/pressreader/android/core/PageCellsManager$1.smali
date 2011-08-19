.class Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;
.super Ljava/lang/Thread;
.source "PageCellsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->putBitmapsIntoCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 147
    const/16 v5, 0x13

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .local v4, zip:Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 156
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 157
    const/4 v3, 0x0

    .line 164
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    if-eqz v3, :cond_0

    .line 165
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 166
    :goto_1
    const/4 v3, 0x0

    .line 169
    .end local v1           #i:I
    :cond_0
    :goto_2
    return-void

    .line 152
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #i:I
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$10(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v5

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    invoke-static {v5, v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Ljava/util/zip/ZipFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 159
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 160
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v5, "PageCellsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    if-eqz v3, :cond_0

    .line 165
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 166
    :goto_5
    const/4 v3, 0x0

    goto :goto_2

    .line 163
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 164
    :goto_6
    if-eqz v3, :cond_3

    .line 165
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 166
    :goto_7
    const/4 v3, 0x0

    .line 168
    :cond_3
    throw v5

    .line 165
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_7

    .restart local v1       #i:I
    :catch_3
    move-exception v5

    goto :goto_1

    .line 163
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 159
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method
