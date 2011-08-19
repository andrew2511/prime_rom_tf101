.class Lcom/android/gallery3d/ui/MultiLineTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "MultiLineTexture.java"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/ui/MultiLineTexture;->mLayout:Landroid/text/Layout;

    .line 35
    return-void
.end method

.method public static newInstance(Ljava/lang/String;IFI)Lcom/android/gallery3d/ui/MultiLineTexture;
    .locals 12
    .parameter "text"
    .parameter "maxWidth"
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-static {p2, p3}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v4

    .line 40
    .local v4, paint:Landroid/text/TextPaint;
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p1

    move v11, v2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 43
    .local v0, layout:Landroid/text/Layout;
    new-instance v1, Lcom/android/gallery3d/ui/MultiLineTexture;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/MultiLineTexture;-><init>(Landroid/text/Layout;)V

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "canvas"
    .parameter "backing"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/MultiLineTexture;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method
