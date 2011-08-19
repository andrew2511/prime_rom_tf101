.class Lcom/layar/SocialActionActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SocialActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SocialActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/SocialActionActivity;


# direct methods
.method constructor <init>(Lcom/layar/SocialActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    .line 88
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/SocialActionActivity$1;)Lcom/layar/SocialActionActivity;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 93
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 94
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v10, 0x1

    .line 100
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/layar/LayarInternalHandler;->parseInternalUri(Landroid/net/Uri;)I

    move-result v1

    .line 102
    .local v1, internalResult:I
    if-nez v1, :cond_0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v6

    .line 155
    :goto_0
    return v6

    .line 108
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/layar/data/social/SocialCommunicator;->getCallbackAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1}, Lcom/layar/LayarInternalHandler;->isFailedResult(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 114
    const-string v6, "responseCode"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, responseCodeString:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 116
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$1(Lcom/layar/SocialActionActivity;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lcom/layar/SocialActionActivity;->setResult(I)V

    .line 120
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, responseCode:I
    const/16 v6, 0x2f

    if-ne v2, v6, :cond_5

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "Email"

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$2(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    const/16 v7, 0xd

    invoke-virtual {v6, v7, v0}, Lcom/layar/SocialActionActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-virtual {v6}, Lcom/layar/SocialActionActivity;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    move v6, v10

    .line 131
    goto :goto_0

    .line 117
    .end local v2           #responseCode:I
    :cond_4
    const/16 v7, 0xc

    goto :goto_1

    .line 126
    .restart local v2       #responseCode:I
    :cond_5
    const/16 v6, 0x33

    if-ne v2, v6, :cond_3

    .line 127
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    new-instance v7, Landroid/content/Intent;

    .line 128
    iget-object v8, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    const-class v9, Lcom/layar/TwitterEmailActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const/16 v8, 0x62

    .line 127
    invoke-virtual {v6, v7, v8}, Lcom/layar/SocialActionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 132
    .end local v2           #responseCode:I
    .end local v3           #responseCodeString:Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Lcom/layar/LayarInternalHandler;->isSuccessResult(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 133
    const-string v6, "token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, token:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 135
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v6

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 136
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v6

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/layar/data/user/UserManager;->setConnectedToSocialNetwork(Ljava/lang/String;Z)V

    .line 137
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v6

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/layar/data/social/SocialManager;->setSocialsPrefered(Ljava/lang/String;Z)V

    .line 138
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    iget-object v7, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v7}, Lcom/layar/SocialActionActivity;->access$1(Lcom/layar/SocialActionActivity;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, -0x1

    :goto_3
    invoke-virtual {v6, v7}, Lcom/layar/SocialActionActivity;->setResult(I)V

    .line 140
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    invoke-virtual {v6}, Lcom/layar/SocialActionActivity;->finish()V

    move v6, v10

    .line 141
    goto/16 :goto_0

    .line 139
    :cond_7
    const/16 v7, 0xb

    goto :goto_3

    .line 144
    :cond_8
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 145
    iget-object v6, p0, Lcom/layar/SocialActionActivity$1;->this$0:Lcom/layar/SocialActionActivity;

    new-instance v7, Lcom/layar/SocialActionActivity$1$1;

    invoke-direct {v7, p0}, Lcom/layar/SocialActionActivity$1$1;-><init>(Lcom/layar/SocialActionActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/layar/SocialActionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v6, v10

    .line 151
    goto/16 :goto_0

    .line 155
    .end local v4           #token:Ljava/lang/String;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0
.end method
