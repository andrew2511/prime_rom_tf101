.class Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;
.super Ljava/lang/Object;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/registration/RegisterNetworkConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConntectCheck"
.end annotation


# instance fields
.field testUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/registration/RegisterNetworkConnect;


# direct methods
.method constructor <init>(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/infraware/registration/RegisterNetworkConnect;->access$0(Lcom/infraware/registration/RegisterNetworkConnect;Z)V

    .line 100
    iput-object p2, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 107
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->testUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 109
    .local v0, connection:Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 110
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 112
    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/infraware/registration/RegisterNetworkConnect;->access$0(Lcom/infraware/registration/RegisterNetworkConnect;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v3}, Lcom/infraware/registration/RegisterNetworkConnect;->access$1(Lcom/infraware/registration/RegisterNetworkConnect;)Lcom/infraware/registration/SyncNetworkingStep;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v3}, Lcom/infraware/registration/RegisterNetworkConnect;->access$1(Lcom/infraware/registration/RegisterNetworkConnect;)Lcom/infraware/registration/SyncNetworkingStep;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/infraware/registration/SyncNetworkingStep;->yourTurn(Z)V

    .line 122
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 115
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v4, 0x2

    iput v4, v3, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    .line 116
    iget-object v3, p0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/infraware/registration/RegisterNetworkConnect;->access$0(Lcom/infraware/registration/RegisterNetworkConnect;Z)V

    goto :goto_0
.end method
