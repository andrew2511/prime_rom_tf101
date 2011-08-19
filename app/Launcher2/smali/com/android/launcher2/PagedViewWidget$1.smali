.class final Lcom/android/launcher2/PagedViewWidget$1;
.super Landroid/os/Handler;
.source "PagedViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mHandler:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 87
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    .line 88
    .local v3, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FastBitmapDrawable;->getAlpha()I

    move-result v2

    .line 89
    .local v2, prevAlpha:I
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewWidget;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 91
    .local v4, width:I
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewWidget;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    .local v0, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, outline:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 97
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$200(Lcom/android/launcher2/PagedViewWidget;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$300(Lcom/android/launcher2/PagedViewWidget;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FastBitmapDrawable;->setAlpha(I)V

    .line 99
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/FastBitmapDrawable;->setAlpha(I)V

    .line 102
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    const/16 v6, 0x9c

    invoke-static {v6, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 107
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$400(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$400(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$500(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    invoke-static {}, Lcom/android/launcher2/PagedViewWidget;->access$800()Lcom/android/launcher2/HolographicOutlineHelper;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$600(Lcom/android/launcher2/PagedViewWidget;)I

    move-result v7

    invoke-static {v3}, Lcom/android/launcher2/PagedViewWidget;->access$700(Lcom/android/launcher2/PagedViewWidget;)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 115
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget$1;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/PagedViewWidget$1$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/launcher2/PagedViewWidget$1$1;-><init>(Lcom/android/launcher2/PagedViewWidget$1;Lcom/android/launcher2/PagedViewWidget;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
