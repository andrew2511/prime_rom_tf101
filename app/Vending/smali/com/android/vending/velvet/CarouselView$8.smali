.class Lcom/android/vending/velvet/CarouselView$8;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$8;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$8;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 1161
    return-void
.end method
