.class public Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;
.super Ljava/lang/Object;
.source "Article.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Article;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private idx:I

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

.field private page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
    .locals 9
    .parameter "issue"
    .parameter "element"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->mArticles:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->idx:I

    .line 30
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    .line 31
    .local v2, title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v0, "subtitle"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    .line 32
    .local v3, subtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v0, "copyright"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    .line 33
    .local v4, copyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v0, "byline"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    .line 34
    .local v5, byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v0, "subsection"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    .line 35
    .local v6, subsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    const-string v0, "image"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;-><init>(Landroid/sax/Element;)V

    .line 36
    .local v7, images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;

    invoke-direct {v0, p0, p1, v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V

    invoke-virtual {p2, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 47
    const-string v0, "text"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 52
    const-string v0, "rect"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 58
    const-string v0, "toCrossLinkArticle"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    .line 59
    .local v8, elm:Landroid/sax/Element;
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$4;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v8, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 64
    const-string v0, "rect"

    invoke-virtual {v8, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$5;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 70
    const-string v0, "fromCrossLinkArticle"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    .line 71
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$6;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v8, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 76
    const-string v0, "rect"

    invoke-virtual {v8, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$7;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$7;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 82
    const-string v0, "toCrossLinkPage"

    invoke-virtual {p2, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    .line 83
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v8, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 88
    const-string v0, "rect"

    invoke-virtual {v8, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$9;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$9;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 94
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V

    invoke-virtual {p2, v0}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->idx:I

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->idx:I

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->mArticles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->mArticles:Ljava/util/List;

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
    .line 124
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->mArticles:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->mArticles:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->idx:I

    .line 121
    return-void
.end method

.method public setPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 116
    return-void
.end method
