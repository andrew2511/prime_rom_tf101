.class Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;
.super Landroid/os/AsyncTask;
.source "BrowserAddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserAddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetRequestToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;-><init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    .line 294
    .local v0, context:Lcom/google/android/gsf/login/BrowserAddAccountActivity;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    iget-object v8, v8, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v9, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v9, v12}, Lcom/google/android/gsf/login/BackendStub;->getOAuthRequestTokenSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v7

    .line 296
    .local v7, status:Lcom/google/android/gsf/login/BackendStub$Status;
    sget-object v8, Lcom/google/android/gsf/login/BrowserAddAccountActivity$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 325
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    iget-object v9, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const v10, 0x7f080022

    invoke-virtual {v9, v10}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const v11, 0x7f080023

    invoke-virtual {v10, v11}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 329
    .local v1, hardErrorIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const/4 v9, 0x2

    invoke-virtual {v8, v1, v9}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    .end local v1           #hardErrorIntent:Landroid/content/Intent;
    :goto_0
    return-object v12

    .line 298
    :pswitch_0
    const-string v8, "GoogleLoginService"

    const-string v9, "got success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v8, Lcom/google/android/gsf/login/BaseActivity;->mUserData:Ljava/util/HashMap;

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v9}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    .local v4, requestToken:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->OAUTH_START_URL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&oauth_token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, startUrl:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v8}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$100(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&Email="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v9}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$100(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    :cond_0
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v8}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$200(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Lcom/google/android/gsf/login/WebAddAccountSession;

    move-result-object v8

    const-string v9, "oauth://gls/callback"

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/login/WebAddAccountSession;->setContinueUrl(Ljava/lang/String;)V

    .line 308
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v8}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$300(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Lcom/google/android/gsf/login/WebAddAccountView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gsf/login/WebAddAccountView;->login(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v4           #requestToken:Ljava/lang/String;
    .end local v6           #startUrl:Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const v9, 0x7f080024

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, problem:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const v9, 0x7f080025

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, helpMessage:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v8, v3, v2, v10, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 320
    .local v5, softErrorIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-virtual {v8, v5, v10}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
