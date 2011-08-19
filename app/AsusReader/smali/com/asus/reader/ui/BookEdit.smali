.class public Lcom/asus/reader/ui/BookEdit;
.super Landroid/widget/RelativeLayout;
.source "BookEdit.java"


# instance fields
.field private mAccessTime:J

.field private mBookCover:Landroid/widget/ImageView;

.field private mBookId:J

.field private mBookInfoIcon:Landroid/widget/Button;

.field public mBookRibbon:Landroid/view/View;

.field private mEditAuther:Landroid/widget/EditText;

.field private mEditDescription:Landroid/widget/EditText;

.field private mEditTitle:Landroid/widget/EditText;

.field private mId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookEdit;->mAccessTime:J

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/reader/ui/BookEdit;->mAccessTime:J

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    .line 41
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;I)V
    .locals 11
    .parameter "c"
    .parameter "bookposition"

    .prologue
    .line 55
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mId:J

    .line 56
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 57
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mId:J

    iput-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    .line 75
    :cond_0
    :goto_0
    const-string v7, "date_access"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mAccessTime:J

    .line 76
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, title:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 78
    const-string v7, "_display_name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    :cond_1
    const-string v7, "creator"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, auther:Ljava/lang/String;
    const-string v7, "description"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, description:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mEditAuther:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    if-eqz v2, :cond_2

    .line 86
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mEditDescription:Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    const-string v7, "cover_path"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, coverPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 91
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookCover:Landroid/widget/ImageView;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 93
    :cond_3
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mAccessTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 94
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookRibbon:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :goto_1
    return-void

    .line 58
    .end local v0           #auther:Ljava/lang/String;
    .end local v1           #coverPath:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_4
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mId:J

    iget-wide v9, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, found:Z
    :cond_5
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 63
    .local v4, temp_id:J
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    cmp-long v7, v4, v7

    if-nez v7, :cond_6

    .line 64
    iget-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookId:J

    iput-wide v7, p0, Lcom/asus/reader/ui/BookEdit;->mId:J

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    .line 66
    const/4 v3, 0x1

    .line 70
    :goto_2
    if-nez v3, :cond_0

    .line 71
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 69
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 96
    .end local v3           #found:Z
    .end local v4           #temp_id:J
    .restart local v0       #auther:Ljava/lang/String;
    .restart local v1       #coverPath:Ljava/lang/String;
    .restart local v2       #description:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/asus/reader/ui/BookEdit;->mBookRibbon:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAuther()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditAuther:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/asus/reader/ui/BookEdit;->mId:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mBookInfoIcon:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditTitle:Landroid/widget/EditText;

    .line 48
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditAuther:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mEditDescription:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mBookCover:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/BookEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/BookEdit;->mBookRibbon:Landroid/view/View;

    .line 52
    return-void
.end method
