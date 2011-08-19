.class public Lcom/android/email/activity/AccountsAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountsAdapter$Callback;
    }
.end annotation


# static fields
.field public static final MAILBOX_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

.field private final mDefaultAccountId:J

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMailboxesCount:I

.field private final mOnDeletingAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparatorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Landroid/content/Context;IJLcom/android/email/activity/AccountsAdapter$Callback;)V
    .locals 1
    .parameter "c"
    .parameter "context"
    .parameter "mailboxesCount"
    .parameter "defaultAccountId"
    .parameter "callback"

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    .line 89
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    iput p3, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    .line 91
    iput p3, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    .line 92
    iput-wide p4, p0, Lcom/android/email/activity/AccountsAdapter;->mDefaultAccountId:J

    .line 93
    iput-object p6, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    .line 94
    return-void
.end method

.method private bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 215
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object v15, v0

    .line 216
    .local v15, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v3, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v15, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    .line 219
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 222
    .local v9, accountId:J
    const v3, 0x7f0f0001

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, text:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 226
    const v3, 0x7f0f0004

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 227
    .local v13, descriptionView:Landroid/widget/TextView;
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v13           #descriptionView:Landroid/widget/TextView;
    :cond_0
    const/4 v3, 0x2

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 231
    if-eqz v16, :cond_1

    .line 232
    const v3, 0x7f0f0005

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 233
    .local v14, emailView:Landroid/widget/TextView;
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    .end local v14           #emailView:Landroid/widget/TextView;
    :cond_1
    const/16 v18, 0x0

    .line 239
    .local v18, unreadMessageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey =? AND type = 0"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 245
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, count:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 248
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 252
    .end local v12           #count:Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 255
    const v3, 0x7f0f0007

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const v3, 0x7f0f0006

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 257
    .local v17, unreadCountView:Landroid/widget/TextView;
    if-lez v18, :cond_3

    .line 258
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    const v3, 0x7f0f0002

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v3, 0x7f0f000a

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const v3, 0x7f0f0009

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/AccountsAdapter;->mDefaultAccountId:J

    move-wide v3, v0

    cmp-long v3, v9, v3

    if-nez v3, :cond_4

    .line 268
    const v3, 0x7f0f0008

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_1
    return-void

    .line 252
    .end local v17           #unreadCountView:Landroid/widget/TextView;
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 261
    .restart local v17       #unreadCountView:Landroid/widget/TextView;
    :cond_3
    const/16 v3, 0x8

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_4
    const v3, 0x7f0f0008

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object v5, v0

    .line 157
    .local v5, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v10, 0x0

    invoke-virtual {v5, p0, v10}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V

    .line 160
    const v10, 0x7f0f0001

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const/4 v10, 0x1

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, text:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 164
    const v10, 0x7f0f0004

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 165
    .local v6, nameView:Landroid/widget/TextView;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v6           #nameView:Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    .line 170
    const v10, 0x7f0f0005

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 171
    .local v7, statusView:Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 172
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_0
    const/4 v3, -0x1

    .line 179
    .local v3, count:I
    const/4 v10, 0x4

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    if-eqz v8, :cond_1

    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 183
    :cond_1
    const v10, 0x7f0f0006

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 184
    .local v9, unreadCountView:Landroid/widget/TextView;
    const v10, 0x7f0f0007

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 185
    .local v2, allCountView:Landroid/widget/TextView;
    const/4 v10, 0x0

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 187
    .local v4, id:I
    if-lez v3, :cond_5

    .line 188
    int-to-long v10, v4

    const-wide/16 v12, -0x4

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    int-to-long v10, v4

    const-wide/16 v12, -0x5

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    int-to-long v10, v4

    const-wide/16 v12, -0x6

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 191
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_1
    const v10, 0x7f0f000a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 205
    const v10, 0x7f0f0009

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 206
    const v10, 0x7f0f0008

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v10, 0x7f0f0002

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v10, 0x7f0f0002

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    int-to-long v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/android/email/FolderProperties;->getSummaryMailboxIconIds(J)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void

    .line 175
    .end local v2           #allCountView:Landroid/widget/TextView;
    .end local v3           #count:I
    .end local v4           #id:I
    .end local v9           #unreadCountView:Landroid/widget/TextView;
    .restart local p0
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 195
    .restart local v2       #allCountView:Landroid/widget/TextView;
    .restart local v3       #count:I
    .restart local v4       #id:I
    .restart local v9       #unreadCountView:Landroid/widget/TextView;
    :cond_4
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 200
    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;JLcom/android/email/activity/AccountsAdapter$Callback;)Lcom/android/email/activity/AccountsAdapter;
    .locals 8
    .parameter "mailboxesCursor"
    .parameter "accountsCursor"
    .parameter "context"
    .parameter "defaultAccountId"
    .parameter "callback"

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object p0, v7, v0

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 81
    .local v7, cursors:[Landroid/database/Cursor;
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 82
    .local v1, mc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/email/activity/AccountsAdapter;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/AccountsAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;IJLcom/android/email/activity/AccountsAdapter$Callback;)V

    return-object v0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 353
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 361
    :goto_0
    return v0

    .line 356
    :cond_0
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-gt p1, v0, :cond_1

    move v0, p1

    .line 358
    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0
.end method


# virtual methods
.method public addOnDeletingAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-ge v0, v1, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountsAdapter;->bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountsAdapter;->bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    .line 105
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 342
    .local v0, count:I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 344
    add-int/lit8 v0, v0, 0x1

    .line 346
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 288
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v0, :cond_0

    .line 289
    const/4 v0, -0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 304
    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, view:Landroid/widget/TextView;
    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v0

    .line 310
    .end local v0           #view:Landroid/widget/TextView;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v1

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isAccount(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    move v1, v3

    .line 332
    :goto_0
    return v1

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->isAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MergeCursor;

    invoke-virtual {v1, v3}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 330
    .local v0, id:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .end local v0           #id:Ljava/lang/Long;
    :cond_2
    move v1, v4

    .line 332
    goto :goto_0
.end method

.method public isMailbox(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnDeletingAccountView(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V
    .locals 3
    .parameter "itemView"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    iget-wide v1, p1, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/AccountsAdapter$Callback;->onClickAccountFolders(J)V

    .line 142
    :cond_0
    return-void
.end method
