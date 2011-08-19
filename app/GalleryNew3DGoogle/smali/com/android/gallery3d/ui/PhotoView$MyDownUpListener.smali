.class Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1005
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->up()V

    goto :goto_0
.end method
