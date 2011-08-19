.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

.field private final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->val$bm:Landroid/graphics/Bitmap;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->val$bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$17(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$18(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$18(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$19(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/graphics/Bitmap;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 100
    :cond_1
    return-void
.end method
