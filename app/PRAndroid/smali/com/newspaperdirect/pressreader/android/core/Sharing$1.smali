.class Lcom/newspaperdirect/pressreader/android/core/Sharing$1;
.super Landroid/os/AsyncTask;
.source "Sharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;->sendText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Landroid/app/ProgressDialog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$mProgressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$context:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing$1;)Lcom/newspaperdirect/pressreader/android/core/Sharing;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    .line 65
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v6

    .local v6, rightPageNumber:I
    move v3, v6

    .line 70
    .local v3, leftPageNumber:I
    :goto_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v4

    .line 71
    .local v4, mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v5}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 72
    .local v5, result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v7, "share"

    invoke-direct {v2, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<cid>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</cid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 74
    const-string v8, "<current-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</current-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 75
    const-string v8, "<left-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</left-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    const-string v8, "<right-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</right-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 77
    const-string v8, "<which-pages>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isRightPage()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</which-pages>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 78
    const-string v8, "<article-id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getArticleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</article-id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 79
    const-string v8, "<issue-date>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "yyyy-MM-dd"

    invoke-virtual {v4, v8}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</issue-date>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 80
    const-string v8, "<share-type>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$1(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v8

    sget-object v9, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v8, v9, :cond_4

    const-string v8, "facebook"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</share-type>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 81
    const-string v8, "<access-token>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, ""

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</access-token>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 82
    const-string v8, "<access-token-secret>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$3(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, ""

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</access-token-secret>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    const-string v8, "<message>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$4(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</message>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v2, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 85
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v7

    const-string v8, "result-code"

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/Sharing$1$1;

    invoke-direct {v8, p0, v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$1;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 91
    :try_start_0
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 92
    iget-object v7, v5, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object p0, v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2

    .end local p0
    move-object v7, p0

    .line 120
    :goto_5
    return-object v7

    .line 67
    .end local v2           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v3           #leftPageNumber:I
    .end local v4           #mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v5           #result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    .end local v6           #rightPageNumber:I
    .restart local p0
    :cond_1
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLeftPage()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    move v3, v7

    .line 68
    .restart local v3       #leftPageNumber:I
    :goto_6
    add-int/lit8 v6, v3, 0x1

    .restart local v6       #rightPageNumber:I
    goto/16 :goto_0

    .line 67
    .end local v3           #leftPageNumber:I
    .end local v6           #rightPageNumber:I
    :cond_2
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    sub-int/2addr v7, v9

    move v3, v7

    goto :goto_6

    .restart local v2       #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .restart local v3       #leftPageNumber:I
    .restart local v4       #mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .restart local v5       #result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    .restart local v6       #rightPageNumber:I
    :cond_3
    move v8, v9

    .line 77
    goto/16 :goto_1

    .line 80
    :cond_4
    const-string v8, "twitter"

    goto/16 :goto_2

    .line 81
    :cond_5
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 82
    :cond_6
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$3(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 94
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 95
    .local v1, e:Ljava/net/SocketTimeoutException;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/Sharing$1$2;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v8, p0, v9}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$1;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :goto_7
    const/4 v7, 0x0

    goto :goto_5

    .line 113
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_7

    .line 117
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 118
    .local v1, e:Ljava/lang/AssertionError;
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 129
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$context:Landroid/content/Context;

    const-string v1, "Post sent"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "invalid_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->val$context:Landroid/content/Context;

    const-string v1, "Error during post"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$6(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V

    goto :goto_0
.end method
