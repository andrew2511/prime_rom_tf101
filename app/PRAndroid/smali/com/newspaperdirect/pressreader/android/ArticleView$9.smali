.class Lcom/newspaperdirect/pressreader/android/ArticleView$9;
.super Ljava/lang/Thread;
.source "ArticleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->listenToArticle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 768
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;
    .locals 1
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 770
    const/16 v2, -0x10

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 771
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v2, "get-article-audio-url"

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    const-string v2, "<issueid>%s</issueid><articleid>%s</articleid>"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$14(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$15(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getArticleId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 773
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v2

    const-string v3, "article-audio-url"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 839
    :try_start_0
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 860
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 862
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 864
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
