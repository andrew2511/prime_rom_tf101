.class Lcom/android/vending/model/LocalAssetCache$CacheDumper;
.super Landroid/content/BroadcastReceiver;
.source "LocalAssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/LocalAssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheDumper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/LocalAssetCache;


# direct methods
.method private constructor <init>(Lcom/android/vending/model/LocalAssetCache;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/vending/model/LocalAssetCache$CacheDumper;->this$0:Lcom/android/vending/model/LocalAssetCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/model/LocalAssetCache;Lcom/android/vending/model/LocalAssetCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/vending/model/LocalAssetCache$CacheDumper;-><init>(Lcom/android/vending/model/LocalAssetCache;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache$CacheDumper;->this$0:Lcom/android/vending/model/LocalAssetCache;

    invoke-static {v0}, Lcom/android/vending/model/LocalAssetCache;->access$300(Lcom/android/vending/model/LocalAssetCache;)V

    .line 356
    return-void
.end method
