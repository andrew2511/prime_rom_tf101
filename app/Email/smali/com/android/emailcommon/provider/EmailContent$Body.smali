.class public final Lcom/android/emailcommon/provider/EmailContent$Body;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$BodyColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# static fields
.field public static final COMMON_PROJECTION_HTML:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_INTRO:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_TEXT:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROJECTION_SOURCE_KEY:[Ljava/lang/String;


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mHtmlReply:Ljava/lang/String;

.field public mIntroText:Ljava/lang/String;

.field public mMessageKey:J

.field public mSourceKey:J

.field public mTextContent:Ljava/lang/String;

.field public mTextReply:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 240
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "messageKey"

    aput-object v1, v0, v4

    const-string v1, "htmlContent"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "htmlReply"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "textReply"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "introText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 246
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "textContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    .line 249
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "htmlContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    .line 252
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "textReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    .line 255
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "htmlReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    .line 258
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "introText"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    .line 261
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

    .line 266
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;-><init>(Lcom/android/emailcommon/provider/EmailContent$1;)V

    .line 278
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 279
    return-void
.end method

.method public static lookupBodyIdWithMessageId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v6, 0x0

    .line 326
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 377
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreBodySourceKey(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v6, 0x0

    .line 351
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 373
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 1
    .parameter

    .prologue
    .line 298
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 304
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 8
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    .local v6, c:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    return-object v0
.end method

.method public static restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 389
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 385
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 381
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "messageId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "messageKey=?"

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7
    .parameter "context"
    .parameter "messageId"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 340
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->lookupBodyIdWithMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 341
    .local v0, bodyId:J
    const-string v4, "messageKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 343
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 346
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v2, v3, p3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 394
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 395
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 396
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 397
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 398
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 399
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 400
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 401
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    const-string v1, "htmlContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "textContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "htmlReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "textReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v1, "introText"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-object v0
.end method
