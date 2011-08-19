.class Lcom/android/vending/TosActivity$TosLoadAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "TosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/TosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TosLoadAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/TosActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/TosActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    .line 253
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 5

    .prologue
    .line 260
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/vending/TosActivity;->access$100(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 262
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    invoke-virtual {v3}, Lcom/android/vending/TosActivity;->finish()V

    .line 295
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/vending/TosActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 266
    const-string v3, "Could not check for TOS"

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    invoke-static {v3}, Lcom/android/vending/TosActivity;->access$000(Lcom/android/vending/TosActivity;)V

    goto :goto_0

    .line 270
    :cond_1
    sget-object v3, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TOS_URL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v3}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    .local v1, tosUrl:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 272
    const-string v3, "Could not read TOS URL"

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    invoke-static {v3}, Lcom/android/vending/TosActivity;->access$000(Lcom/android/vending/TosActivity;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    invoke-static {v3}, Lcom/android/vending/TosActivity;->access$300(Lcom/android/vending/TosActivity;)Lcom/android/vending/TosActivity$TosWebViewClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/vending/TosActivity$TosWebViewClient;->setExpectedTosUrl(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    const v4, 0x7f0701bd

    invoke-virtual {v3, v4}, Lcom/android/vending/TosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, localeReplacement:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    const-string v3, "%locale%"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_3
    invoke-static {v1}, Lcom/android/vending/util/Util;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v3, p0, Lcom/android/vending/TosActivity$TosLoadAction;->this$0:Lcom/android/vending/TosActivity;

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 294
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method
