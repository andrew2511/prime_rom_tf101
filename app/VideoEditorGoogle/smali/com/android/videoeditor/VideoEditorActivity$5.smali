.class Lcom/android/videoeditor/VideoEditorActivity$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SCALE_TOLERANCE:I = 0x3


# instance fields
.field private mLastScaleFactor:F

.field private mLastScaleFactorSign:I

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    .line 389
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 416
    :goto_0
    return v2

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 394
    .local v1, scaleFactor:F
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactor:F

    sub-float v0, v1, v2

    .line 395
    .local v0, deltaScaleFactor:F
    const v2, 0x3c23d70a

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    const v2, -0x43dc28f6

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 396
    :cond_1
    cmpg-float v2, v1, v3

    if-gez v2, :cond_4

    .line 397
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    if-gtz v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v2, v3, v5}, Lcom/android/videoeditor/VideoEditorActivity;->access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I

    .line 401
    :cond_2
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    const/4 v3, -0x3

    if-le v2, v3, :cond_3

    .line 402
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    .line 415
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactor:F

    move v2, v5

    .line 416
    goto :goto_0

    .line 404
    :cond_4
    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    .line 405
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    if-ltz v2, :cond_5

    .line 406
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3, v5}, Lcom/android/videoeditor/VideoEditorActivity;->access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I

    .line 409
    :cond_5
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 410
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 424
    return-void
.end method
