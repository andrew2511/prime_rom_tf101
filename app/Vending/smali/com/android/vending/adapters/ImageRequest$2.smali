.class Lcom/android/vending/adapters/ImageRequest$2;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/ImageRequest;->onException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/ImageRequest;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/ImageRequest;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/vending/adapters/ImageRequest$2;->this$0:Lcom/android/vending/adapters/ImageRequest;

    iput-object p2, p0, Lcom/android/vending/adapters/ImageRequest$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest$2;->this$0:Lcom/android/vending/adapters/ImageRequest;

    invoke-static {v0}, Lcom/android/vending/adapters/ImageRequest;->access$100(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest$2;->this$0:Lcom/android/vending/adapters/ImageRequest;

    invoke-static {v1}, Lcom/android/vending/adapters/ImageRequest;->access$000(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/model/Asset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/adapters/ImageRequest$2;->val$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;->onImageLoadFailure(Lcom/android/vending/model/Asset;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
