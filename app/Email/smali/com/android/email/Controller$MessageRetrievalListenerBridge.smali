.class public Lcom/android/email/Controller$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAttachmentId:J

.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 3
    .parameter
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    iput-wide p2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    .line 1189
    iput-wide p4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 1190
    invoke-static {p1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    .line 1191
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 11
    .parameter "progress"

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1196
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1197
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v6, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 1200
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1205
    return-void
.end method
