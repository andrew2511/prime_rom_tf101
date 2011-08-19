.class Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;
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

.field private final synthetic val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

.field private final synthetic val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;I)V

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article;I)V

    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 42
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    const-string v1, "AID"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/util/UUID;)V

    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->addArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 44
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->val$images:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->setArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 45
    return-void
.end method
