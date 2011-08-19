.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;)V
    .locals 7
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 193
    .local v6, localAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, contentType:Ljava/lang/String;
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 196
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, contentDisposition:Ljava/lang/String;
    const-string v1, "filename"

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    move-object v1, v0

    .line 201
    .end local v0           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    :goto_0
    const-wide/16 v2, 0x0

    .line 202
    .local v2, size:J
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, disposition:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 204
    const-string v4, "size"

    invoke-static {v0, v4}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 212
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    const-string v0, "X-Android-Attachment-StoreData"

    invoke-interface {p2, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, partIds:[Ljava/lang/String;
    if-eqz v0, :cond_5

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 215
    .local v0, partId:Ljava/lang/String;
    :goto_1
    iput-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 216
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    iput-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 217
    iput-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 218
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 220
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 221
    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 222
    const-string v0, "B"

    .end local v0           #partId:Ljava/lang/String;
    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 223
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 234
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    .end local v2           #size:J
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 237
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 239
    .local v0, attachmentFoundInDb:Z
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 241
    .local v2, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 244
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    const/4 v0, 0x1

    .line 250
    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .end local v2           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iput-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    if-nez v0, :cond_3

    .line 262
    invoke-virtual {v6, p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 266
    :cond_3
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .end local v0           #attachmentFoundInDb:Z
    invoke-static {p0, p2, v6, v0, v1}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 268
    iget-object p0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .end local p0
    if-nez p0, :cond_4

    .line 269
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 271
    :cond_4
    iget-object p0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 273
    return-void

    .line 213
    .local v0, partIds:[Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    .local v2, size:J
    .restart local p0
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 257
    .end local v2           #size:J
    .local v0, attachmentFoundInDb:Z
    .local v1, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move p0, v0

    .end local v0           #attachmentFoundInDb:Z
    .end local p1
    .local p0, attachmentFoundInDb:Z
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    .end local v1           #cursor:Landroid/database/Cursor;
    .local v0, name:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_6
    move-object v1, v0

    .end local v0           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mp"
    .parameter "contentType"
    .parameter "quotedPartTag"
    .parameter "partText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p3, :cond_0

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/android/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 431
    .local v1, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    if-eqz p2, :cond_1

    .line 432
    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "mailboxName"

    .prologue
    const/4 v6, 0x1

    .line 547
    const-class v2, Lcom/android/email/LegacyConversions;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 549
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08004f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f080050

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f080051

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v6

    .line 576
    :goto_0
    monitor-exit v2

    return v3

    .line 571
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, lowerCaseName:Ljava/lang/String;
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 573
    .local v1, type:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 574
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v6

    .line 576
    goto :goto_0

    .line 547
    .end local v0           #lowerCaseName:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 8
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v7, 0x0

    .line 499
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 501
    .local v3, result:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 503
    iput-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 505
    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, flags:I
    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v1, v1, 0x1

    .line 510
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    or-int/lit8 v1, v1, 0x40

    .line 513
    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 514
    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 516
    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/android/email/Account;->getRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 519
    iget-object v5, p1, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 520
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 521
    iget-wide v5, p1, Lcom/android/email/Account;->mSecurityFlags:J

    iput-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 522
    iput-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 523
    iget-object v5, p1, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 526
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 527
    .local v2, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v2           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :goto_0
    :try_start_1
    invoke-virtual {v3, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    .line 534
    .local v4, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    .end local v4           #sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :goto_1
    return-object v3

    .line 528
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 529
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 530
    const-string v5, "Email"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 535
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 536
    .restart local v0       #e:Ljava/net/URISyntaxException;
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v5, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 537
    const-string v5, "Email"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;
    .locals 4
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    new-instance v0, Lcom/android/email/Account;

    invoke-direct {v0, p0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, result:Lcom/android/email/Account;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncWindow(I)V

    .line 454
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 465
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 467
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 469
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 471
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDeletePolicy(I)V

    .line 473
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/Account;->mUuid:Ljava/lang/String;

    .line 474
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 475
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setRingtone(Ljava/lang/String;)V

    .line 476
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    .line 478
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    iput-wide v1, v0, Lcom/android/email/Account;->mSecurityFlags:J

    .line 479
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    .line 482
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 485
    return-object v0

    :cond_0
    move v1, v2

    .line 465
    goto :goto_0

    :cond_1
    move v1, v2

    .line 467
    goto :goto_1

    :cond_2
    move v1, v2

    .line 469
    goto :goto_2
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;
    .locals 13
    .parameter "context"
    .parameter "localMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 330
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 333
    .local v3, message:Lcom/android/emailcommon/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 334
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 335
    .local v0, from:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 336
    aget-object v7, v0, v11

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    .line 338
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 339
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 340
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    iget v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v8, v12

    :goto_1
    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 342
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 343
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 345
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 346
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 347
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 348
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    .line 349
    new-instance v7, Ljava/util/Date;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 350
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 353
    const-string v7, "Content-Type"

    const-string v8, "multipart/mixed"

    invoke-virtual {v3, v7, v8}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v4, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 355
    .local v4, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 359
    :try_start_0
    const-string v7, "text/html"

    const/4 v8, 0x0

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_2
    :try_start_1
    const-string v7, "text/plain"

    const/4 v8, 0x0

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_3
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v12

    .line 373
    .local v2, isReply:Z
    :goto_4
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v12

    .line 378
    .local v1, isForward:Z
    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 380
    :cond_1
    :try_start_2
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    :goto_6
    if-eqz v2, :cond_7

    const-string v7, "quoted-reply"

    move-object v5, v7

    .line 388
    .local v5, replyTag:Ljava/lang/String;
    :goto_7
    :try_start_3
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    :goto_8
    :try_start_4
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 413
    .end local v5           #replyTag:Ljava/lang/String;
    :cond_2
    :goto_9
    return-object v3

    .line 333
    .end local v0           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    .end local v4           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0       #from:[Lcom/android/emailcommon/mail/Address;
    :cond_4
    move v8, v11

    .line 340
    goto/16 :goto_1

    .line 361
    .restart local v4       #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 362
    .local v6, rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html body "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 368
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 369
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text body "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_5
    move v2, v11

    .line 372
    goto :goto_4

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v11

    .line 373
    goto :goto_5

    .line 382
    .restart local v1       #isForward:Z
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 383
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 386
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_7
    const-string v7, "quoted-forward"

    move-object v5, v7

    goto/16 :goto_7

    .line 390
    .restart local v5       #replyTag:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 391
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 397
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    move-object v6, v7

    .line 398
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 5
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 294
    .local v0, attachmentId:J
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object p1

    .end local p1
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 296
    .local p1, in:Ljava/io/InputStream;
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v2

    .line 297
    .local v2, saveIn:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 300
    :cond_0
    invoke-static {p0, p3, p4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v2

    .line 302
    .local v2, saveAs:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 303
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 304
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-static {p1, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    .end local v2           #saveAs:Ljava/io/File;
    int-to-long v2, v2

    .line 305
    .local v2, copySize:J
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 306
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 309
    invoke-static {p3, p4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object p1

    .end local p1           #in:Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    .local p1, contentUriString:Ljava/lang/String;
    iput-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 313
    iput-object p1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 316
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local p2, cv:Landroid/content/ContentValues;
    const-string p3, "size"

    .end local p3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string p3, "contentUri"

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .end local p1           #contentUriString:Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 320
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    .end local v0           #attachmentId:J
    .end local v2           #copySize:J
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local p1           #uri:Landroid/net/Uri;
    .end local p2           #cv:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 280
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    .line 282
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 283
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 165
    .local v0, attachmentPart:Lcom/android/emailcommon/mail/Part;
    invoke-static {p0, p1, v0}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;)V

    goto :goto_0

    .line 167
    .end local v0           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    :cond_0
    return-void
.end method

.method public static updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z
    .locals 10
    .parameter "localMessage"
    .parameter "message"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 84
    .local v2, from:[Lcom/android/emailcommon/mail/Address;
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    .line 85
    .local v7, to:[Lcom/android/emailcommon/mail/Address;
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 86
    .local v1, cc:[Lcom/android/emailcommon/mail/Address;
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 87
    .local v0, bcc:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 88
    .local v4, replyTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, subject:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v5

    .line 90
    .local v5, sentDate:Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    .line 92
    .local v3, internalDate:Ljava/util/Date;
    if-eqz v2, :cond_0

    array-length v8, v2

    if-lez v8, :cond_0

    .line 93
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 95
    :cond_0
    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 98
    :cond_1
    if-eqz v6, :cond_2

    .line 99
    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 101
    :cond_2
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    .end local v5           #sentDate:Ljava/util/Date;
    invoke-virtual {p1, v5}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 105
    iget v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 106
    .end local v6           #subject:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v5, ""

    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 107
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 112
    :cond_4
    :goto_0
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 116
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 117
    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 124
    :cond_5
    check-cast p1, Lcom/android/emailcommon/internet/MimeMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    .line 125
    .local p1, messageId:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 126
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 130
    :cond_6
    iput-wide p4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 131
    iput-wide p2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 133
    if-eqz v2, :cond_7

    array-length p1, v2

    .end local p1           #messageId:Ljava/lang/String;
    if-lez p1, :cond_7

    .line 134
    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 137
    :cond_7
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 138
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 139
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 140
    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 150
    const/4 p0, 0x1

    .end local p0
    return p0

    .line 109
    .restart local p0
    .local p1, message:Lcom/android/emailcommon/mail/Message;
    :cond_8
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto :goto_0
.end method
