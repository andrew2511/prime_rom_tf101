.class Lcom/aws/account/service/AwsAccountService$1;
.super Lcom/aws/account/service/AccountServiceInterface$Stub;
.source "AwsAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/account/service/AwsAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/account/service/AwsAccountService;


# direct methods
.method constructor <init>(Lcom/aws/account/service/AwsAccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    .line 76
    invoke-direct {p0}, Lcom/aws/account/service/AccountServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public login()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 80
    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .line 81
    .local v1, bytes:[B
    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 83
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    new-array v1, v6, [B

    .line 85
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .end local v3           #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 100
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    invoke-static {v5}, Lcom/aws/account/service/AwsAccountService;->access$1(Lcom/aws/account/service/AwsAccountService;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    iget-object v5, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    invoke-static {v5}, Lcom/aws/account/service/AwsAccountService;->access$1(Lcom/aws/account/service/AwsAccountService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$2()[B

    move-result-object v1

    .line 107
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    const-string v6, "login"

    invoke-static {v5, v6, v1}, Lcom/aws/account/service/AwsAccountService;->access$3(Lcom/aws/account/service/AwsAccountService;Ljava/lang/String;[B)V

    .line 108
    return-void

    .line 88
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 89
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 90
    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    goto :goto_0

    .line 91
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 92
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    goto :goto_0
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aws/account/service/AwsAccountService;->access$0()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public renewToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/aws/account/service/AwsAccountService$ReNewTask;

    iget-object v1, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    iget-object v2, p0, Lcom/aws/account/service/AwsAccountService$1;->this$0:Lcom/aws/account/service/AwsAccountService;

    invoke-static {v2}, Lcom/aws/account/service/AwsAccountService;->access$1(Lcom/aws/account/service/AwsAccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aws/account/service/AwsAccountService$ReNewTask;-><init>(Lcom/aws/account/service/AwsAccountService;Landroid/content/Context;)V

    .line 119
    .local v0, t:Lcom/aws/account/service/AwsAccountService$ReNewTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aws/account/service/AwsAccountService$ReNewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method
