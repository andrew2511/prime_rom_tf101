.class public Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private caption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;

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


# direct methods
.method public constructor <init>(Landroid/sax/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->mImages:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v1, "caption"

    invoke-virtual {p1, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->caption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    .line 27
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    const-string v1, "byline"

    invoke-virtual {p1, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    .line 28
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 35
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 40
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Image;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->image:Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->caption:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->mImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->mImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImages()Ljava/util/List;
    .locals 1
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
    .line 57
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->mImages:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->mImages:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter "article"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 62
    return-void
.end method
