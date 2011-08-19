.class Lcom/android/exchange/ExchangeService$8;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onDestroy()V
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
    .line 1841
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1845
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1848
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1849
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$1402(Z)Z

    .line 1850
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1852
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
