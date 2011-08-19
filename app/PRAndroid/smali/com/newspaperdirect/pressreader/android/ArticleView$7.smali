.class Lcom/newspaperdirect/pressreader/android/ArticleView$7;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "ArticleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->setBackgrounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$7;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 403
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 406
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    const v5, -0x2b2b2c

    const v6, -0x545455

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method
