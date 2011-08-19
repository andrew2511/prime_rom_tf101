.class public Lcom/asus/reader/ui/VibeInfo;
.super Landroid/widget/RelativeLayout;
.source "VibeInfo.java"

# interfaces
.implements Lcom/asus/reader/util/Downloader$UpdateListener;


# instance fields
.field private loadinfo:Z

.field private mAddtoFavorite:Landroid/widget/Button;

.field public mBookCover:Landroid/widget/ImageView;

.field private mBookId:I

.field private mBookInfoAuther:Landroid/widget/TextView;

.field private mBookInfoIcon:Landroid/widget/Button;

.field private mBookInfoLabel:Landroid/widget/TextView;

.field private mBookPath:Ljava/lang/String;

.field private mBuy:Landroid/widget/Button;

.field private mContent:Lcom/asus/reader/vibe2/Content;

.field private mContext:Landroid/content/Context;

.field private mCover:Landroid/graphics/Bitmap;

.field private mCoverPath:Ljava/lang/String;

.field private mCoverPathBig:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIspaid:Z

.field private mLoadingTimes:I

.field private mPreviewUri:Landroid/net/Uri;

.field private mSubContent:Lcom/asus/reader/vibe2/SubcategoryContents;

.field private mTargetType:Ljava/lang/String;

.field private mTargetURL:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mTitle:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/asus/reader/ui/VibeInfo;->mIspaid:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookId:I

    .line 62
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    .line 67
    iput-boolean v1, p0, Lcom/asus/reader/ui/VibeInfo;->loadinfo:Z

    .line 69
    new-instance v0, Lcom/asus/reader/ui/VibeInfo$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/ui/VibeInfo$1;-><init>(Lcom/asus/reader/ui/VibeInfo;)V

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mTitle:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/asus/reader/ui/VibeInfo;->mIspaid:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookId:I

    .line 62
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    .line 67
    iput-boolean v1, p0, Lcom/asus/reader/ui/VibeInfo;->loadinfo:Z

    .line 69
    new-instance v0, Lcom/asus/reader/ui/VibeInfo$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/ui/VibeInfo$1;-><init>(Lcom/asus/reader/ui/VibeInfo;)V

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ui/VibeInfo;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mPreviewUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/ui/VibeInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/ui/VibeInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/asus/reader/ui/VibeInfo;->showFlashWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/asus/reader/ui/VibeInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/reader/ui/VibeInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private launchBrowser(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 362
    if-eqz p1, :cond_1

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLink(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 336
    if-nez p1, :cond_0

    move-object v0, v3

    .line 345
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 339
    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v4, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 343
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v3

    .line 344
    goto :goto_0

    .line 345
    :cond_3
    aget-object v0, p0, v4

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private showFlashWarning()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeUtil;->showFlashWarning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->getMainCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "magazine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->getMainCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Lcom/asus/reader/vibe2/SubcategoryContents;I)V
    .locals 16
    .parameter "c"
    .parameter "subcontent"
    .parameter "bookposition"

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 229
    .end local p2
    :goto_0
    return-void

    .line 120
    .restart local p2
    :cond_0
    const-string v13, "_id"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    long-to-int v7, v13

    .line 122
    .local v7, id:I
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mSubContent:Lcom/asus/reader/vibe2/SubcategoryContents;

    .line 123
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/VibeAgent;->getTempContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    if-eqz v13, :cond_4

    .line 125
    const v13, 0x7f0b00bd

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getAttributeString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getDownloadUri()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getDownloadMimetype()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    .line 134
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPaid()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getIsFree()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getBookPath()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mBookPath:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookPath:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_6

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookPath:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f07003f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/16 v14, 0x25

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getIsFree()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0700f2

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const v14, -0x777778

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 202
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getCoverPicUri()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    .line 205
    :cond_4
    const-string v13, "_contentname"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mTitle:Ljava/lang/String;

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0700d1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mSubContent:Lcom/asus/reader/vibe2/SubcategoryContents;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0700df

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mSubContent:Lcom/asus/reader/vibe2/SubcategoryContents;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, auther:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookInfoLabel:Landroid/widget/TextView;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mTitle:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookInfoAuther:Landroid/widget/TextView;

    move-object v13, v0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string v13, "_coverpicuri"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_f

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookCover:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 129
    .end local v2           #auther:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPremiumUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPremiumUri()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPremiumMimetype()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    goto/16 :goto_1

    .line 143
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/asus/reader/ui/VibeInfo;->launchBrowser(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f07003f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/16 v14, 0x26

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 146
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f07006a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 158
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPaid()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0700f4

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const v14, -0x777778

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3

    .line 165
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPreviewUri()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/asus/reader/ui/VibeInfo;->parseLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mPreviewUri:Landroid/net/Uri;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mPreviewUri:Landroid/net/Uri;

    move-object v13, v0

    if-eqz v13, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f070066

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/16 v14, 0x27

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPaymentURI()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 176
    const-wide v3, 0x7fefffffffffffffL

    .line 177
    .local v3, buyPrice:D
    const/4 v12, 0x0

    .line 178
    .local v12, txtPrice:Ljava/lang/String;
    const/4 v8, 0x0

    .line 179
    .local v8, money:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/asus/reader/vibe2/Content;->getPackages()Ljava/util/List;

    move-result-object v9

    .line 181
    .local v9, packages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_c

    .line 183
    :try_start_0
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/asus/reader/vibe2/Package;

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getPrice()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 184
    .local v10, price:D
    cmpl-double v13, v3, v10

    if-lez v13, :cond_a

    .line 185
    move-wide v3, v10

    .line 186
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/asus/reader/vibe2/Package;

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getPrice()Ljava/lang/String;

    move-result-object v12

    .line 187
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/asus/reader/vibe2/Package;

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getCurrency()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 181
    .end local v10           #price:D
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 171
    .end local v3           #buyPrice:D
    .end local v6           #i:I
    .end local v8           #money:Ljava/lang/String;
    .end local v9           #packages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    .end local v12           #txtPrice:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    .line 189
    .restart local v3       #buyPrice:D
    .restart local v6       #i:I
    .restart local v8       #money:Ljava/lang/String;
    .restart local v9       #packages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    .restart local v12       #txtPrice:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 190
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 193
    .end local v5           #e:Ljava/lang/Exception;
    :cond_c
    if-eqz v12, :cond_d

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 198
    .end local v3           #buyPrice:D
    .end local v6           #i:I
    .end local v8           #money:Ljava/lang/String;
    .end local v9           #packages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    .end local v12           #txtPrice:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    move-object v13, v0

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 215
    .restart local v2       #auther:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_11

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookCover:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    .line 222
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_12

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 228
    :cond_10
    :goto_9
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    goto/16 :goto_0

    .line 219
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mBookCover:Landroid/widget/ImageView;

    move-object v13, v0

    const v14, 0x7f020020

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 224
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_10

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_10

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public checkAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 357
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public downloadBook()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->launchBrowser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/reader/ReaderWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    const-string v1, "weburl"

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mTargetURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const-string v1, "cover_url"

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/Content;->getMainCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "vibeid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :cond_2
    const-string v1, "cover_url"

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public getBookPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->getPackages()Ljava/util/List;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaymentURI()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mContent:Lcom/asus/reader/vibe2/Content;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->getPaymentURI()[Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mPreviewUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubContent()Lcom/asus/reader/vibe2/SubcategoryContents;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mSubContent:Lcom/asus/reader/vibe2/SubcategoryContents;

    return-object v0
.end method

.method public getVibeInfoCover()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 323
    invoke-static {p0, p1}, Lcom/asus/reader/util/Downloader;->loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 324
    iget v0, p0, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/reader/ui/VibeInfo;->mLoadingTimes:I

    .line 326
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookInfoIcon:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookInfoLabel:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookInfoAuther:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBookCover:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mAddtoFavorite:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mBuy:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onUpdate(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "cover"
    .parameter "path"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPathBig:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/asus/reader/ui/VibeInfo$3;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/ui/VibeInfo$3;-><init>(Lcom/asus/reader/ui/VibeInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_1
    return-void
.end method

.method public openPreview()V
    .locals 4

    .prologue
    .line 265
    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo;->mPreviewUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, previewURL:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo;->mCoverPath:Ljava/lang/String;

    .line 267
    .local v0, coverURL:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/asus/reader/ui/VibeInfo$2;

    invoke-direct {v3, p0, v1}, Lcom/asus/reader/ui/VibeInfo$2;-><init>(Lcom/asus/reader/ui/VibeInfo;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method
