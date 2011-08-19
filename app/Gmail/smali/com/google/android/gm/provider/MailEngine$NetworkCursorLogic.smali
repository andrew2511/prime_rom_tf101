.class abstract Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NetworkCursorLogic"
.end annotation


# instance fields
.field private volatile mError:Lcom/google/android/gm/provider/Gmail$CursorError;

.field private volatile mErrorOccurred:Z

.field protected volatile mFetcherThread:Ljava/lang/Thread;

.field protected mFetcherThreadLock:Ljava/lang/Object;

.field private mSelectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5068
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5064
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    .line 5162
    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    .line 5069
    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 5070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5071
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 5072
    return-void
.end method


# virtual methods
.method protected final clearErrorState()V
    .locals 1

    .prologue
    .line 5193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5194
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 5195
    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 5121
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 5122
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 5130
    .local v1, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5131
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5134
    const-string v2, "error"

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$CursorError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5136
    return-object v0

    .line 5123
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    if-eqz v2, :cond_1

    .line 5124
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0

    .line 5125
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->isCursorComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5126
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0

    .line 5128
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_2
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    goto :goto_0
.end method

.method protected final getIsInErrorState()Z
    .locals 1

    .prologue
    .line 5189
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    return v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 5198
    const/4 v0, 0x0

    return v0
.end method

.method public isCursorComplete()Z
    .locals 1

    .prologue
    .line 5116
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "extras"

    .prologue
    .line 5140
    monitor-enter p0

    :try_start_0
    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5141
    .local v0, command:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5142
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "retry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5143
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->getIsInErrorState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5144
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, but not in error state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    :goto_0
    const-string v2, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5159
    :goto_1
    monitor-exit p0

    return-object v1

    .line 5145
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 5146
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, but already fetching"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5140
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #response:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5148
    .restart local v0       #command:Ljava/lang/String;
    .restart local v1       #response:Landroid/os/Bundle;
    :cond_1
    :try_start_2
    const-string v2, "Gmail"

    const-string v3, "Mail cursor told to retry, retrying"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->clearErrorState()V

    .line 5150
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->startThread()Z

    .line 5151
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;Z)V

    goto :goto_0

    .line 5156
    :cond_2
    const-string v2, "commandResponse"

    const-string v3, "unknownCommand"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5081
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$2600(Lcom/google/android/gm/provider/MailEngine;)V

    .line 5082
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$2700(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5083
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailEngine;->access$2802(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 5084
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v5}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->access$2900(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;)Z

    .line 5085
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5086
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->runInternal()V

    .line 5087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5088
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 5106
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5107
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 5108
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5109
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v8}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;Z)V

    .line 5110
    return-void

    .line 5085
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5089
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 5090
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailCursor encountered an IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5092
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 5093
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 5094
    .local v0, e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailCursor encountered an AuthenticationException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5096
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 5097
    .end local v0           #e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 5098
    .local v0, e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailCursor encountered a ResponseParseException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5099
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5100
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->PARSE_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto :goto_0

    .line 5101
    .end local v0           #e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 5102
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailCursor encountered a SQLiteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mErrorOccurred:Z

    .line 5104
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->DB_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    goto/16 :goto_0

    .line 5108
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method protected abstract runInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation
.end method

.method protected setSelectionArguments([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionArgs"

    .prologue
    .line 5165
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mSelectionArgs:[Ljava/lang/String;

    .line 5166
    return-void
.end method

.method protected final startThread()Z
    .locals 2

    .prologue
    .line 5176
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 5177
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5178
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 5179
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    .line 5180
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5181
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 5185
    :goto_0
    return v0

    .line 5183
    :cond_0
    monitor-exit v0

    .line 5185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
