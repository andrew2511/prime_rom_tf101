.class public Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
    .locals 3
    .parameter "issue"
    .parameter "element"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->mPages:Ljava/util/List;

    .line 146
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    const-string v2, "link"

    invoke-virtual {p2, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;-><init>(Landroid/sax/Element;)V

    .line 147
    .local v1, links:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    const-string v2, "article"

    invoke-virtual {p2, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V

    .line 148
    .local v0, articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {p2, v2}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 163
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V

    invoke-virtual {p2, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 173
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->mPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->mPages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->mPages:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->mPages:Ljava/util/List;

    .line 177
    return-void
.end method
