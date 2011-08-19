.class Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader$1;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 944
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v0}, Lcom/android/vending/MyDownloadsActivity;->access$200(Lcom/android/vending/MyDownloadsActivity;)Lcom/android/vending/adapters/MyDownloadsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->addAssets(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method
