.class public Lcom/asus/dmlib/util/FileMessageLogger;
.super Lcom/asus/dmlib/util/MessageLogger;
.source "FileMessageLogger.java"


# static fields
.field private static BASE_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FileMessageLogger"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFileOut:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "/var/lib/tomcat6/logs/dm_transaction_logs"

    .line 28
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/dmlib/util/FileMessageLogger;->BASE_DIR:Ljava/lang/String;

    .line 29
    return-void

    .line 28
    :cond_0
    const-string v2, "/"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "imei"
    .parameter "pSessionID"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/asus/dmlib/util/MessageLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/asus/dmlib/util/FileMessageLogger;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/asus/dmlib/util/FileMessageLogger;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mDTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public saveMessage(Ljava/lang/String;)V
    .locals 8
    .parameter "pSyncML"

    .prologue
    .line 46
    :try_start_0
    const-string v5, "FileMessageLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM transaction log location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, target:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 64
    :cond_0
    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    .line 65
    new-instance v3, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;

    invoke-direct {v3}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 67
    .local v3, parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "utf-8"

    invoke-virtual {v3, v5, v6}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->format(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    invoke-virtual {v5, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    const-string v6, "\n--------------------------------------------------------------------------------\n\n"

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/asus/dmlib/syncml/exception/MsgParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 79
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 85
    .end local v3           #parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    .end local v4           #target:Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 70
    .restart local v3       #parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    .restart local v4       #target:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 71
    .local v1, ex:Lcom/asus/dmlib/syncml/exception/MsgParseException;
    :try_start_3
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 73
    .end local v1           #ex:Lcom/asus/dmlib/syncml/exception/MsgParseException;
    .end local v3           #parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    .end local v4           #target:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 74
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 81
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 82
    .local v1, ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v3       #parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    .restart local v4       #target:Ljava/io/File;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 82
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 75
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
    .end local v4           #target:Ljava/io/File;
    :catch_4
    move-exception v5

    move-object v0, v5

    .line 76
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    :try_start_7
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 81
    :catch_5
    move-exception v5

    move-object v1, v5

    .line 82
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 79
    :try_start_8
    iget-object v6, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    if-eqz v6, :cond_2

    .line 80
    iget-object v6, p0, Lcom/asus/dmlib/util/FileMessageLogger;->mFileOut:Ljava/io/FileWriter;

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 83
    :cond_2
    :goto_2
    throw v5

    .line 81
    :catch_6
    move-exception v6

    move-object v1, v6

    .line 82
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
