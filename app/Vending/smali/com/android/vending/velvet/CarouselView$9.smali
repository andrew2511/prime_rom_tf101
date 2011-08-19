.class Lcom/android/vending/velvet/CarouselView$9;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->createAndRunFadeInSequencer()V
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
    .line 1256
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$9;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$9;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 1259
    return-void
.end method
