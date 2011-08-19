.class Lcom/google/android/gm/HtmlConversationFragment$2;
.super Landroid/content/AsyncQueryHandler;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->viewOrDownload(JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;

.field final synthetic val$action:I

.field final synthetic val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

.field final synthetic val$conversationId:J

.field final synthetic val$partId:Ljava/lang/String;

.field final synthetic val$serverMessageId:J


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;Landroid/content/ContentResolver;JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$Attachment;IJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iput-wide p3, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$serverMessageId:J

    iput-object p5, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$partId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iput p7, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    iput-wide p8, p0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$conversationId:J

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1810
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1814
    :cond_1
    const/16 v16, -0x1

    .line 1817
    .local v16, status:I
    :try_start_0
    const-string v3, "downloadId"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1819
    .local v7, downloadId:J
    new-instance v2, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$serverMessageId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$partId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object v9, v0

    iget v9, v9, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    .line 1821
    .local v2, attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    const-wide/16 v3, -0x1

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 1822
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$2100()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    .line 1825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1827
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object v4, v0

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$2200(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v4, v0

    invoke-static {v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$2300(Lcom/google/android/gm/HtmlConversationFragment;I)V

    .line 1830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1842
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$conversationId:J

    move-wide v4, v0

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v2, v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$2700(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$conversationId:J

    move-wide v4, v0

    invoke-static {v3, v4, v5, v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$2800(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;)V

    .line 1846
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1855
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1833
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$conversationId:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$serverMessageId:J

    move-wide v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$partId:Ljava/lang/String;

    move-object v14, v0

    invoke-static/range {v9 .. v14}, Lcom/google/android/gm/HtmlConversationFragment;->access$2400(Lcom/google/android/gm/HtmlConversationFragment;JJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1855
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1836
    :pswitch_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$2500()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1855
    .end local v2           #attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    .end local v7           #downloadId:J
    :catchall_0
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1838
    .restart local v2       #attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    .restart local v7       #downloadId:J
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1839
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$2600(Lcom/google/android/gm/HtmlConversationFragment;)V

    goto :goto_1

    .line 1850
    :cond_7
    const-string v3, "status"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1852
    const-string v3, "filename"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    .line 1855
    .local v15, fileUri:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1858
    invoke-static/range {v16 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1862
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x7

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->val$action:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$2902(Lcom/google/android/gm/HtmlConversationFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1871
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$2;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$3000(Lcom/google/android/gm/HtmlConversationFragment;)V

    goto/16 :goto_0

    .line 1830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
