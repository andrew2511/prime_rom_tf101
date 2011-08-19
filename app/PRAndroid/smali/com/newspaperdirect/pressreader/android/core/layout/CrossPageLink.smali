.class public Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;
.super Ljava/lang/Object;
.source "CrossPageLink.java"


# instance fields
.field private mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private mPageNumber:I

.field private mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article;I)V
    .locals 0
    .parameter "parent"
    .parameter "pageNumber"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 10
    iput p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mPageNumber:I

    .line 11
    return-void
.end method


# virtual methods
.method public getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mPageNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mPageNumber:I

    return v0
.end method

.method public getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-object v0
.end method

.method public setRect(Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 15
    return-void
.end method
