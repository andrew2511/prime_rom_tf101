.class public Lcom/android/gallery3d/ui/Label;
.super Lcom/android/gallery3d/ui/GLView;
.source "Label.java"


# instance fields
.field private mFontColor:I

.field private mFontSize:I

.field private mText:Ljava/lang/String;

.field private mTexture:Lcom/android/gallery3d/ui/StringTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "stringId"

    .prologue
    .line 40
    const/16 v0, 0x12

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/Label;-><init>(Landroid/content/Context;III)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "stringId"
    .parameter "fontSize"
    .parameter "fontColor"

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/gallery3d/ui/Label;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "fontSize"
    .parameter "fontColor"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/ui/Label;->mText:Ljava/lang/String;

    .line 50
    int-to-float v0, p3

    invoke-static {p2, v0, p4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    .line 51
    iput p3, p0, Lcom/android/gallery3d/ui/Label;->mFontSize:I

    .line 52
    iput p4, p0, Lcom/android/gallery3d/ui/Label;->mFontColor:I

    .line 53
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    .line 66
    .local v1, width:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v0

    .line 67
    .local v0, height:I
    invoke-static {p0}, Lcom/android/gallery3d/ui/MeasureHelper;->getInstance(Lcom/android/gallery3d/ui/GLView;)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/MeasureHelper;->measure(II)V

    .line 70
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/ui/Label;->mPaddings:Landroid/graphics/Rect;

    .line 76
    .local v1, p:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/Label;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 77
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/Label;->getHeight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v6

    .line 79
    .local v0, height:I
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 80
    .local v3, xoffset:I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 82
    .local v4, yoffset:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 83
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/Label;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/Label;->mText:Ljava/lang/String;

    .line 58
    iget v0, p0, Lcom/android/gallery3d/ui/Label;->mFontSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/Label;->mFontColor:I

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/Label;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/Label;->requestLayout()V

    .line 61
    :cond_0
    return-void
.end method
