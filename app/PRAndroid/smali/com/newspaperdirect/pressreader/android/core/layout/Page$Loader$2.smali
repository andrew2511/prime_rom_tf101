.class Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

.field private final synthetic val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

.field private final synthetic val$links:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$links:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$links:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$8(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$links:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->reset()V

    .line 167
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->getArticles()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$9(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->reset()V

    .line 169
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Ljava/util/List;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
