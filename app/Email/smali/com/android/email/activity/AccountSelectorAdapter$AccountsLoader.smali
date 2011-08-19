.class Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsLoader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 171
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$000()[Ljava/lang/String;

    move-result-object v3

    const-string v6, "isDefault desc, _id"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    .line 174
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 179
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    .line 183
    .local v2, accountsCursor:Landroid/database/Cursor;
    new-instance v5, Lcom/android/email/data/ClosingMatrixCursor;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$100()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v2}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 185
    .local v5, resultCursor:Landroid/database/MatrixCursor;
    const/4 v8, -0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, totalUnread:I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 192
    .local v0, accountId:J
    iget-object v8, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-static {v8, v0, v1, v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I

    move-result v7

    .line 195
    .local v7, unread:I
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 196
    .local v4, rb:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 197
    invoke-static {v2}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 198
    invoke-static {v2}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 200
    add-int/2addr v6, v7

    .line 201
    goto :goto_0

    .line 203
    .end local v0           #accountId:J
    .end local v4           #rb:Landroid/database/MatrixCursor$RowBuilder;
    .end local v7           #unread:I
    :cond_0
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    .line 204
    .local v3, countAccounts:I
    if-le v3, v10, :cond_1

    .line 205
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 208
    .restart local v4       #rb:Landroid/database/MatrixCursor$RowBuilder;
    const-wide/high16 v8, 0x1000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 209
    iget-object v8, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080068

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 211
    iget-object v8, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0003

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v3, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 213
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 215
    .end local v4           #rb:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
