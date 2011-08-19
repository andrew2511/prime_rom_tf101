.class Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
.super Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageCursorLogic"
.end annotation


# instance fields
.field mConversationId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 5766
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    return-void
.end method


# virtual methods
.method public configure(JLcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V
    .locals 11
    .parameter "conversationId"
    .parameter "cursor"
    .parameter "useCache"

    .prologue
    .line 5770
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    .line 5774
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT COUNT(*) FROM conversations WHERE _id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 5777
    .local v2, numConversations:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 5778
    const-string v6, "Gmail"

    const-string v7, "Didn\'t find conversation entry for this conversation"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    :cond_0
    :goto_0
    return-void

    .line 5782
    :cond_1
    if-eqz p4, :cond_2

    .line 5783
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND synced = 0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 5788
    .local v0, cacheCount:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 5793
    .end local v0           #cacheCount:J
    :cond_2
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND synced = 1"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 5796
    .local v4, syncCount:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 5799
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "messages"

    const-string v8, "synced = 0"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 5800
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z

    .line 5805
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->startThread()Z

    goto :goto_0
.end method

.method public runInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 5812
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    iget-wide v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gm/provider/MailSync$ConversationInfo;-><init>(JJ)V

    .line 5815
    .local v1, info:Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageCursor requesting conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4, v1}, Lcom/google/android/gm/provider/MailSync;->newFetchConversationRequest(Lcom/google/android/gm/provider/MailSync$ConversationInfo;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 5817
    .local v2, request:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4, v2}, Lcom/google/android/gm/provider/MailEngine;->access$3900(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 5819
    .local v3, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4, v3}, Lcom/google/android/gm/provider/MailSync;->handleFetchConversationResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5821
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 5822
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 5825
    :cond_0
    const-string v4, "Gmail"

    const-string v5, "All messages received for conversation."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5826
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;Z)V

    .line 5827
    return-void

    .line 5821
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 5822
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 5823
    :cond_1
    throw v4
.end method
