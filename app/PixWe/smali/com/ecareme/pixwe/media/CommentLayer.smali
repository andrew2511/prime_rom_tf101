.class public Lcom/ecareme/pixwe/media/CommentLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "CommentLayer.java"


# static fields
.field private static final BACKGROUND:I


# instance fields
.field private content:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f020086

    sput v0, Lcom/ecareme/pixwe/media/CommentLayer;->BACKGROUND:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 35
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 42
    sget v0, Lcom/ecareme/pixwe/media/CommentLayer;->BACKGROUND:I

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v1

    .line 43
    .local v1, background:Lcom/ecareme/pixwe/media/Texture;
    const/high16 v0, 0x4220

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v8, v0

    .line 44
    .local v8, menuHeight:I
    iget v2, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mX:F

    iget v3, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mY:F

    iget v4, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mWidth:F

    int-to-float v5, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V

    .line 45
    new-instance v3, Lcom/ecareme/pixwe/media/StringTexture;

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CommentLayer;->content:Ljava/lang/String;

    new-instance v2, Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v4, 0x41cc

    const/16 v5, 0x100

    const/16 v6, 0x20

    invoke-direct {v2, v4, v5, v6}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>(FII)V

    iget v4, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mWidth:F

    float-to-int v4, v4

    invoke-direct {v3, v0, v2, v4, v8}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;II)V

    .line 46
    .local v3, titleTexture:Lcom/ecareme/pixwe/media/StringTexture;
    invoke-virtual {p1, v3}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 47
    iget v4, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mX:F

    iget v5, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mY:F

    iget v6, p0, Lcom/ecareme/pixwe/media/CommentLayer;->mWidth:F

    int-to-float v7, v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V

    .line 48
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CommentLayer;->content:Ljava/lang/String;

    .line 30
    return-void
.end method
