.class Lcom/android/camera/ui/GLOptionItem;
.super Lcom/android/camera/ui/GLView;
.source "GLOptionItem.java"


# static fields
.field private static sCheckOff:Lcom/android/camera/ui/ResourceTexture;

.field private static sCheckOn:Lcom/android/camera/ui/ResourceTexture;

.field private static sFontSize:F

.field private static sHorizontalPaddings:I

.field private static sMinimalHeight:I

.field private static sMinimalWidth:I

.field private static sNoIconLeadingSpace:I

.field private static sTextLeftPadding:I

.field private static sTextRightPadding:I

.field private static sVerticalPaddings:I


# instance fields
.field private mCheckBox:Lcom/android/camera/ui/ResourceTexture;

.field private mEnabled:Z

.field private final mIcon:Lcom/android/camera/ui/ResourceTexture;

.field private final mText:Lcom/android/camera/ui/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sHorizontalPaddings:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "iconId"
    .parameter "title"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLOptionItem;->mEnabled:Z

    .line 83
    invoke-static {p1}, Lcom/android/camera/ui/GLOptionItem;->initializeStaticVariables(Landroid/content/Context;)V

    .line 84
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 85
    sget v0, Lcom/android/camera/ui/GLOptionItem;->sFontSize:F

    const/4 v1, -0x1

    invoke-static {p3, v0, v1}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLOptionItem;->mText:Lcom/android/camera/ui/StringTexture;

    .line 86
    sget-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOff:Lcom/android/camera/ui/ResourceTexture;

    iput-object v0, p0, Lcom/android/camera/ui/GLOptionItem;->mCheckBox:Lcom/android/camera/ui/ResourceTexture;

    .line 87
    sget v0, Lcom/android/camera/ui/GLOptionItem;->sHorizontalPaddings:I

    sget v1, Lcom/android/camera/ui/GLOptionItem;->sVerticalPaddings:I

    sget v2, Lcom/android/camera/ui/GLOptionItem;->sHorizontalPaddings:I

    sget v3, Lcom/android/camera/ui/GLOptionItem;->sVerticalPaddings:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/GLOptionItem;->setPaddings(IIII)V

    .line 89
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0xa

    .line 66
    sget-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOn:Lcom/android/camera/ui/ResourceTexture;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02005f

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOn:Lcom/android/camera/ui/ResourceTexture;

    .line 69
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02005e

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOff:Lcom/android/camera/ui/ResourceTexture;

    .line 71
    invoke-static {p0, v2}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sNoIconLeadingSpace:I

    .line 72
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sTextLeftPadding:I

    .line 73
    invoke-static {p0, v2}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sTextRightPadding:I

    .line 74
    const/16 v0, 0x78

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sMinimalWidth:I

    .line 75
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sMinimalHeight:I

    .line 76
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sHorizontalPaddings:I

    .line 77
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sVerticalPaddings:I

    .line 79
    const/high16 v0, 0x4190

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionItem;->sFontSize:F

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    if-nez v2, :cond_0

    sget v2, Lcom/android/camera/ui/GLOptionItem;->sNoIconLeadingSpace:I

    move v1, v2

    .line 94
    .local v1, width:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mText:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/GLOptionItem;->mCheckBox:Lcom/android/camera/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/android/camera/ui/ResourceTexture;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 95
    sget v2, Lcom/android/camera/ui/GLOptionItem;->sTextRightPadding:I

    sget v3, Lcom/android/camera/ui/GLOptionItem;->sTextLeftPadding:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/GLOptionItem;->mText:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/GLOptionItem;->mCheckBox:Lcom/android/camera/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/android/camera/ui/ResourceTexture;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 100
    .local v0, height:I
    sget v2, Lcom/android/camera/ui/GLOptionItem;->sMinimalWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 101
    sget v2, Lcom/android/camera/ui/GLOptionItem;->sMinimalHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 103
    new-instance v2, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 106
    return-void

    .line 93
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/ResourceTexture;->getWidth()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 97
    .restart local v1       #width:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/ResourceTexture;->getHeight()I

    move-result v2

    goto :goto_1
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 12
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 110
    iget-object v4, p0, Lcom/android/camera/ui/GLOptionItem;->mPaddings:Landroid/graphics/Rect;

    .line 112
    .local v4, p:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionItem;->getWidth()I

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int v7, v10, v11

    .line 113
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionItem;->getHeight()I

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v10, v11

    .line 115
    .local v1, height:I
    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 117
    .local v8, xoffset:I
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    .line 118
    .local v6, trans:Landroid/view/animation/Transformation;
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    .line 119
    .local v3, oldAlpha:F
    iget-boolean v10, p0, Lcom/android/camera/ui/GLOptionItem;->mEnabled:Z

    if-eqz v10, :cond_0

    const/high16 v10, 0x3f80

    :goto_0
    mul-float/2addr v10, v3

    invoke-virtual {v6, v10}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 121
    iget-object v2, p0, Lcom/android/camera/ui/GLOptionItem;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 122
    .local v2, icon:Lcom/android/camera/ui/ResourceTexture;
    if-eqz v2, :cond_1

    .line 123
    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/camera/ui/ResourceTexture;->getHeight()I

    move-result v11

    sub-int v11, v1, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v2, p1, v8, v10}, Lcom/android/camera/ui/ResourceTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 125
    invoke-virtual {v2}, Lcom/android/camera/ui/ResourceTexture;->getWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 130
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/GLOptionItem;->mText:Lcom/android/camera/ui/StringTexture;

    .line 131
    .local v5, title:Lcom/android/camera/ui/StringTexture;
    sget v10, Lcom/android/camera/ui/GLOptionItem;->sTextLeftPadding:I

    add-int/2addr v8, v10

    .line 132
    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v11

    sub-int v11, v1, v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 134
    .local v9, yoffset:I
    invoke-virtual {v5, p1, v8, v9}, Lcom/android/camera/ui/StringTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionItem;->mCheckBox:Lcom/android/camera/ui/ResourceTexture;

    .line 137
    .local v0, checkbox:Lcom/android/camera/ui/ResourceTexture;
    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/camera/ui/ResourceTexture;->getHeight()I

    move-result v11

    sub-int v11, v1, v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 138
    invoke-virtual {v0}, Lcom/android/camera/ui/ResourceTexture;->getWidth()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v0, p1, v10, v9}, Lcom/android/camera/ui/ResourceTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 139
    invoke-virtual {v6, v3}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 140
    return-void

    .line 119
    .end local v0           #checkbox:Lcom/android/camera/ui/ResourceTexture;
    .end local v2           #icon:Lcom/android/camera/ui/ResourceTexture;
    .end local v5           #title:Lcom/android/camera/ui/StringTexture;
    .end local v9           #yoffset:I
    :cond_0
    const v10, 0x3e99999a

    goto :goto_0

    .line 127
    .restart local v2       #icon:Lcom/android/camera/ui/ResourceTexture;
    :cond_1
    sget v10, Lcom/android/camera/ui/GLOptionItem;->sNoIconLeadingSpace:I

    add-int/2addr v8, v10

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOn:Lcom/android/camera/ui/ResourceTexture;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ui/GLOptionItem;->mCheckBox:Lcom/android/camera/ui/ResourceTexture;

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionItem;->invalidate()V

    .line 145
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/android/camera/ui/GLOptionItem;->sCheckOff:Lcom/android/camera/ui/ResourceTexture;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/camera/ui/GLOptionItem;->mEnabled:Z

    if-ne v0, p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/GLOptionItem;->mEnabled:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionItem;->invalidate()V

    goto :goto_0
.end method
