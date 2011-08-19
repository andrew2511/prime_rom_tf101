.class public Lcom/ecareme/pixwe/media/BitmapTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "BitmapTexture.java"


# instance fields
.field final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ecareme/pixwe/media/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method


# virtual methods
.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "view"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecareme/pixwe/media/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
