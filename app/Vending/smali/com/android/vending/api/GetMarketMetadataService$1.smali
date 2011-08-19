.class Lcom/android/vending/api/GetMarketMetadataService$1;
.super Ljava/lang/Object;
.source "GetMarketMetadataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/api/GetMarketMetadataService;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/api/GetMarketMetadataService;


# direct methods
.method constructor <init>(Lcom/android/vending/api/GetMarketMetadataService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/vending/api/GetMarketMetadataService$1;->this$0:Lcom/android/vending/api/GetMarketMetadataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 112
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/cache/CacheManager;->clear()V

    .line 113
    return-void
.end method
