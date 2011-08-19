.class Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/upload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ecareme/pixwe/upload/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/upload/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "b"
    .parameter "i"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
