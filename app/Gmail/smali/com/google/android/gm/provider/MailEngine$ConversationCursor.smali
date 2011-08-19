.class Lcom/google/android/gm/provider/MailEngine$ConversationCursor;
.super Lcom/google/android/gm/provider/MailEngine$NetworkCursor;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationCursor"
.end annotation


# instance fields
.field mContentsVisibleToUser:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V
    .locals 1
    .parameter
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .parameter "logic"

    .prologue
    .line 5238
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    .line 5239
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V

    .line 5235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mContentsVisibleToUser:Z

    .line 5240
    return-void
.end method


# virtual methods
.method getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 3

    .prologue
    .line 5314
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5315
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5316
    .local v0, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->isActiveNetworkCursor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5317
    monitor-exit v1

    move-object v1, v0

    .line 5320
    :goto_0
    return-object v1

    .line 5319
    :cond_0
    monitor-exit v1

    .line 5320
    const/4 v1, 0x0

    goto :goto_0

    .line 5319
    .end local v0           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onMove(II)Z
    .locals 3
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 5262
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5263
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5264
    .local v0, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5265
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->onMove(IILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5266
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->onMove(II)Z

    move-result v1

    return v1

    .line 5264
    .end local v0           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5244
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-result-object v0

    .line 5245
    .local v0, logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    if-eqz v0, :cond_0

    .line 5246
    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mContentsVisibleToUser:Z

    invoke-virtual {v0, p0, v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->requery(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V

    .line 5247
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    .line 5248
    .local v2, selectionArguments:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5249
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->setSelectionArguments([Ljava/lang/String;)V

    .line 5252
    .end local v2           #selectionArguments:[Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z

    move-result v1

    .line 5253
    .local v1, returnValue:Z
    if-eqz v0, :cond_1

    .line 5254
    invoke-virtual {v0, v4, v4, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->onMove(IILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5256
    :cond_1
    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .parameter "extras"

    .prologue
    .line 5271
    const-string v6, "command"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5272
    .local v0, command:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5276
    .local v5, response:Landroid/os/Bundle;
    const-string v6, "setVisible"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "visible"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5278
    const-string v6, "commandResponse"

    const-string v7, "ok"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 5309
    :goto_0
    return-object v6

    .line 5283
    :cond_0
    const-string v6, "activate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5284
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5285
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v1, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5287
    .local v1, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 5288
    .local v4, query:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v7}, Lcom/google/android/gm/provider/MailEngine;->access$3100(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5289
    new-instance v3, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v8, 0x1

    invoke-direct {v3, v7, v4, v8}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Z)V

    .line 5291
    .local v3, newLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v3, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->configure(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5292
    iput-object v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    .line 5294
    .end local v3           #newLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5295
    const-string v6, "commandResponse"

    const-string v7, "ok"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 5297
    goto :goto_0

    .line 5294
    .end local v1           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .end local v4           #query:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 5298
    :cond_2
    const-string v6, "setVisible"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5299
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-result-object v2

    .line 5302
    .local v2, logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    if-eqz v2, :cond_3

    .line 5303
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$3200(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)V

    .line 5305
    :cond_3
    const-string v6, "commandResponse"

    const-string v7, "ok"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 5307
    goto :goto_0

    .line 5309
    .end local v2           #logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0
.end method
