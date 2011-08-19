.class final Lcom/android/launcher2/PagedViewIcon$1;
.super Landroid/os/Handler;
.source "PagedViewIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/PagedViewIcon;

    .line 84
    .local v2, icon:Lcom/android/launcher2/PagedViewIcon;
    invoke-static {v2}, Lcom/android/launcher2/PagedViewIcon;->access$000(Lcom/android/launcher2/PagedViewIcon;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v2}, Lcom/android/launcher2/PagedViewIcon;->access$000(Lcom/android/launcher2/PagedViewIcon;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, holographicOutline:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v1, holographicOutlineCanvas:Landroid/graphics/Canvas;
    invoke-static {v2}, Lcom/android/launcher2/PagedViewIcon;->access$000(Lcom/android/launcher2/PagedViewIcon;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/PagedViewIcon$1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-static {}, Lcom/android/launcher2/PagedViewIcon;->access$300()Lcom/android/launcher2/HolographicOutlineHelper;

    move-result-object v3

    invoke-static {v2}, Lcom/android/launcher2/PagedViewIcon;->access$100(Lcom/android/launcher2/PagedViewIcon;)I

    move-result v4

    invoke-static {v2}, Lcom/android/launcher2/PagedViewIcon;->access$200(Lcom/android/launcher2/PagedViewIcon;)I

    move-result v5

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 92
    iget-object v3, p0, Lcom/android/launcher2/PagedViewIcon$1;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v4, Lcom/android/launcher2/PagedViewIcon$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/launcher2/PagedViewIcon$1$1;-><init>(Lcom/android/launcher2/PagedViewIcon$1;Lcom/android/launcher2/PagedViewIcon;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
