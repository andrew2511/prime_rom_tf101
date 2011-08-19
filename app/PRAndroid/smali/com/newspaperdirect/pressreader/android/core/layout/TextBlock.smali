.class public Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
.super Ljava/lang/Object;
.source "TextBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;
    }
.end annotation


# instance fields
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

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mRects:Ljava/util/List;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mRects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
    .line 56
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->mText:Ljava/lang/String;

    return-object v0
.end method
