.class Lcom/google/android/gsf/gtalkservice/ChatSession$1;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ChatSession;->initialize(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

.field final synthetic val$initiatedLocally:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    iput-boolean p2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->val$initiatedLocally:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 215
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$200(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$300(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$400(Lcom/google/android/gsf/gtalkservice/ChatSession;)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, contact:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static {v0, v10, v4, v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 220
    .local v11, pid:J
    sget-object v0, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$600()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 226
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$700(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v7, :cond_0

    move v2, v7

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$802(Lcom/google/android/gsf/gtalkservice/ChatSession;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 255
    :goto_1
    return-void

    :cond_0
    move v2, v8

    .line 231
    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 247
    :goto_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->val$initiatedLocally:Z

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$802(Lcom/google/android/gsf/gtalkservice/ChatSession;Z)Z

    .line 249
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    const-string v5, ""

    const-string v6, ""

    move-wide v3, v11

    invoke-static/range {v2 .. v8}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$1000(Lcom/google/android/gsf/gtalkservice/ChatSession;JLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    const-string v2, "initializeChat"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$900(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    goto :goto_2
.end method
