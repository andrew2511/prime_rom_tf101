.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic val$account:Lcom/google/android/gsf/gtalkservice/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountMissing()V
    .locals 2

    .prologue
    .line 1526
    const-string v0, "GTalkService"

    const-string v1, "blockingCreateGTalkConnection: account missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 6
    .parameter "username"

    .prologue
    .line 1513
    const-string v2, "GTalkService"

    const-string v3, "blockingCreateGTalkConnection: authFailed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v2, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1516
    .local v0, connWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    .line 1518
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionStateAndError(IIZ)V

    .line 1523
    .end local v1           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    :cond_0
    return-void
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 1501
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    .line 1502
    const-string v1, "GTalkService"

    const-string v2, "blockingCreateGTalkConnection: fetchAuthTokenLater..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1507
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_1

    .line 1508
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login()V

    .line 1510
    :cond_1
    return-void
.end method
