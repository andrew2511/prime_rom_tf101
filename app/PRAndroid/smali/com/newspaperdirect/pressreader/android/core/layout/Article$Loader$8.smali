.class Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$8;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v2

    const-string v3, "PageNo"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article;I)V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$11(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/CrossPageLink;)V

    .line 86
    return-void
.end method
