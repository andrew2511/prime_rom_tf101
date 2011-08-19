.class Lcom/android/videoeditor/VideoEditorActivity$4;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActiveWidth:I

.field private mDurationMs:J

.field private mLastScrollX:I

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBegin(Landroid/view/View;IIZ)V
    .locals 2
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    .line 322
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$700(Lcom/android/videoeditor/VideoEditorActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    .line 324
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mDurationMs:J

    .line 329
    :goto_0
    iput p2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mLastScrollX:I

    .line 330
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    goto :goto_0
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 8
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    const-wide/16 v6, 0x0

    .line 359
    if-nez p4, :cond_0

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mLastScrollX:I

    if-eq p2, v2, :cond_0

    .line 360
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mDurationMs:J

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 361
    .local v0, timeMs:J
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    move-wide v3, v6

    :goto_0
    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/VideoEditorActivity;->access$800(Lcom/android/videoeditor/VideoEditorActivity;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v2}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    .line 365
    .end local v0           #timeMs:J
    :cond_0
    return-void

    .restart local v0       #timeMs:J
    :cond_1
    move-wide v3, v0

    .line 361
    goto :goto_0
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 9
    .parameter "view"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "appScroll"

    .prologue
    const-wide/16 v7, 0x0

    .line 338
    if-nez p4, :cond_0

    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v3, :cond_0

    .line 339
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mLastScrollX:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 341
    .local v0, deltaScrollX:I
    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    .line 342
    iput p2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mLastScrollX:I

    .line 345
    int-to-long v3, p2

    iget-wide v5, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mDurationMs:J

    mul-long/2addr v3, v5

    iget v5, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    int-to-long v5, v5

    div-long v1, v3, v5

    .line 346
    .local v1, timeMs:J
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    cmp-long v4, v1, v7

    if-gez v4, :cond_1

    move-wide v4, v7

    :goto_0
    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->access$800(Lcom/android/videoeditor/VideoEditorActivity;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v3}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    .line 351
    .end local v0           #deltaScrollX:I
    .end local v1           #timeMs:J
    :cond_0
    return-void

    .restart local v0       #deltaScrollX:I
    .restart local v1       #timeMs:J
    :cond_1
    move-wide v4, v1

    .line 346
    goto :goto_0
.end method
