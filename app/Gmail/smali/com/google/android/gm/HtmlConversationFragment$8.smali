.class Lcom/google/android/gm/HtmlConversationFragment$8;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$8;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment$8;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2507
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2509
    .local v4, result:Landroid/os/Bundle;
    const-string v5, "authtoken"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2510
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2511
    const-string v5, "Gmail"

    const-string v6, "Failed to set cookie: unable to get auth token"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    .end local v0           #authToken:Ljava/lang/String;
    .end local v4           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2514
    .restart local v0       #authToken:Ljava/lang/String;
    .restart local v4       #result:Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$8;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gm/provider/Urls;->getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2516
    .local v3, gmailCookie:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$8;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 2518
    .local v1, csm:Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$8;->val$uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2521
    .end local v0           #authToken:Ljava/lang/String;
    .end local v1           #csm:Landroid/webkit/CookieSyncManager;
    .end local v3           #gmailCookie:Ljava/lang/String;
    .end local v4           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2522
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Gmail"

    const-string v6, "Failed to set cookie: unhandled exception trying to get auth token"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
