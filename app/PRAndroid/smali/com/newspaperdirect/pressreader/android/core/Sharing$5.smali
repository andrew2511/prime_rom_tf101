.class Lcom/newspaperdirect/pressreader/android/core/Sharing$5;
.super Landroid/os/AsyncTask;
.source "Sharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;->share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V
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

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Landroid/app/ProgressDialog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$mProgressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 229
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;)Lcom/newspaperdirect/pressreader/android/core/Sharing;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    .line 234
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v6

    .local v6, rightPageNumber:I
    move v3, v6

    .line 239
    .local v3, leftPageNumber:I
    :goto_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v4

    .line 240
    .local v4, mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v5}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 241
    .local v5, result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v7, "create-bookmark"

    invoke-direct {v2, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 242
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

    .line 243
    const-string v8, "<current-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

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

    .line 244
    const-string v8, "<left-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</left-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 245
    const-string v8, "<right-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</right-page-number>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    const-string v8, "<which-pages>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

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

    .line 247
    const-string v8, "<article-id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getArticleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</article-id>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-virtual {v2, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 249
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v7

    const-string v8, "bookmark-link"

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;

    invoke-direct {v8, p0, v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 256
    :try_start_0
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 257
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

    .line 287
    :goto_2
    return-object v7

    .line 236
    .end local v2           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v3           #leftPageNumber:I
    .end local v4           #mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v5           #result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    .end local v6           #rightPageNumber:I
    .restart local p0
    :cond_1
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLeftPage()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    move v3, v7

    .line 237
    .restart local v3       #leftPageNumber:I
    :goto_3
    add-int/lit8 v6, v3, 0x1

    .restart local v6       #rightPageNumber:I
    goto/16 :goto_0

    .line 236
    .end local v3           #leftPageNumber:I
    .end local v6           #rightPageNumber:I
    :cond_2
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v7

    sub-int/2addr v7, v9

    move v3, v7

    goto :goto_3

    .restart local v2       #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .restart local v3       #leftPageNumber:I
    .restart local v4       #mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .restart local v5       #result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    .restart local v6       #rightPageNumber:I
    :cond_3
    move v8, v9

    .line 246
    goto/16 :goto_1

    .line 259
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 260
    .local v1, e:Ljava/net/SocketTimeoutException;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v8, p0, v9}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 287
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 280
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 281
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_4

    .line 284
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 285
    .local v1, e:Ljava/lang/AssertionError;
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    :cond_2
    if-eqz p1, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
