.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnectionAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic val$account:Lcom/google/android/gsf/gtalkservice/Account;

.field final synthetic val$newAuthToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$newAuthToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$newAuthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingRefreshAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1360
    :cond_0
    return-void
.end method
