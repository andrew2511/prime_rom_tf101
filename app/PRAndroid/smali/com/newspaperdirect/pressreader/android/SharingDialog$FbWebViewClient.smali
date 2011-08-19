.class Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SharingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SharingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/SharingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/SharingDialog;Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;-><init>(Lcom/newspaperdirect/pressreader/android/SharingDialog;)V

    return-void
.end method


# virtual methods
.method public decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, 0x0

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, params:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 102
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, array:[Ljava/lang/String;
    array-length v4, v0

    move v5, v8

    :goto_0
    if-lt v5, v4, :cond_1

    .line 109
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 103
    .restart local v0       #array:[Ljava/lang/String;
    :cond_1
    aget-object v1, v0, v5

    .line 104
    .local v1, parameter:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, v:[Ljava/lang/String;
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$1(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 164
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$1(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 158
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onError(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->dismiss()V

    .line 152
    return-void
.end method

.method public parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "url"

    .prologue
    .line 88
    const-string v3, "fbconnect"

    const-string v4, "http"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 90
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, u:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 95
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #u:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 95
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 114
    const-string v2, "fbconnect://success"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {p0, p2}, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 117
    .local v1, values:Landroid/os/Bundle;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, error:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 119
    const-string v2, "error_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    if-nez v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->dismiss()V

    move v2, v6

    .line 143
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :goto_1
    return v2

    .line 124
    .restart local v0       #error:Ljava/lang/String;
    .restart local v1       #values:Landroid/os/Bundle;
    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onCancel()V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :cond_4
    const-string v2, "fbconnect://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;->onCancel()V

    .line 135
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->dismiss()V

    move v2, v6

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    const-string v2, "touch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    const/4 v2, 0x0

    goto :goto_1

    .line 141
    :cond_6
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;->this$0:Lcom/newspaperdirect/pressreader/android/SharingDialog;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 142
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v6

    .line 143
    goto :goto_1
.end method
