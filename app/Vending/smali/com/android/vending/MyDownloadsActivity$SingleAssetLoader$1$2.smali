.class Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$2;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$2;->this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1$2;->this$2:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;->this$1:Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    iget-object v0, v0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const v1, 0x7f07003b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 870
    return-void
.end method
