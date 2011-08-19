.class Lcom/android/camera/ui/IndicatorBar$Background;
.super Lcom/android/camera/ui/GLView;
.source "IndicatorBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/IndicatorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/IndicatorBar;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/IndicatorBar;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/IndicatorBar;Lcom/android/camera/ui/IndicatorBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/IndicatorBar$Background;-><init>(Lcom/android/camera/ui/IndicatorBar;)V

    return-void
.end method


# virtual methods
.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v0}, Lcom/android/camera/ui/IndicatorBar;->access$000(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar$Background;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar$Background;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v0}, Lcom/android/camera/ui/IndicatorBar;->access$100(Lcom/android/camera/ui/IndicatorBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v0}, Lcom/android/camera/ui/IndicatorBar;->access$200(Lcom/android/camera/ui/IndicatorBar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v0}, Lcom/android/camera/ui/IndicatorBar;->access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$200(Lcom/android/camera/ui/IndicatorBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    iget-object v6, v0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 48
    .local v6, bounds:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v0}, Lcom/android/camera/ui/IndicatorBar;->access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/Texture;

    move-result-object v0

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 51
    .end local v6           #bounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
