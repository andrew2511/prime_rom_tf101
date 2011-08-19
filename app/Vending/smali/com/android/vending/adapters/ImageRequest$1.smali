.class Lcom/android/vending/adapters/ImageRequest$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/ImageRequest;->doRequest(Lcom/android/vending/api/RequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/ImageRequest;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/ImageRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/vending/adapters/ImageRequest$1;->this$0:Lcom/android/vending/adapters/ImageRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest$1;->this$0:Lcom/android/vending/adapters/ImageRequest;

    invoke-static {v0}, Lcom/android/vending/adapters/ImageRequest;->access$100(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest$1;->this$0:Lcom/android/vending/adapters/ImageRequest;

    invoke-static {v1}, Lcom/android/vending/adapters/ImageRequest;->access$000(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/model/Asset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;->onImageLoadSuccess(Lcom/android/vending/model/Asset;)V

    .line 51
    return-void
.end method
