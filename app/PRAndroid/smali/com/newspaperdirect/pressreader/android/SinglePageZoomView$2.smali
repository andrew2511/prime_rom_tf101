.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$2;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$2;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$2;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 113
    return-void
.end method
