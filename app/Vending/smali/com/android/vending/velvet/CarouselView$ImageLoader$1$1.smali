.class Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 381
    return-void
.end method
