.class Lcom/aws/account/service/AwsAccountService$ReNewTask;
.super Landroid/os/AsyncTask;
.source "AwsAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/account/service/AwsAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReNewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field mContext:Landroid/content/Context;

.field status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field final synthetic this$0:Lcom/aws/account/service/AwsAccountService;


# direct methods
.method constructor <init>(Lcom/aws/account/service/AwsAccountService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->this$0:Lcom/aws/account/service/AwsAccountService;

    .line 126
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    iput-object v0, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 127
    iput-object p2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    .line 135
    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/aws/api/ApiConfig;->getFromFile(Ljava/io/File;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 136
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 139
    .local v1, rtn:Ljava/lang/Boolean;
    :try_start_0
    iget-object v2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->this$0:Lcom/aws/account/service/AwsAccountService;

    invoke-static {v2}, Lcom/aws/account/service/AwsAccountService;->access$1(Lcom/aws/account/service/AwsAccountService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v4, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v2, v3, v4, v5}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 140
    iget-object v2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aws/account/service/AwsAccountService$ReNewTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->this$0:Lcom/aws/account/service/AwsAccountService;

    const-string v1, "renewToken"

    iget-object v2, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aws/account/service/AwsAccountService;->access$3(Lcom/aws/account/service/AwsAccountService;Ljava/lang/String;[B)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/aws/account/service/AwsAccountService$ReNewTask;->this$0:Lcom/aws/account/service/AwsAccountService;

    const-string v1, "renewToken"

    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$4()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aws/account/service/AwsAccountService;->access$3(Lcom/aws/account/service/AwsAccountService;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aws/account/service/AwsAccountService$ReNewTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
