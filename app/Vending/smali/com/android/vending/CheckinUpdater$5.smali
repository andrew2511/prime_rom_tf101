.class Lcom/android/vending/CheckinUpdater$5;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CheckinUpdater;->performUpdateCheck(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CheckinUpdater;

.field final synthetic val$myDownloads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/CheckinUpdater;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater$5;->this$0:Lcom/android/vending/CheckinUpdater;

    iput-object p2, p0, Lcom/android/vending/CheckinUpdater$5;->val$myDownloads:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater$5;->val$myDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    return-void
.end method
