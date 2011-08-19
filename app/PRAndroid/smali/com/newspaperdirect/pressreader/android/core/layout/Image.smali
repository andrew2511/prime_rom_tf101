.class public Lcom/newspaperdirect/pressreader/android/core/layout/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;
    }
.end annotation


# instance fields
.field private mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mCaption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

.field private mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

.field private mRegionGuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Ljava/util/UUID;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mRegionGuid:Ljava/util/UUID;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mCaption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method


# virtual methods
.method public getArticle()Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object v0
.end method

.method public getByline()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mByline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getCaption()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mCaption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method

.method public getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    return-object v0
.end method

.method public getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v0

    return-object v0
.end method

.method public getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mRect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    return-object v0
.end method

.method public getRegionGuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->mRegionGuid:Ljava/util/UUID;

    return-object v0
.end method
