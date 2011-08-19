.class final Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GmailJsInterface"
.end annotation


# instance fields
.field mConversationId:J

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    .line 1150
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getServerId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLocalId(Ljava/lang/String;)J
    .locals 3
    .parameter "messageIdStr"

    .prologue
    .line 1505
    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationBuilder;->messageIdForDomId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1507
    .local v0, id:J
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1513
    :cond_0
    return-wide v0
.end method

.method private getServerId(Ljava/lang/String;)J
    .locals 5
    .parameter "serverMessageIdStr"

    .prologue
    .line 1517
    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationBuilder;->messageIdForDomId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1519
    .local v0, serverMessageId:J
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1523
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1600(Lcom/google/android/gm/HtmlConversationFragment;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1525
    :cond_0
    return-wide v0
.end method


# virtual methods
.method attachToConversation(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1153
    iput-wide p1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    .line 1154
    return-void
.end method

.method public changeLabels()V
    .locals 3

    .prologue
    .line 1489
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$600(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;

    invoke-direct {v2, p0}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;-><init>(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1500
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.changeLabels()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public contactSender(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 17
    .parameter "senderPersonal"
    .parameter "senderEmail"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1344
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v14, v0

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v15

    if-nez v15, :cond_0

    .line 1346
    monitor-exit v14

    .line 1394
    :goto_0
    return-void

    .line 1348
    :cond_0
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    const/4 v14, 0x2

    :try_start_2
    new-array v11, v14, [I

    .line 1352
    .local v11, screenLocation:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 1355
    new-instance v13, Landroid/graphics/Rect;

    move-object v0, v13

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1356
    .local v13, targetRect:Landroid/graphics/Rect;
    const/4 v14, 0x0

    aget v14, v11, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1360
    .local v10, resolver:Landroid/content/ContentResolver;
    sget-object v14, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1362
    .local v5, dataUri:Landroid/net/Uri;
    invoke-static {v10, v5}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 1364
    .local v8, lookupUri:Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v0, v14

    move-object v1, v13

    move-object v2, v8

    move v3, v15

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1391
    .end local v5           #dataUri:Landroid/net/Uri;
    .end local v8           #lookupUri:Landroid/net/Uri;
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v11           #screenLocation:[I
    .end local v13           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 1392
    .local v6, e:Ljava/lang/Throwable;
    const-string v14, "GmailJs"

    const-string v15, "Error in GmailJsInterface.contactSender()"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1348
    .end local v6           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v15

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v15

    .line 1370
    .restart local v5       #dataUri:Landroid/net/Uri;
    .restart local v8       #lookupUri:Landroid/net/Uri;
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #screenLocation:[I
    .restart local v13       #targetRect:Landroid/graphics/Rect;
    :cond_1
    const-string v14, "mailto"

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v15

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1371
    .local v9, mailUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v7, v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1375
    .local v7, intent:Landroid/content/Intent;
    new-instance v12, Landroid/text/util/Rfc822Token;

    const/4 v14, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    .local v12, sender:Landroid/text/util/Rfc822Token;
    const-string v14, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v12}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const/high16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1385
    if-eqz p1, :cond_2

    .line 1386
    const-string v14, "name"

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    move-object v14, v0

    invoke-virtual {v14, v7}, Lcom/google/android/gm/HtmlConversationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public edit(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 1216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1217
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/google/android/gm/ComposeActivity;->draft(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v1           #id:J
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1219
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.edit()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forward(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 1176
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1177
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->forward(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    .end local v1           #id:J
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1179
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.forward()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "messageId"

    .prologue
    .line 1260
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1263
    .local v1, id:J
    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v7, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1265
    const-string v6, ""

    monitor-exit v5

    move-object v5, v6

    .line 1283
    .end local v1           #id:J
    :goto_0
    return-object v5

    .line 1269
    .restart local v1       #id:J
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v2, v7}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setExpandedMessageId(JZ)V

    .line 1270
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markDirtyAndUncacheable()V

    .line 1271
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1100(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 1273
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1274
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1276
    .local v4, sender:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gm/Persistence;->getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1278
    .local v3, safeForImages:Z
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v3}, Lcom/google/android/gm/HtmlConversationBuilder;->getMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZ)Ljava/lang/String;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto :goto_0

    .line 1280
    .end local v3           #safeForImages:Z
    .end local v4           #sender:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1281
    .end local v1           #id:J
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1282
    .local v0, e:Ljava/lang/Throwable;
    const-string v5, "GmailJs"

    const-string v6, "Error in GmailJsInterface.getMessageBody()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    const-string v5, ""

    goto :goto_0
.end method

.method public getMessageHeaders(II)Ljava/lang/String;
    .locals 5
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    const-string v2, ""

    monitor-exit v1

    move-object v1, v2

    .line 1424
    :goto_0
    return-object v1

    .line 1415
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markHeadersExpanded()V

    .line 1416
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markDirtyAndUncacheable()V

    .line 1417
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1100(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 1419
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/google/android/gm/HtmlConversationBuilder;->getCollapsedHeadersHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;II)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1421
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1422
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1423
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.getMessageHeaders()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    const-string v1, ""

    goto :goto_0
.end method

.method public getRecipientDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "messageId"

    .prologue
    .line 1317
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1318
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1320
    const-string v4, ""

    monitor-exit v3

    move-object v3, v4

    .line 1328
    .end local v1           #id:J
    :goto_0
    return-object v3

    .line 1323
    .restart local v1       #id:J
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1324
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/HtmlConversationBuilder;->getRecipientsHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Z)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 1325
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1326
    .end local v1           #id:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1327
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.getRecipientDetails()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    const-string v3, ""

    goto :goto_0
.end method

.method public onConversationInitialized()V
    .locals 5

    .prologue
    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1465
    monitor-exit v1

    .line 1485
    :goto_0
    return-void

    .line 1467
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$600(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;

    invoke-direct {v2, p0}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;-><init>(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1483
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.onConversationInitialized()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1467
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public reply(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 1158
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1159
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->reply(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .end local v1           #id:J
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1161
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.reply()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public replyAll(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 1167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1168
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->replyAll(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v1           #id:J
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1170
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.replyAll()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setManualExpansionState(Ljava/lang/String;Z)V
    .locals 5
    .parameter "messageId"
    .parameter "isExpanded"

    .prologue
    .line 1296
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setExpandedMessageId(JZ)V

    .line 1299
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markDirtyAndUncacheable()V

    .line 1300
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1100(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 1302
    :cond_0
    monitor-exit v1

    .line 1306
    :goto_0
    return-void

    .line 1302
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1303
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1304
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.setManualExpansionState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStarred(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "messageId"
    .parameter "serverMessageId"
    .parameter "addStar"

    .prologue
    .line 1232
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    monitor-exit v10

    .line 1250
    :goto_0
    return-void

    .line 1237
    :cond_0
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getServerId(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v9}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    .line 1241
    .local v0, messageInfo:Lcom/google/android/gm/ConversationInfo;
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "^t"

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v11

    .line 1242
    .local v11, label:Lcom/google/android/gm/provider/Label;
    new-instance v2, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v2, v11, p3}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1243
    .local v2, labelOp:Lcom/google/android/gm/LabelOperations;
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$900(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 1246
    monitor-exit v10

    goto :goto_0

    .end local v0           #messageInfo:Lcom/google/android/gm/ConversationInfo;
    .end local v2           #labelOp:Lcom/google/android/gm/LabelOperations;
    .end local v11           #label:Lcom/google/android/gm/provider/Label;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1247
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 1248
    .local v10, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.setStarred()"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showExternalResources(Ljava/lang/String;)V
    .locals 8
    .parameter "messageId"

    .prologue
    .line 1436
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v6, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1438
    monitor-exit v4

    .line 1456
    :goto_0
    return-void

    .line 1440
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1446
    .local v1, id:J
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->showImagesForMessage(J)V

    .line 1447
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->blockImages:Z

    .line 1448
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1449
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1451
    .local v3, sender:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gm/Persistence;->setDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)V

    .line 1452
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$1100(Lcom/google/android/gm/HtmlConversationFragment;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1453
    .end local v1           #id:J
    .end local v3           #sender:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1454
    .local v0, e:Ljava/lang/Throwable;
    const-string v4, "GmailJs"

    const-string v5, "Error in GmailJsInterface.showExternalResources()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1440
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public viewOrDownload(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "serverMessageId"
    .parameter "partId"
    .parameter "action"

    .prologue
    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$600(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;-><init>(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_0
    return-void

    .line 1206
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1207
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.viewOrDownload()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
