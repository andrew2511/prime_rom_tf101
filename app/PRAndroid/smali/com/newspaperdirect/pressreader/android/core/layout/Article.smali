.class public Lcom/newspaperdirect/pressreader/android/core/layout/Article;
.super Ljava/lang/Object;
.source "Article.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;
    }
.end annotation


# static fields
.field private static INPUT_BUFFER_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Article"


# instance fields
.field private mArticleId:Ljava/util/UUID;

.field private mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

.field private mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

.field private mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mCopyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mIdx:I

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

.field private mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

.field private mPageLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;

.field private mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;",
            ">;"
        }
    .end annotation
.end field

.field private mSubsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mSubtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mTextFileName:Ljava/lang/String;

.field private mTitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x400

    sput v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->INPUT_BUFFER_SIZE:I

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mRects:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mImages:Ljava/util/List;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIdx:I

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-object v0
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mPageLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;

    return-void
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mPageLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;

    return-object v0
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mTitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mSubtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mCopyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$17(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mSubsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$18(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mImages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/util/UUID;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleId:Ljava/util/UUID;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mTextFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mRects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-object v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-void
.end method


# virtual methods
.method public buildLinkedArticlesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    move-object v0, p0

    .line 246
    .local v0, cur:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    :goto_0
    iget-object v2, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    if-nez v2, :cond_2

    .line 251
    :cond_0
    move-object v0, p0

    .line 252
    :goto_1
    iget-object v2, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    if-nez v2, :cond_3

    .line 257
    :cond_1
    return-object v1

    .line 247
    :cond_2
    iget-object v2, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->getArticle()Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->getArticle()Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArticleLinkFrom()Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkFrom:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-object v0
.end method

.method public getArticleLinkTo()Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    return-object v0
.end method

.method public getArticleUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleId:Ljava/util/UUID;

    return-object v0
.end method

.method public getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getCopyright()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mCopyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getIdx()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIdx:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Image;>;"
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->buildLinkedArticlesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 239
    :goto_0
    return-object v3

    .line 234
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 235
    .local v0, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    iget-object v4, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mImages:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    .local v1, image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .end local v1           #image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    :cond_2
    move-object v3, v2

    .line 239
    goto :goto_0
.end method

.method public getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-object v0
.end method

.method public getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object v0
.end method

.method public getPageLinkTo()Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mPageLinkTo:Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;

    return-object v0
.end method

.method public getRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public getSubsection()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mSubsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getSubtitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mSubtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getTextLines()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, file:Ljava/util/zip/ZipFile;
    const/4 v5, 0x0

    .line 204
    .local v5, reader:Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v7, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getLayoutFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 207
    .end local v2           #file:Ljava/util/zip/ZipFile;
    .local v3, file:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->buildLinkedArticlesList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    move-object v6, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result v9

    if-nez v9, :cond_2

    .line 222
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 223
    :cond_0
    :goto_1
    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 225
    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    :cond_1
    :goto_2
    return-object v7

    .line 207
    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 208
    .local v0, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 209
    iget-object v10, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mTextFileName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 210
    sget v10, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->INPUT_BUFFER_SIZE:I

    .line 208
    invoke-direct {v5, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 212
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_3

    move-object v6, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 213
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 217
    .end local v0           #article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .line 218
    .end local v3           #file:Ljava/util/zip/ZipFile;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_7
    const-string v8, "Article"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error reading article text of issue = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", article = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mArticleId:Ljava/util/UUID;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mTitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 223
    :cond_4
    :goto_5
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    .line 221
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 222
    :goto_6
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 223
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 224
    :cond_6
    :goto_8
    throw v8

    .line 223
    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 222
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_5

    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_7

    .line 223
    :catch_5
    move-exception v9

    goto :goto_8

    .line 222
    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v8

    goto/16 :goto_1

    .line 221
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    goto :goto_6

    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 217
    :catch_7
    move-exception v8

    move-object v1, v8

    goto :goto_4

    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v8

    move-object v1, v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v2           #file:Ljava/util/zip/ZipFile;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/util/zip/ZipFile;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_7
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method

.method public getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->mTitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method
