.class public abstract Lcom/android/gallery3d/ui/IconDrawer;
.super Lcom/android/gallery3d/ui/SelectionDrawer;
.source "IconDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/Texture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionDrawer;-><init>()V

    .line 24
    const-string v0, "IconDrawer"

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020017

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 41
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020016

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 42
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020018

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020019

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020039

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mVideoOverlay:Lcom/android/gallery3d/ui/Texture;

    .line 46
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02003a

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 48
    return-void
.end method


# virtual methods
.method public drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    return-void
.end method

.method protected drawIcon(Lcom/android/gallery3d/ui/GLCanvas;III)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "dataSourceType"

    .prologue
    .line 56
    invoke-virtual {p0, p4}, Lcom/android/gallery3d/ui/IconDrawer;->getIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;

    move-result-object v0

    .line 58
    .local v0, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/gallery3d/ui/IconDrawer;->getIconDimension(Lcom/android/gallery3d/ui/ResourceTexture;II)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;

    move-result-object v6

    .line 60
    .local v6, id:Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    iget v2, v6, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->x:I

    iget v3, v6, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->y:I

    iget v4, v6, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->width:I

    iget v5, v6, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->height:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    move-object v1, v6

    .line 63
    .end local v6           #id:Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "mediaType"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "topIndex"

    .prologue
    .line 101
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mVideoOverlay:Lcom/android/gallery3d/ui/Texture;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 103
    if-nez p7, :cond_0

    .line 104
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 105
    .local v4, side:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method protected getIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/IconDrawer;->mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 80
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected getIconDimension(Lcom/android/gallery3d/ui/ResourceTexture;II)Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    .locals 4
    .parameter "icon"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    new-instance v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;-><init>()V

    .line 91
    .local v0, id:Lcom/android/gallery3d/ui/IconDrawer$IconDimension;
    const/high16 v2, 0x3e80

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 92
    .local v1, scale:F
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->width:I

    .line 93
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->height:I

    .line 94
    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->x:I

    .line 95
    div-int/lit8 v2, p3, 0x2

    iget v3, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->height:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/gallery3d/ui/IconDrawer$IconDimension;->y:I

    .line 96
    return-object v0
.end method

.method public prepareDrawing()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
