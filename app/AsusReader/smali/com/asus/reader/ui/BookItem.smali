.class public Lcom/asus/reader/ui/BookItem;
.super Landroid/widget/RelativeLayout;
.source "BookItem.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/asus/reader/util/Downloader$UpdateListener;


# instance fields
.field private mAccessTime:J

.field public mBookAuther:Landroid/widget/TextView;

.field public mBookCover:Landroid/widget/ImageView;

.field public mBookInfo:Landroid/widget/ImageButton;

.field private mBookLabel:Landroid/widget/TextView;

.field public mBookRibbon:Landroid/view/View;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mCoverPath:Ljava/lang/String;

.field private mDownloadURL:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/Long;

.field private mLoading:Z

.field private mLoadingTimes:I

.field private mPosition:I

.field private mSubcontent:Lcom/asus/reader/vibe2/SubcategoryContents;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mHandler:Landroid/os/Handler;

    .line 60
    iput-boolean v2, p0, Lcom/asus/reader/ui/BookItem;->mChecked:Z

    .line 64
    iput-object p1, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mHandler:Landroid/os/Handler;

    .line 60
    iput-boolean v2, p0, Lcom/asus/reader/ui/BookItem;->mChecked:Z

    .line 69
    iput-object p1, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private bindCommonView(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    .line 88
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/BookItem;->setChecked(Z)V

    .line 89
    const-string v3, "date_access"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    .line 90
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/ui/BookItem;->mId:Ljava/lang/Long;

    .line 91
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, title:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 93
    const-string v3, "_display_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_0
    const-string v3, "creator"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, auther:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookInfo:Landroid/widget/ImageButton;

    if-nez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookAuther:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    const-string v3, "cover_path"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, cover:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 106
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :goto_1
    return-void

    .line 100
    .end local v1           #cover:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookAuther:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    const v6, 0x7f070038

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    .restart local v1       #cover:Landroid/graphics/Bitmap;
    :cond_2
    iput-boolean v7, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 110
    iput v7, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    .line 111
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/asus/reader/util/Downloader;->loadFileImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public bindBookDelete(Landroid/database/Cursor;I)V
    .locals 3
    .parameter "c"
    .parameter "position"

    .prologue
    .line 115
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 117
    const v1, 0x7f0b0045

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iput p2, p0, Lcom/asus/reader/ui/BookItem;->mPosition:I

    .line 123
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/BookItem;->bindCommonView(Landroid/database/Cursor;)V

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindBookGrid(Landroid/database/Cursor;I)V
    .locals 5
    .parameter "c"
    .parameter "position"

    .prologue
    .line 126
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 127
    iput p2, p0, Lcom/asus/reader/ui/BookItem;->mPosition:I

    .line 128
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/BookItem;->bindCommonView(Landroid/database/Cursor;)V

    .line 130
    const v1, 0x7f0b0045

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-wide v1, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindBookList(Landroid/database/Cursor;I)V
    .locals 5
    .parameter "c"
    .parameter "position"

    .prologue
    const/4 v1, 0x4

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 142
    iput p2, p0, Lcom/asus/reader/ui/BookItem;->mPosition:I

    .line 143
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/BookItem;->bindCommonView(Landroid/database/Cursor;)V

    .line 146
    :try_start_0
    iget-wide v1, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindVibeGrid(Landroid/database/Cursor;I)V
    .locals 7
    .parameter "c"
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0, v5}, Lcom/asus/reader/ui/BookItem;->setChecked(Z)V

    .line 183
    iput p2, p0, Lcom/asus/reader/ui/BookItem;->mPosition:I

    .line 184
    const-string v3, "_contentname"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v3, 0x7f0b0045

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    const-string v3, "_coverpicuri"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 196
    iput-boolean v5, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 209
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 190
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, cover:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 202
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mBookCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 206
    :cond_1
    iput-boolean v6, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 207
    iput v6, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    .line 208
    iget-object v3, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bindVibeRecentActivities(Landroid/database/Cursor;I)V
    .locals 19
    .parameter "c"
    .parameter "position"

    .prologue
    .line 212
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 214
    const v16, 0x7f0b00bf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 216
    .local v15, vibeButton:Landroid/widget/Button;
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/ui/BookItem;->mPosition:I

    .line 217
    const-string v16, "_contentname"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 218
    .local v14, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mBookLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const-string v16, "_coverpicuri"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/BookItem;->mSubcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    .line 221
    const-string v16, "_paid"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, paid:Ljava/lang/String;
    const-string v16, "book_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, bookpath:Ljava/lang/String;
    const-string v16, "download_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_0

    .line 225
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    .line 226
    :cond_0
    const-string v16, "sync_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 227
    .local v12, syncTime:J
    const-string v16, "purchase_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 228
    .local v10, purchaseTime:J
    const-string v16, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/BookItem;->mId:Ljava/lang/Long;

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 231
    .local v7, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    const-string v16, "yyyy/MM/dd"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 233
    .local v3, date:Ljava/lang/CharSequence;
    const-string v16, "vibe"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "purchaseTime is:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const v16, 0x7f0b00be

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 237
    .local v9, purchaseDate:Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0700d5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    if-eqz v2, :cond_1

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 240
    const v16, 0x7f07003f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(I)V

    .line 247
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 248
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 251
    return-void

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mId:Ljava/lang/Long;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 243
    .local v5, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    move-object v4, v0

    .line 244
    .local v4, downloadurl:Ljava/lang/String;
    const v16, 0x7f07006a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public cancelLoading()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    .line 270
    iput v0, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    .line 271
    return-void
.end method

.method public checkAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public downloadVibe()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/reader/ReaderWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string v1, "weburl"

    iget-object v2, p0, Lcom/asus/reader/ui/BookItem;->mDownloadURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "cover_url"

    iget-object v2, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/ui/BookItem;->mSubcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ui/BookItem;->mSubcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ui/BookItem;->mSubcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    const-string v2, "vibeid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/asus/reader/ui/BookItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    :cond_0
    return-void
.end method

.method public getAccessTime()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/asus/reader/ui/BookItem;->mAccessTime:J

    return-wide v0
.end method

.method public getBookId()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/asus/reader/ui/BookItem;->mPosition:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/asus/reader/ui/BookItem;->mChecked:Z

    return v0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/reader/ui/BookItem;->mLoadingTimes:I

    .line 303
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->setTag(Ljava/lang/Object;)V

    .line 77
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookLabel:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookAuther:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookCover:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookRibbon:Landroid/view/View;

    .line 83
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookInfo:Landroid/widget/ImageButton;

    .line 85
    return-void
.end method

.method public onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "cover"
    .parameter "path"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/ui/BookItem;->mLoading:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/asus/reader/ui/BookItem$1;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/ui/BookItem$1;-><init>(Lcom/asus/reader/ui/BookItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    return-void
.end method

.method public resetCover()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/asus/reader/ui/BookItem;->mBookCover:Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/asus/reader/ui/BookItem;->mChecked:Z

    .line 314
    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/BookItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 315
    .local v0, checkIcon:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f020043

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f020042

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/asus/reader/ui/BookItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookItem;->setChecked(Z)V

    .line 328
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
