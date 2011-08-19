.class Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/WebAddAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/WebAddAccountView;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/WebAddAccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/WebAddAccountView;Lcom/google/android/gsf/login/WebAddAccountView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;-><init>(Lcom/google/android/gsf/login/WebAddAccountView;)V

    return-void
.end method

.method private checkForFinalPage(Ljava/lang/String;)I
    .locals 4
    .parameter "url"

    .prologue
    const/4 v2, 0x2

    .line 215
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$400(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/login/WebAddAccountSession;->onPageStart(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, retval:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 217
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForFinalPage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gsf/login/WebAddAccountView$Callback;->onInteractivityCompleted()V

    .line 230
    :cond_1
    :goto_0
    return v0

    .line 221
    :cond_2
    if-ne v0, v2, :cond_3

    .line 222
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForFinalPage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - REDIR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_3
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForFinalPage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - LOAD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$602(Lcom/google/android/gsf/login/WebAddAccountView;Z)Z

    .line 204
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gsf/login/WebAddAccountView$Callback;->onPageLoadFinished(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v4, 0x2

    .line 169
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v3}, Lcom/google/android/gsf/login/WebAddAccountView;->access$500(Lcom/google/android/gsf/login/WebAddAccountView;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " - loading"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v2}, Lcom/google/android/gsf/login/WebAddAccountView;->access$600(Lcom/google/android/gsf/login/WebAddAccountView;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gsf/login/WebAddAccountView$Callback;->onPageLoadStart(Z)V

    .line 173
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->checkForFinalPage(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, status:I
    if-ne v0, v4, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 176
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$400(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/login/WebAddAccountSession;->getRedirUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 181
    :cond_2
    return-void

    .line 170
    .end local v0           #status:I
    :cond_3
    const-string v3, " - not loading"

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v4, 0x0

    .line 186
    const-string v0, "GoogleLoginService"

    const-string v1, "onReceivedError: errorCode %d, description: %s, url: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0, v4}, Lcom/google/android/gsf/login/WebAddAccountView;->access$502(Lcom/google/android/gsf/login/WebAddAccountView;Z)Z

    .line 190
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$600(Lcom/google/android/gsf/login/WebAddAccountView;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gsf/login/WebAddAccountView$Error;->ConnectionError:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    :goto_0
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gsf/login/WebAddAccountView$Callback;->onWebLoginError(Lcom/google/android/gsf/login/WebAddAccountView$Error;ILjava/lang/String;)V

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 190
    :cond_0
    sget-object v1, Lcom/google/android/gsf/login/WebAddAccountView$Error;->HttpError:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 197
    const-string v0, "GoogleLoginService"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/login/WebAddAccountView$Error;->TooManyRedirects:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gsf/login/WebAddAccountView$Callback;->onWebLoginError(Lcom/google/android/gsf/login/WebAddAccountView$Error;ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 153
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Web view is loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->checkForFinalPage(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, status:I
    if-ne v0, v5, :cond_1

    .line 158
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v1}, Lcom/google/android/gsf/login/WebAddAccountView;->access$400(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/login/WebAddAccountSession;->getRedirUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v1, v4

    .line 165
    :goto_0
    return v1

    .line 161
    :cond_1
    if-ne v0, v4, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    move v1, v4

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
