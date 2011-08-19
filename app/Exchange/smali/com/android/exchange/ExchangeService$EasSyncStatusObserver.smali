.class public Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasSyncStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1041
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$700(Lcom/android/exchange/ExchangeService;)V

    .line 1044
    :cond_0
    return-void
.end method
