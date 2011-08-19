.class public Lcom/asus/Viewer/BitmapCache$Entry;
.super Ljava/lang/Object;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field isError:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/Viewer/BitmapCache$Entry;->isError:Z

    .line 1243
    invoke-virtual {p0}, Lcom/asus/Viewer/BitmapCache$Entry;->clear()V

    .line 1244
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    .line 1247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    .line 1248
    return-void
.end method
