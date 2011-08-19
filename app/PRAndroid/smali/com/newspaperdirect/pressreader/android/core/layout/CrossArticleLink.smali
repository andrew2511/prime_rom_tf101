.class public Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;
.super Ljava/lang/Object;
.source "CrossArticleLink.java"


# instance fields
.field private mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private mArticleId:Ljava/util/UUID;

.field private mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/util/UUID;)V
    .locals 0
    .parameter "parent"
    .parameter "articleId"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 12
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticleId:Ljava/util/UUID;

    .line 13
    return-void
.end method


# virtual methods
.method public getArticle()Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticleId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getArticle(Ljava/util/UUID;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    goto :goto_0
.end method

.method public getArticleUid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mArticleId:Ljava/util/UUID;

    return-object v0
.end method

.method public getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-object v0
.end method

.method public setRect(Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 17
    return-void
.end method
