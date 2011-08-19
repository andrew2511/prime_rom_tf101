.class Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;
.super Ljava/lang/Object;
.source "KenBurnsActivity.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/KenBurnsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 138
    .local v1, relativeScaleFactor:F
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 139
    .local v0, newAbsoluteScale:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 144
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(FFF)V

    .line 144
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$100(Lcom/android/videoeditor/KenBurnsActivity;)V

    .line 152
    return-void
.end method
