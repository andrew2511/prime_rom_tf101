.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->show()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    .line 269
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$21(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    .line 270
    return-void
.end method
