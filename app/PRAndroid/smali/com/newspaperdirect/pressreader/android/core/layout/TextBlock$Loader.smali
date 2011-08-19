.class public Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
.super Ljava/lang/Object;
.source "TextBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;


# direct methods
.method public constructor <init>(Landroid/sax/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 23
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 28
    const-string v0, "rect"

    invoke-virtual {p1, v0}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    return-object v0
.end method


# virtual methods
.method public getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->mTextBlock:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    .line 38
    return-void
.end method
