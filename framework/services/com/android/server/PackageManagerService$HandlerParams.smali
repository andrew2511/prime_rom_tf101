.class abstract Lcom/android/server/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HandlerParams"
.end annotation


# static fields
.field static final MAX_RETRIES:I = 0x4


# instance fields
.field retry:I

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 4819
    iput-object p1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4821
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PackageManagerService$HandlerParams;->retry:I

    return-void
.end method


# virtual methods
.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .registers 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 4846
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 4847
    return-void
.end method

.method final startCopy()V
    .registers 4

    .prologue
    .line 4825
    :try_start_0
    iget v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->retry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->retry:I

    .line 4826
    iget v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->retry:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1f

    .line 4827
    const-string v1, "PackageManager"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    iget-object v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 4829
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 4841
    :goto_1e
    return-void

    .line 4832
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$HandlerParams;->handleStartCopy()V

    .line 4834
    iget-object v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2e

    .line 4840
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService$HandlerParams;->handleReturnCode()V

    goto :goto_1e

    .line 4836
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 4838
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_2a
.end method
