.class Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

.field final synthetic val$index:I

.field final synthetic val$loadId:I

.field final synthetic val$numImagesToLoad:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iput p2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$loadId:I

    iput p3, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$numImagesToLoad:I

    iput p4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 5
    .parameter "bitmapContainer"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$loadId:I

    if-eq v1, v2, :cond_1

    .line 117
    const-string v1, "Expected response for load %s but got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-static {v4}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$loadId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$104(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$numImagesToLoad:I

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->access$200(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->val$index:I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
