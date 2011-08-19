.class public Lcom/asus/reader/ui/BookInfo;
.super Landroid/widget/RelativeLayout;
.source "BookInfo.java"


# instance fields
.field private mAccessTime:J

.field public mBookCover:Landroid/widget/ImageView;

.field private mBookDescription:Landroid/widget/TextView;

.field private mBookId:J

.field private mBookInfoAuther:Landroid/widget/TextView;

.field private mBookInfoIcon:Landroid/widget/Button;

.field private mBookInfoLabel:Landroid/widget/TextView;

.field public mBookRibbon:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookInfo;->mAccessTime:J

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    .line 35
    iput-object p1, p0, Lcom/asus/reader/ui/BookInfo;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookInfo;->mAccessTime:J

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    .line 40
    iput-object p1, p0, Lcom/asus/reader/ui/BookInfo;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;I)V
    .locals 14
    .parameter "c"
    .parameter "bookposition"

    .prologue
    .line 56
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 58
    .local v5, id:J
    iget-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 59
    iput-wide v5, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    .line 76
    :cond_0
    :goto_0
    const-string v10, "date_access"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mAccessTime:J

    .line 78
    const-string v10, "title"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, title:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 80
    const-string v10, "_display_name"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    :cond_1
    const-string v10, "creator"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, auther:Ljava/lang/String;
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookInfoLabel:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookInfoAuther:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/asus/reader/ui/BookInfo;->mContext:Landroid/content/Context;

    const v13, 0x7f070038

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v10, "description"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, des:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookDescription:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    const-string v10, "cover_path"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, coverPath:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 94
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, coverFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 96
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookCover:Landroid/widget/ImageView;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 102
    .end local v1           #coverFile:Ljava/io/File;
    :cond_3
    :goto_1
    iget-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mAccessTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 103
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookRibbon:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_2
    return-void

    .line 60
    .end local v0           #auther:Ljava/lang/String;
    .end local v2           #coverPath:Ljava/lang/String;
    .end local v3           #des:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_4
    iget-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    cmp-long v10, v5, v10

    if-eqz v10, :cond_0

    iget-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 61
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    const/4 v4, 0x0

    .line 64
    .local v4, found:Z
    :cond_5
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 65
    .local v7, temp_id:J
    iget-wide v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookId:J

    cmp-long v10, v7, v10

    if-nez v10, :cond_6

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    .line 67
    const/4 v4, 0x1

    .line 71
    :goto_3
    if-nez v4, :cond_0

    .line 72
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 70
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    .line 98
    .end local v4           #found:Z
    .end local v7           #temp_id:J
    .restart local v0       #auther:Ljava/lang/String;
    .restart local v1       #coverFile:Ljava/io/File;
    .restart local v2       #coverPath:Ljava/lang/String;
    .restart local v3       #des:Ljava/lang/String;
    .restart local v9       #title:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookCover:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 105
    .end local v1           #coverFile:Ljava/io/File;
    :cond_8
    iget-object v10, p0, Lcom/asus/reader/ui/BookInfo;->mBookRibbon:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookInfoIcon:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookInfoLabel:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookInfoAuther:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookCover:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookRibbon:Landroid/view/View;

    .line 52
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookInfo;->mBookDescription:Landroid/widget/TextView;

    .line 53
    return-void
.end method
