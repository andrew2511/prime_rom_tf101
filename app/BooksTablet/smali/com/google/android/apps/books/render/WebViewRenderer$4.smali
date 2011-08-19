.class Lcom/google/android/apps/books/render/WebViewRenderer$4;
.super Ljava/lang/Object;
.source "WebViewRenderer.java"

# interfaces
.implements Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .locals 5
    .parameter "settings"

    .prologue
    .line 394
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    const-string v1, "applyPreferences(%s, \'%s\', \'%s\', \'%s\', \'%s\')"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->fontSize:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->lineHeight:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public goToPage(III)V
    .locals 5
    .parameter "chapter"
    .parameter "page"
    .parameter "offset"

    .prologue
    .line 401
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    const-string v1, "goToPage(%d, %d, 0, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method public goToPosition(ILjava/lang/String;IZ)V
    .locals 5
    .parameter "chapter"
    .parameter "position"
    .parameter "offset"
    .parameter "findNextHighlight"

    .prologue
    .line 407
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    const-string v1, "goToPosition(%d, \'%s\', 0, %d, undefined, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public initializeJavascript(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 8
    .parameter "volumeMetadata"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v6

    :goto_0
    const-string v2, "volume metadata should not be closed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 415
    const-string v1, "BooksTextureDebug"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 416
    .local v0, showDebug:Z
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    const-string v2, "initializeReader(\'%s\', %s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterJsonArray()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    return-void

    .end local v0           #showDebug:Z
    :cond_0
    move v1, v5

    .line 413
    goto :goto_0
.end method

.method public setHighlight(Ljava/lang/String;)V
    .locals 4
    .parameter "highlight"

    .prologue
    .line 458
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    if-eqz p1, :cond_0

    .line 459
    :goto_0
    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    const-string v1, "setHighlight(\'%s\')"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void

    .line 458
    :cond_0
    const-string v0, ""

    move-object p1, v0

    goto :goto_0
.end method

.method public takeSnapshot()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    const/4 v7, 0x3

    const-string v6, "WebViewRenderer"

    .line 422
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 423
    .local v3, width:I
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 425
    .local v1, height:I
    if-lez v3, :cond_0

    if-gtz v1, :cond_1

    .line 426
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "invalid WebView size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    :cond_1
    const-string v4, "WebViewRenderer"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    const-string v4, "WebViewRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "takeSnapshot() with w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 435
    :cond_3
    const-string v4, "WebViewRenderer"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    const-string v4, "WebViewRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new WebView snapshot bitmap with dimensions ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$902(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 442
    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 445
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1000(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    .line 446
    .local v2, isNightMode:Z
    if-eqz v2, :cond_6

    const/high16 v4, -0x100

    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 449
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 451
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v4}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 446
    :cond_6
    const/4 v4, -0x1

    goto :goto_0
.end method
