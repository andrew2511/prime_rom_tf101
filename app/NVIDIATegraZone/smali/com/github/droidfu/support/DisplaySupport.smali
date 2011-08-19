.class public Lcom/github/droidfu/support/DisplaySupport;
.super Ljava/lang/Object;
.source "DisplaySupport.java"


# static fields
.field private static displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/app/Activity;I)I
    .locals 2
    .parameter "context"
    .parameter "dip"

    .prologue
    .line 31
    sget-object v0, Lcom/github/droidfu/support/DisplaySupport;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/github/droidfu/support/DisplaySupport;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/github/droidfu/support/DisplaySupport;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    :cond_0
    int-to-float v0, p1

    sget-object v1, Lcom/github/droidfu/support/DisplaySupport;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static scaleDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "drawableResourceId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, sourceBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method
