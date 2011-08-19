.class Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaKeyAndTexture"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mKey:Lcom/google/android/street/PanoramaImageKey;


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;->mKey:Lcom/google/android/street/PanoramaImageKey;

    .line 96
    iput-object p2, p0, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 97
    return-void
.end method
