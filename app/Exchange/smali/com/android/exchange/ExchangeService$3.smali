.class final Lcom/android/exchange/ExchangeService$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->reconcileAccounts(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1055
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1056
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->access$800(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V

    .line 1059
    :cond_0
    return-void
.end method
