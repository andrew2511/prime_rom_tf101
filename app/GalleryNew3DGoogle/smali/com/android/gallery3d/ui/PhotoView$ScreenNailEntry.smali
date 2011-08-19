.class Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailEntry"
.end annotation


# instance fields
.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mEnabled:Z

.field private mOffsetX:I

.field private mRotation:I

.field private mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mVisible:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1082
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;Lcom/android/gallery3d/ui/BitmapTexture;)Lcom/android/gallery3d/ui/BitmapTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 1146
    .local v6, x:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 1148
    .local v7, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 1149
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    if-eqz v0, :cond_0

    .line 1150
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 1151
    int-to-float v0, v6

    int-to-float v1, v7

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 1152
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 1153
    neg-int v0, v6

    int-to-float v0, v0

    neg-int v1, v7

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v6, v1

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v7, v1

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1157
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    if-eqz v0, :cond_1

    .line 1158
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 1161
    :cond_1
    return-void
.end method

.method public gapToSide()I
    .locals 2

    .prologue
    .line 1125
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(II)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mEnabled:Z

    return v0
.end method

.method public layoutLeftEdgeAt(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    .line 1120
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 1122
    return-void

    .line 1119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutRightEdgeAt(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 1113
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    .line 1114
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 1116
    return-void

    .line 1113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ZLandroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "enabled"
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 1094
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mEnabled:Z

    .line 1095
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    .line 1096
    if-nez p2, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 1098
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1110
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_3

    .line 1101
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p2, :cond_2

    .line 1102
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 1103
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1108
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->updateDrawingSize()V

    goto :goto_0

    .line 1106
    :cond_3
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    goto :goto_1
.end method

.method public updateDrawingSize()V
    .locals 5

    .prologue
    .line 1131
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v3, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v2

    .line 1134
    .local v2, width:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v0

    .line 1135
    .local v0, height:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mRotation:I

    invoke-static {v3, v2, v0, v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$3000(Lcom/android/gallery3d/ui/PhotoView$PositionController;III)F

    move-result v1

    .line 1136
    .local v1, s:F
    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    .line 1137
    int-to-float v3, v0

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    goto :goto_0
.end method
