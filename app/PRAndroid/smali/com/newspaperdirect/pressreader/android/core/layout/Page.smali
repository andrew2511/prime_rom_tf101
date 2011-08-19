.class public Lcom/newspaperdirect/pressreader/android/core/layout/Page;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;,
        Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;
    }
.end annotation


# instance fields
.field private mArticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Article;",
            ">;"
        }
    .end annotation
.end field

.field private mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

.field private mLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Link;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNumber:I

.field private mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

.field private mSection:Ljava/lang/String;

.field private mZoomScales:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;-><init>()V

    return-void
.end method

.method public static LoadFromDb(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)Ljava/util/List;
    .locals 13
    .parameter "issue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Issue;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 104
    if-nez p0, :cond_0

    move-object v11, v12

    .line 137
    :goto_0
    return-object v11

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v11

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;->getPages(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    move-object v11, v12

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v11, v12

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v9, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Page;>;"
    const-string v11, "page_number"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 116
    .local v4, idxPageNumber:I
    const-string v11, "page_name"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 117
    .local v3, idxPageName:I
    const-string v11, "section_name"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, idxSectionName:I
    const-string v11, "width"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 119
    .local v6, idxWidth:I
    const-string v11, "height"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, idxHeight:I
    const-string v11, "zoom_scales"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 122
    .local v7, idxZoomScales:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v11, v9

    .line 137
    goto :goto_0

    .line 123
    :cond_3
    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-direct {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;-><init>()V

    .line 124
    .local v8, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    iput-object p0, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    .line 125
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    .line 126
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mName:Ljava/lang/String;

    .line 127
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mSection:Ljava/lang/String;

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0 0 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v11

    iput-object v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 129
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, zooms:[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [I

    iput-object v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    .line 131
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v11, v10

    if-lt v1, v11, :cond_4

    .line 133
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_4
    iget-object v11, v8, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    aget-object v12, v10, v1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mSection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Page;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mLinks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mArticles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArticles()Ljava/util/List;
    .locals 1
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
    .line 68
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mArticles:Ljava/util/List;

    return-object v0
.end method

.method public getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mLinks:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 73
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object v0, p0

    goto :goto_0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    return v0
.end method

.method public getPrevPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 3

    .prologue
    .line 77
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 78
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object v0, p0

    goto :goto_0
.end method

.method public getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mSection:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomScales()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    return-object v0
.end method

.method public getZoomScalesString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, flag:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mZoomScales:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 55
    :cond_0
    aget v2, v3, v5

    .line 56
    .local v2, scale:I
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 58
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public isFirstPage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastPage()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftPage()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 91
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isRightPage()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    rem-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setAsCurrent()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mIssue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->mNumber:I

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setCurrentPageNumber(I)V

    .line 101
    return-void
.end method
