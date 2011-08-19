.class Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$7;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$7;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v0

    .line 79
    .local v0, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$7;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$10(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/layout/CrossArticleLink;->setRect(Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V

    .line 80
    :cond_0
    return-void
.end method
