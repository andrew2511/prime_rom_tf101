.class public Lcom/android/email/GroupMessagingListener;
.super Lcom/android/email/MessagingListener;
.source "GroupMessagingListener.java"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/MessagingListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 131
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkMailStarted(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerCommandCompleted(Z)V
    .locals 3
    .parameter "moreCommandsToRun"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 199
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1}, Lcom/android/email/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 201
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listFoldersFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 63
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 65
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersFinished(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 70
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 72
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersStarted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 56
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 58
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 10
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 192
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/MessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 194
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFinished(JJJ)V
    .locals 8
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 182
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentStarted(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 170
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 172
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 114
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 116
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFinished(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 107
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewStarted(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 100
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 102
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 143
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 145
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 153
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 136
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->sendPendingMessagesStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 138
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 95
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFinished(JJII)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->synchronizeMailboxFinished(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 88
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 77
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->synchronizeMailboxStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 79
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
