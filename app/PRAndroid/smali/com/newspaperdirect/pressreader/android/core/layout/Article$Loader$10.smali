.class Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/sax/EndElementListener;


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

.field private final synthetic val$byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private final synthetic val$copyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private final synthetic val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

.field private final synthetic val$subsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private final synthetic val$subtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

.field private final synthetic val$title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$copyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    iput-object p5, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    iput-object p6, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    iput-object p7, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$13(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 97
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 98
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$14(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 99
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subtitle:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 100
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$copyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$15(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 101
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$copyright:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 102
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$16(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 103
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$byline:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 104
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$17(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 105
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$subsection:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 106
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$18(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->reset()V

    .line 108
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Ljava/util/List;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$10;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
