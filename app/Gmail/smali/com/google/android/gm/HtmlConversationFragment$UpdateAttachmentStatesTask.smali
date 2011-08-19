.class Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;
.super Landroid/os/AsyncTask;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAttachmentStatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCacheAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationId:J

.field private final mEngine:Lcom/google/android/gm/provider/MailEngine;

.field private final mErrorAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;Lcom/google/android/gm/provider/MailEngine;J)V
    .locals 2
    .parameter
    .parameter "engine"
    .parameter "conversationId"

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1968
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 1969
    iput-wide p3, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    .line 1970
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mCacheAttachments:Ljava/util/List;

    .line 1971
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mSdAttachments:Ljava/util/List;

    .line 1972
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mErrorAttachments:Ljava/util/List;

    .line 1973
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$3100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1974
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$3202(Lcom/google/android/gm/HtmlConversationFragment;Ljava/util/List;)Ljava/util/List;

    .line 1975
    monitor-exit v0

    .line 1976
    return-void

    .line 1975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1960
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 35
    .parameter "params"

    .prologue
    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    move-wide v4, v0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "messages_messageId"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "messages_partId"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "downloadId"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "status"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "filename"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "saveToSd"

    aput-object v7, v3, v6

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gm/provider/AttachmentManager;->queryForConversation(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1988
    .local v30, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1989
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1990
    .local v32, messageId:Ljava/lang/Long;
    const/4 v2, 0x1

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1991
    .local v7, partId:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1992
    .local v8, downloadId:J
    const/4 v2, 0x3

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1993
    .local v34, status:I
    const/4 v2, 0x4

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1994
    .local v31, fileName:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move/from16 v33, v2

    .line 1996
    .local v33, saveToSd:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    move-wide v3, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$3300(Lcom/google/android/gm/HtmlConversationFragment;JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v29

    .line 1997
    .local v29, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    if-nez v29, :cond_2

    .line 1998
    const/4 v2, 0x0

    .line 2035
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 2038
    .end local v7           #partId:Ljava/lang/String;
    .end local v8           #downloadId:J
    .end local v29           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v31           #fileName:Ljava/lang/String;
    .end local v32           #messageId:Ljava/lang/Long;
    .end local v33           #saveToSd:Z
    .end local v34           #status:I
    :goto_2
    return-object v2

    .line 1994
    .restart local v7       #partId:Ljava/lang/String;
    .restart local v8       #downloadId:J
    .restart local v31       #fileName:Ljava/lang/String;
    .restart local v32       #messageId:Ljava/lang/Long;
    .restart local v34       #status:I
    :cond_1
    const/4 v2, 0x0

    move/from16 v33, v2

    goto :goto_1

    .line 2000
    .restart local v29       #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .restart local v33       #saveToSd:Z
    :cond_2
    :try_start_1
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    move v10, v0

    .line 2001
    .local v10, size:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$3400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v3

    int-to-long v4, v10

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2006
    .local v19, savedSize:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusRunning(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v33, :cond_4

    .line 2007
    new-instance v3, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v4, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$2100()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    .line 2009
    .local v3, attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2010
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$2500()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    .line 2012
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    move-wide v4, v0

    invoke-static {v2, v4, v5, v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$2800(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;)V

    .line 2017
    .end local v3           #attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    :cond_4
    invoke-static/range {v34 .. v34}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {v31 .. v31}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadStillPresent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2019
    if-eqz v33, :cond_6

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mSdAttachments:Ljava/util/List;

    move-object v2, v0

    new-instance v11, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v12, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v15, v7

    move-wide/from16 v16, v8

    move/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    :cond_5
    :goto_3
    invoke-static/range {v34 .. v34}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mErrorAttachments:Ljava/util/List;

    move-object v2, v0

    new-instance v20, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$3500()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    move/from16 v27, v10

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2035
    .end local v7           #partId:Ljava/lang/String;
    .end local v8           #downloadId:J
    .end local v10           #size:I
    .end local v19           #savedSize:Ljava/lang/String;
    .end local v29           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v31           #fileName:Ljava/lang/String;
    .end local v32           #messageId:Ljava/lang/Long;
    .end local v33           #saveToSd:Z
    .end local v34           #status:I
    :catchall_0
    move-exception v2

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2023
    .restart local v7       #partId:Ljava/lang/String;
    .restart local v8       #downloadId:J
    .restart local v10       #size:I
    .restart local v19       #savedSize:Ljava/lang/String;
    .restart local v29       #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .restart local v31       #fileName:Ljava/lang/String;
    .restart local v32       #messageId:Ljava/lang/Long;
    .restart local v33       #saveToSd:Z
    .restart local v34       #status:I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mCacheAttachments:Ljava/util/List;

    move-object v2, v0

    new-instance v20, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v28, 0x0

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    move/from16 v27, v10

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2035
    .end local v7           #partId:Ljava/lang/String;
    .end local v8           #downloadId:J
    .end local v10           #size:I
    .end local v19           #savedSize:Ljava/lang/String;
    .end local v29           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v31           #fileName:Ljava/lang/String;
    .end local v32           #messageId:Ljava/lang/Long;
    .end local v33           #saveToSd:Z
    .end local v34           #status:I
    :cond_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 2038
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1960
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2051
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mErrorAttachments:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$3600(Lcom/google/android/gm/HtmlConversationFragment;JLjava/util/List;I)V

    .line 2048
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$3200(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$3600(Lcom/google/android/gm/HtmlConversationFragment;JLjava/util/List;I)V

    .line 2049
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mCacheAttachments:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$3600(Lcom/google/android/gm/HtmlConversationFragment;JLjava/util/List;I)V

    .line 2050
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->mSdAttachments:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$3600(Lcom/google/android/gm/HtmlConversationFragment;JLjava/util/List;I)V

    goto :goto_0
.end method
