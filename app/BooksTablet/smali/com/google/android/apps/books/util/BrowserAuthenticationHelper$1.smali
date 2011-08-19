.class Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;
.super Landroid/os/AsyncTask;
.source "BrowserAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V
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
.field private final mActivityInstance:Landroid/app/Activity;

.field final synthetic this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

.field final synthetic val$lsid:Ljava/lang/String;

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    iput-object p2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->val$sid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->val$lsid:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v0}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$000(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->mActivityInstance:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11
    .parameter "args"

    .prologue
    const-string v10, "BrowserAuthenticationHelper"

    .line 152
    invoke-static {}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$300()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "SID"

    iget-object v9, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->val$sid:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "LSID"

    iget-object v9, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->val$lsid:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    .line 156
    .local v0, booksContext:Lcom/google/android/apps/books/common/BooksContext;
    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v2

    .line 157
    .local v2, getter:Lcom/google/android/apps/books/net/ResponseGetter;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/google/android/apps/books/app/BooksApplication$AccountParams;->setAccountOptional(Lorg/apache/http/params/HttpParams;Z)V

    .line 160
    const/4 v5, 0x0

    .line 162
    .local v5, result:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_0
    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-virtual {v2, v3, v7, v8}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 164
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 171
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v5

    .line 165
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 166
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "BrowserAuthenticationHelper"

    const-string v7, "protocol error while acquiring token: "

    invoke-static {v10, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 168
    .local v1, e:Ljava/io/IOException;
    const-string v7, "BrowserAuthenticationHelper"

    const-string v7, "IO error while acquiring token: "

    invoke-static {v10, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$400(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$500(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Landroid/content/Intent;Ljava/lang/Exception;)V

    .line 183
    return-void

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method
