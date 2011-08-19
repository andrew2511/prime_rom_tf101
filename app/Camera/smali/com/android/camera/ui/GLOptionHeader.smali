.class Lcom/android/camera/ui/GLOptionHeader;
.super Lcom/android/camera/ui/GLView;
.source "GLOptionHeader.java"


# static fields
.field private static sHorizontalPaddings:I

.field private static sVerticalPaddings:I


# instance fields
.field private mBackground:Lcom/android/camera/ui/Texture;

.field private final mTitle:Lcom/android/camera/ui/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/android/camera/ui/GLOptionHeader;->initializeStaticVariables(Landroid/content/Context;)V

    .line 47
    const/high16 v1, 0x4140

    invoke-static {p1, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    .line 48
    .local v0, fontSize:F
    const v1, -0x686869

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    .line 49
    new-instance v1, Lcom/android/camera/ui/ColorTexture;

    const v2, -0xd4d4d5

    invoke-direct {v1, v2}, Lcom/android/camera/ui/ColorTexture;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLOptionHeader;->setBackground(Lcom/android/camera/ui/Texture;)V

    .line 50
    sget v1, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    sget v2, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    sget v3, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    sget v4, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/GLOptionHeader;->setPaddings(IIII)V

    .line 52
    return-void
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    if-ltz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    .line 41
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 65
    return-void
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/Texture;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/Texture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 72
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/GLOptionHeader;->mPaddings:Landroid/graphics/Rect;

    .line 73
    .local v6, p:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/StringTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 74
    return-void
.end method

.method public setBackground(Lcom/android/camera/ui/Texture;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/Texture;

    if-ne v0, p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/Texture;

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->invalidate()V

    goto :goto_0
.end method
