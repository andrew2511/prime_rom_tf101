.class Lcom/google/android/gm/HtmlConversationActivity$2;
.super Ljava/lang/Thread;
.source "HtmlConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity$2;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 230
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity$2;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationActivity;->access$300(Lcom/google/android/gm/HtmlConversationActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, uri:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity$2;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationActivity;->access$300(Lcom/google/android/gm/HtmlConversationActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, authToken:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity$2;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationActivity;->access$300(Lcom/google/android/gm/HtmlConversationActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Urls;->getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, gmailCookie:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity$2;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v4}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 234
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #gmailCookie:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 237
    .local v1, e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while setting cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v1           #e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 239
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while setting cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
