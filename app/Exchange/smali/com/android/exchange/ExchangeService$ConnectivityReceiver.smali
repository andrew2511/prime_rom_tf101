.class public Lcom/android/exchange/ExchangeService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "broadCastIntent"

    .prologue
    .line 1537
    move-object v0, p2

    .line 1538
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;-><init>(Lcom/android/exchange/ExchangeService$ConnectivityReceiver;Landroid/content/Intent;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1584
    return-void
.end method
