.class Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxesLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JI)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"

    .prologue
    .line 366
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-static {p4}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v6, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mContext:Landroid/content/Context;

    .line 370
    iput p4, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    .line 371
    iput-wide p2, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mAccountId:J

    .line 372
    return-void
.end method

.method private static getSelection(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 358
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 359
    const-string v0, "accountKey=? AND type<64 AND flagVisible=1 AND type NOT IN (3,4,5,6)"

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "accountKey=? AND type<64 AND flagVisible=1"

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 383
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v8

    .line 384
    .local v8, mailboxesCursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    if-ne v0, v4, :cond_0

    .line 385
    invoke-static {v8}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mAccountId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;J)I

    move-result v7

    .line 392
    .local v7, accountStarredCount:I
    if-nez v7, :cond_1

    .line 393
    invoke-static {v8}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getProjection()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 398
    .local v1, starredCursor:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v5

    .line 399
    .local v5, totalStarredCount:I
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->access$100(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 402
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object v8, v2, v4

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    .line 379
    :cond_0
    return-void
.end method
