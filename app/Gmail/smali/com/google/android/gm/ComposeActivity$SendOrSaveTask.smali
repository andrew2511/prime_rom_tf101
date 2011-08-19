.class Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendOrSaveTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

.field final mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V
    .locals 0
    .parameter "context"
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    .line 1550
    iput-object p3, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 1551
    iput-object p2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    .line 1552
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    return-object v0
.end method

.method private static appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1635
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1636
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1637
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1640
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method static getRecipientsList(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)Ljava/util/ArrayList;
    .locals 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1621
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "toAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1622
    .local v3, toAddresses:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "ccAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1623
    .local v2, ccAddresses:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "bccAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1625
    .local v1, bccAddresses:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v0, allRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1628
    invoke-static {v0, v2}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1629
    invoke-static {v0, v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1631
    return-object v0
.end method


# virtual methods
.method incrementRecipientsTimesContacted(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1643
    .local p1, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v12, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    .local v13, whereBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 1647
    .local v10, questionMarks:[Ljava/lang/String;
    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1648
    const-string v1, "?"

    invoke-static {v10, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1649
    const-string v1, "data1 IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1654
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1658
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v8, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1664
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1667
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1668
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1669
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 1671
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1672
    .local v7, contactId:Ljava/lang/Long;
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1674
    .end local v7           #contactId:Ljava/lang/Long;
    :cond_1
    const-string v1, "?"

    invoke-static {v10, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1675
    const-string v1, "_id IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1680
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "last_time_contacted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1681
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, v1, v11, v2, p0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1683
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1556
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    .line 1558
    .local v5, message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;
    iget-object v9, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSelectedAccount:Ljava/lang/String;

    .line 1559
    .local v9, selectedAccount:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->getMessageId()J

    move-result-wide v7

    .line 1563
    .local v7, messageId:J
    const/4 v6, 0x0

    .line 1564
    .local v6, engine:Lcom/google/android/gm/provider/MailEngine;
    iget-object v0, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1565
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, v7, v8}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1570
    const-wide/16 v7, 0x0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v6

    .line 1577
    if-nez v6, :cond_1

    .line 1579
    const-string v0, "Gmail"

    const-string v1, "MailEngine couldn\'t be instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v9, v5, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    .line 1587
    :cond_1
    move-object v4, v9

    .line 1588
    .local v4, account:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 1589
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v6

    .line 1592
    :cond_2
    move-wide v2, v7

    .line 1595
    .local v2, messageIdToSave:J
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;-><init>(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;JLjava/lang/String;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)V

    invoke-virtual {v6, v10, v0}, Lcom/google/android/gm/provider/MailEngine;->registerInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 1618
    return-void
.end method
