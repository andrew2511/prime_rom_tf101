.class Lcom/android/email/activity/MailboxesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;,
        Lcom/android/email/activity/MailboxesAdapter$Callback;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static sEnableUpdate:Z


# instance fields
.field private mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMode:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    .line 121
    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "mode"
    .parameter "callback"

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 126
    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    .line 127
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iput p2, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    .line 129
    iput-object p3, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 130
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 131
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-static/range {p0 .. p6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    return-void
.end method

.method private static addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "id"
    .parameter "type"
    .parameter "count"
    .parameter "showAlways"

    .prologue
    .line 478
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_0

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 481
    :cond_0
    if-nez p6, :cond_1

    if-lez p5, :cond_2

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 483
    .local v0, row:Landroid/database/MatrixCursor$RowBuilder;
    const-wide v1, 0x7fffffffffffffffL

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 484
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 485
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 486
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 487
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 488
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 489
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 491
    .end local v0           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_2
    return-void
.end method

.method private bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 326
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 327
    .local v1, t:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method private bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 268
    invoke-static {p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v6

    .line 269
    .local v6, isAccount:Z
    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 270
    .local v9, type:I
    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 272
    .local v4, id:J
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MailboxListItem;

    move-object v7, v0

    .line 273
    .local v7, listItem:Lcom/android/email/activity/MailboxListItem;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v7, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    .line 274
    iput-wide v4, v7, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    .line 275
    iput-object p0, v7, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 279
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v10, v7}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onSetDropTargetBackground(Lcom/android/email/activity/MailboxListItem;)V

    .line 282
    const v10, 0x7f0f004a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 283
    .local v8, nameView:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {p3}, Lcom/android/email/activity/MailboxesAdapter;->getCountTypeForMailboxType(Landroid/database/Cursor;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 295
    const/4 v2, 0x0

    .line 298
    .local v2, count:I
    :goto_0
    const v10, 0x7f0f005a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 301
    .local v3, countView:Landroid/widget/TextView;
    if-lez v2, :cond_0

    .line 302
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_1
    const v10, 0x7f0f0002

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v9, v4, v5}, Lcom/android/email/FolderProperties;->getIcon(IJ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const v10, 0x7f0f005b

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, chipView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 314
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v10, v4, v5}, Lcom/android/email/ResourceHelper;->getAccountColor(J)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    :goto_2
    return-void

    .line 289
    .end local v1           #chipView:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #countView:Landroid/widget/TextView;
    .restart local p3
    :pswitch_0
    const/4 v10, 0x4

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 290
    .restart local v2       #count:I
    goto :goto_0

    .line 292
    .end local v2           #count:I
    :pswitch_1
    const/4 v10, 0x5

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 293
    .restart local v2       #count:I
    goto :goto_0

    .line 305
    .restart local v3       #countView:Landroid/widget/TextView;
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 317
    .end local p3
    .restart local v1       #chipView:Landroid/view/View;
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;-><init>(Landroid/content/Context;JI)V

    .line 345
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCountType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->getCountTypeForMailboxType(Landroid/database/Cursor;)I

    move-result v0

    goto :goto_0
.end method

.method private static getCountTypeForMailboxType(Landroid/database/Cursor;)I
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 178
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 178
    goto :goto_0

    .line 173
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 257
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 258
    .local v3, type:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 259
    .local v0, mailboxId:J
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 261
    .end local v0           #mailboxId:J
    .end local v3           #type:I
    :cond_0
    if-nez v2, :cond_1

    .line 262
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_1
    return-object v2
.end method

.method static getIdForTest(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMessageCountForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 502
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getSpecialMailboxesCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "context"
    .parameter "innerCursor"

    .prologue
    .line 452
    new-instance v1, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 454
    .local v1, cursor:Landroid/database/MatrixCursor;
    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    .end local p1
    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 459
    const-wide/16 v2, -0x4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 464
    const-wide/16 v2, -0x5

    const/4 v4, 0x3

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 469
    const-wide/16 v2, -0x6

    const/4 v4, 0x4

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 473
    return-object v1
.end method

.method static getTypeForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 498
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getUnreadCountForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 506
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static isAccountRow(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 152
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 230
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 236
    :goto_0
    return-void

    .line 235
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableUpdates(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 225
    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    .line 226
    return-void
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 207
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 216
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUnreadCount(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getCountType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 199
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public isAccountRow(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 243
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 245
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
