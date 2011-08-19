.class public Lcom/android/vending/api/InAppPurchaseService$Factory;
.super Ljava/lang/Object;
.source "InAppPurchaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/InAppPurchaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;
    .locals 1
    .parameter "requestManager"

    .prologue
    .line 26
    new-instance v0, Lcom/android/vending/api/InAppPurchaseService;

    invoke-direct {v0, p1}, Lcom/android/vending/api/InAppPurchaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    return-object v0
.end method
