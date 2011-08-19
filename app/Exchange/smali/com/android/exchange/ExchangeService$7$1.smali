.class Lcom/android/exchange/ExchangeService$7$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$7;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$7$1;->this$1:Lcom/android/exchange/ExchangeService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1799
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$7$1;->this$1:Lcom/android/exchange/ExchangeService$7;

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1804
    return-void

    .line 1800
    :catch_0
    move-exception v0

    goto :goto_0
.end method
