.class final Landroid/database/sqlite/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryThread"
.end annotation


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Landroid/database/sqlite/SQLiteCursor;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteCursor;I)V
    .registers 3
    .parameter
    .parameter "version"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    .line 111
    return-void
.end method

.method private sendMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    const/4 v1, 0x0

    #setter for: Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    .line 120
    :goto_14
    return-void

    .line 117
    :cond_15
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #setter for: Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 123
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;

    move-result-object v1

    .line 124
    .local v1, cw:Landroid/database/CursorWindow;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 127
    :goto_f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 129
    :try_start_18
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mCursorState:I
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$300(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_cb

    if-eq v3, v4, :cond_2c

    .line 159
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    :goto_28
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 162
    return-void

    .line 133
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #calls: Landroid/database/sqlite/SQLiteCursor;->getQuery()Landroid/database/sqlite/SQLiteQuery;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I
    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v5}, Landroid/database/sqlite/SQLiteCursor;->access$500(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v0

    .line 135
    .local v0, count:I
    if-eqz v0, :cond_e0

    .line 136
    const/4 v3, -0x1

    if-ne v0, v3, :cond_8d

    .line 137
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I
    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->access$512(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 138
    const-string v3, "SQLiteCursor"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 139
    const-string v3, "SQLiteCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received -1 from native_fill_window. read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v5}, Landroid/database/sqlite/SQLiteCursor;->access$500(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows so far"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_80
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_83
    .catchall {:try_start_2c .. :try_end_83} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_83} :catch_cb

    .line 159
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 144
    :cond_8d
    :try_start_8d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3, v0}, Landroid/database/sqlite/SQLiteCursor;->access$512(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 145
    const-string v3, "SQLiteCursor"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 146
    const-string v3, "SQLiteCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received all data from native_fill_window. read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v5}, Landroid/database/sqlite/SQLiteCursor;->access$500(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_c0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_c3
    .catchall {:try_start_8d .. :try_end_c3} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_c3} :catch_cb

    .line 159
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto/16 :goto_28

    .line 155
    .end local v0           #count:I
    :catch_cb
    move-exception v3

    move-object v2, v3

    .line 159
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto/16 :goto_28

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_d5
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0       #count:I
    :cond_e0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #getter for: Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto/16 :goto_28
.end method
