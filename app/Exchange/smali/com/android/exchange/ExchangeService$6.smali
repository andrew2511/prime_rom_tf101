.class Lcom/android/exchange/ExchangeService$6;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$6;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1754
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1755
    :cond_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1756
    :try_start_0
    const-string v1, "!!! EAS ExchangeService, onCreate"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1759
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$6;->this$0:Lcom/android/exchange/ExchangeService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1760
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1761
    monitor-exit v0

    goto :goto_0

    .line 1763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
