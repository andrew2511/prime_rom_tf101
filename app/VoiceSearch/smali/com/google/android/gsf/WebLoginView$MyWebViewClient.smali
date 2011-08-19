.class Lcom/google/android/gsf/WebLoginView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/WebLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field private mOAuthDone:Z

.field private mOAuthUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/WebLoginView;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/WebLoginView;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/WebLoginView;Lcom/google/android/gsf/WebLoginView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;-><init>(Lcom/google/android/gsf/WebLoginView;)V

    return-void
.end method

.method private hideWebUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    return-void
.end method

.method private maybeFinish(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 306
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 303
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0, v1}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 304
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 305
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginCompleted(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 267
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web view ingoring loaded url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not finished at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$800(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    const-string v1, ""

    .line 278
    const-string v2, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v2}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v1}, Lcom/google/android/gsf/WebLoginView;->access$900(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$1000(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto/16 :goto_0

    .line 286
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_3
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v2}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " - loading"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 215
    :cond_1
    const-string v2, " - not loading"

    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 234
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 235
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->HttpError:Lcom/google/android/gsf/WebLoginView$Error;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "WebLoginView"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->TooManyRedirects:Lcom/google/android/gsf/WebLoginView$Error;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 249
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 196
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web view is loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//gls/callback?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We will handle oauth:gls URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    .line 202
    iput-object p2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
