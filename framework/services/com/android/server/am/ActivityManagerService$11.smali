.class Lcom/android/server/am/ActivityManagerService$11;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .registers 9
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7226
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$11;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$11;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$11;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$11;->val$dropboxTag:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 7229
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$report:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 7230
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$11;->val$report:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7232
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$logFile:Ljava/io/File;

    if-eqz v8, :cond_1f

    .line 7234
    :try_start_10
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$11;->val$logFile:Ljava/io/File;

    const/high16 v10, 0x2

    const-string v11, "\n\n[[TRUNCATED]]"

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_f0

    .line 7239
    :cond_1f
    :goto_1f
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v8, :cond_32

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v8, v8, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 7240
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$11;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7243
    :cond_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logcat_for_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$11;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7244
    .local v7, setting:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v7, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 7245
    .local v4, lines:I
    if-lez v4, :cond_e2

    .line 7246
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7249
    const/4 v2, 0x0

    .line 7251
    .local v2, input:Ljava/io/InputStreamReader;
    :try_start_5d
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/logcat"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-v"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "events"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "system"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "main"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "-t"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_aa
    .catchall {:try_start_5d .. :try_end_aa} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_aa} :catch_122

    move-result-object v5

    .line 7255
    .local v5, logcat:Ljava/lang/Process;
    :try_start_ab
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b2} :catch_127

    .line 7256
    :goto_b2
    :try_start_b2
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_125

    .line 7257
    :goto_b9
    :try_start_b9
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_122

    .line 7260
    .end local v2           #input:Ljava/io/InputStreamReader;
    .local v3, input:Ljava/io/InputStreamReader;
    const/16 v8, 0x2000

    :try_start_c4
    new-array v0, v8, [C

    .line 7261
    .local v0, buf:[C
    :goto_c6
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, num:I
    if-lez v6, :cond_119

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_11f
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d2} :catch_d3

    goto :goto_c6

    .line 7262
    .end local v0           #buf:[C
    .end local v6           #num:I
    :catch_d3
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .line 7263
    .end local v3           #input:Ljava/io/InputStreamReader;
    .end local v5           #logcat:Ljava/lang/Process;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    :goto_d6
    :try_start_d6
    const-string v8, "ActivityManager"

    const-string v9, "Error running logcat"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_10e

    .line 7265
    if-eqz v2, :cond_e2

    :try_start_df
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_117

    .line 7269
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #input:Ljava/io/InputStreamReader;
    :cond_e2
    :goto_e2
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$11;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$11;->val$dropboxTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$11;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 7270
    return-void

    .line 7235
    .end local v4           #lines:I
    .end local v7           #setting:Ljava/lang/String;
    :catch_f0
    move-exception v8

    move-object v1, v8

    .line 7236
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$11;->val$logFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 7265
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    .restart local v4       #lines:I
    .restart local v7       #setting:Ljava/lang/String;
    :catchall_10e
    move-exception v8

    :goto_10f
    if-eqz v2, :cond_114

    :try_start_111
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    :cond_114
    :goto_114
    throw v8

    :catch_115
    move-exception v9

    goto :goto_114

    .end local v2           #input:Ljava/io/InputStreamReader;
    :catch_117
    move-exception v8

    goto :goto_e2

    .restart local v0       #buf:[C
    .restart local v3       #input:Ljava/io/InputStreamReader;
    .restart local v5       #logcat:Ljava/lang/Process;
    .restart local v6       #num:I
    :cond_119
    if-eqz v3, :cond_e2

    :try_start_11b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_117

    goto :goto_e2

    .end local v0           #buf:[C
    .end local v6           #num:I
    :catchall_11f
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStreamReader;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    goto :goto_10f

    .line 7262
    .end local v5           #logcat:Ljava/lang/Process;
    :catch_122
    move-exception v8

    move-object v1, v8

    goto :goto_d6

    .line 7256
    .restart local v5       #logcat:Ljava/lang/Process;
    :catch_125
    move-exception v8

    goto :goto_b9

    .line 7255
    :catch_127
    move-exception v8

    goto :goto_b2
.end method
