.class Lcom/android/vending/velvet/CarouselView$3;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->onFinishInflate()V
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
    .line 502
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$3;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$3;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$3;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v1}, Lcom/android/vending/velvet/CarouselView;->access$500(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/model/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView;->access$600(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)V

    .line 505
    return-void
.end method
