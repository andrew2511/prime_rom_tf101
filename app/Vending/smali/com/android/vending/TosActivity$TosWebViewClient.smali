.class Lcom/android/vending/TosActivity$TosWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/TosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TosWebViewClient"
.end annotation


# instance fields
.field private final mAcceptButton:Landroid/widget/Button;

.field private mExpectedTosUrl:Ljava/lang/String;

.field private final mProgress:Landroid/view/View;

.field private final mTosDisplayView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/TosActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/TosActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter "progress"
    .parameter "tosDisplayView"
    .parameter "acceptButton"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->this$0:Lcom/android/vending/TosActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mProgress:Landroid/view/View;

    .line 169
    iput-object p3, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mTosDisplayView:Landroid/view/View;

    .line 170
    iput-object p4, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mAcceptButton:Landroid/widget/Button;

    .line 171
    return-void
.end method

.method private urlMatchesExpected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "expectedTosUrl"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%locale%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, expectedSplits:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, urlToMatch:Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 223
    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 229
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 223
    goto :goto_0

    .line 225
    :cond_1
    array-length v2, v0

    if-ne v2, v5, :cond_2

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 228
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected splits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move v2, v4

    .line 229
    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mExpectedTosUrl:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/vending/TosActivity$TosWebViewClient;->urlMatchesExpected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TOS_MISSING_URL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v1}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, forwardToUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mExpectedTosUrl:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->this$0:Lcom/android/vending/TosActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/TosActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->this$0:Lcom/android/vending/TosActivity;

    invoke-virtual {v1}, Lcom/android/vending/TosActivity;->finish()V

    .line 207
    .end local v0           #forwardToUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mTosDisplayView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mAcceptButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mProgress:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->this$0:Lcom/android/vending/TosActivity;

    invoke-static {v0}, Lcom/android/vending/TosActivity;->access$000(Lcom/android/vending/TosActivity;)V

    .line 187
    return-void
.end method

.method public setExpectedTosUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "expectedTosUrl"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/vending/TosActivity$TosWebViewClient;->mExpectedTosUrl:Ljava/lang/String;

    .line 235
    return-void
.end method
