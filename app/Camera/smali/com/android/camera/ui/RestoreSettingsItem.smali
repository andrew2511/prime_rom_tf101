.class Lcom/android/camera/ui/RestoreSettingsItem;
.super Lcom/android/camera/ui/GLView;
.source "RestoreSettingsItem.java"


# static fields
.field private static sBottomPadding:I

.field private static sFontSize:F

.field private static sLeftPadding:I

.field private static sRightPadding:I

.field private static sTopPadding:I


# instance fields
.field private final mText:Lcom/android/camera/ui/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sLeftPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/android/camera/ui/RestoreSettingsItem;->initializeStaticVariables(Landroid/content/Context;)V

    .line 55
    sget v0, Lcom/android/camera/ui/RestoreSettingsItem;->sFontSize:F

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RestoreSettingsItem;->mText:Lcom/android/camera/ui/StringTexture;

    .line 56
    sget v0, Lcom/android/camera/ui/RestoreSettingsItem;->sLeftPadding:I

    sget v1, Lcom/android/camera/ui/RestoreSettingsItem;->sTopPadding:I

    sget v2, Lcom/android/camera/ui/RestoreSettingsItem;->sRightPadding:I

    sget v3, Lcom/android/camera/ui/RestoreSettingsItem;->sBottomPadding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/RestoreSettingsItem;->setPaddings(IIII)V

    .line 57
    return-void
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 44
    sget v0, Lcom/android/camera/ui/RestoreSettingsItem;->sLeftPadding:I

    if-ltz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sLeftPadding:I

    .line 47
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sRightPadding:I

    .line 48
    invoke-static {p0, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sTopPadding:I

    .line 49
    invoke-static {p0, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sBottomPadding:I

    .line 50
    const/high16 v0, 0x4190

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/RestoreSettingsItem;->sFontSize:F

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    iget-object v1, p0, Lcom/android/camera/ui/RestoreSettingsItem;->mText:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/RestoreSettingsItem;->mText:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 64
    return-void
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/RestoreSettingsItem;->mPaddings:Landroid/graphics/Rect;

    .line 69
    .local v1, p:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ui/RestoreSettingsItem;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 71
    .local v0, height:I
    iget-object v2, p0, Lcom/android/camera/ui/RestoreSettingsItem;->mText:Lcom/android/camera/ui/StringTexture;

    .line 73
    .local v2, title:Lcom/android/camera/ui/StringTexture;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/camera/ui/StringTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 74
    return-void
.end method
