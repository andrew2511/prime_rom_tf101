.class public Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private link:Lcom/newspaperdirect/pressreader/android/core/layout/Link;

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


# direct methods
.method public constructor <init>(Landroid/sax/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->mLinks:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 27
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 33
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Link;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->link:Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Link;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->link:Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->mLinks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->mLinks:Ljava/util/List;

    return-void
.end method


# virtual methods
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
    .line 46
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->mLinks:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->mLinks:Ljava/util/List;

    .line 43
    return-void
.end method
