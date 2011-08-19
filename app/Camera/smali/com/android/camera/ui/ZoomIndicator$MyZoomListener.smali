.class Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;
.super Ljava/lang/Object;
.source "ZoomIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ZoomIndicator;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ZoomIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;->this$0:Lcom/android/camera/ui/ZoomIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ZoomIndicator;Lcom/android/camera/ui/ZoomIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;-><init>(Lcom/android/camera/ui/ZoomIndicator;)V

    return-void
.end method


# virtual methods
.method public onZoomChanged(IFZ)V
    .locals 1
    .parameter "index"
    .parameter "value"
    .parameter "isMoving"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;->this$0:Lcom/android/camera/ui/ZoomIndicator;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomIndicator;->access$100(Lcom/android/camera/ui/ZoomIndicator;)Lcom/android/camera/ui/ZoomControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;->this$0:Lcom/android/camera/ui/ZoomIndicator;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomIndicator;->access$100(Lcom/android/camera/ui/ZoomIndicator;)Lcom/android/camera/ui/ZoomControllerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/ZoomControllerListener;->onZoomChanged(IFZ)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;->this$0:Lcom/android/camera/ui/ZoomIndicator;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomIndicator;->access$200(Lcom/android/camera/ui/ZoomIndicator;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;->this$0:Lcom/android/camera/ui/ZoomIndicator;

    invoke-static {v0, p1}, Lcom/android/camera/ui/ZoomIndicator;->access$300(Lcom/android/camera/ui/ZoomIndicator;I)V

    .line 124
    :cond_1
    return-void
.end method
