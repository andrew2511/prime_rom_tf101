.class public Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;
.super Ljava/lang/Object;
.source "PhotoDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public image:Landroid/graphics/Bitmap;

.field public imageUri:Landroid/net/Uri;

.field public widgetId:I


# direct methods
.method private constructor <init>(ILandroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "id"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;->widgetId:I

    .line 107
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;->imageUri:Landroid/net/Uri;

    .line 108
    invoke-static {p3}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;->image:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;-><init>(ILandroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
