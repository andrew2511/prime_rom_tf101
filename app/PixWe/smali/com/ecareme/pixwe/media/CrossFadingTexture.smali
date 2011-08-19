.class public Lcom/ecareme/pixwe/media/CrossFadingTexture;
.super Ljava/lang/Object;
.source "CrossFadingTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossFadingTexture"


# instance fields
.field private mAnimatedMixRatio:F

.field private mBind:Z

.field private mBindUsingMixed:Z

.field private mFadeNecessary:Z

.field private mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

.field private mMixRatio:F

.field private mTexture:Lcom/ecareme/pixwe/media/Texture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    .line 29
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 30
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 31
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    .line 32
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 3
    .parameter "initialTexture"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    .line 29
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 30
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 31
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    .line 32
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 38
    iput v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    .line 39
    iput v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 40
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 41
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 42
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;)V
    .locals 2
    .parameter "source"
    .parameter "destination"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    .line 29
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 30
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 31
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    .line 32
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 51
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 52
    iput-object p2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 53
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    .line 54
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 55
    const-string v0, "CrossFadingTexture"

    const-string v1, "Creating crossfading texture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public bind(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 8
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 102
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    if-eqz v2, :cond_0

    move v2, v5

    .line 142
    :goto_0
    return v2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    iget v2, v2, Lcom/ecareme/pixwe/media/Texture;->mState:I

    if-ne v2, v3, :cond_1

    .line 106
    iput-object v7, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    iget v2, v2, Lcom/ecareme/pixwe/media/Texture;->mState:I

    if-ne v2, v3, :cond_2

    .line 109
    iput-object v7, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 111
    :cond_2
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, fadingTextureLoaded:Z
    const/4 v1, 0x0

    .line 114
    .local v1, textureLoaded:Z
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v0

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 119
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v1

    .line 121
    :cond_4
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    if-eqz v2, :cond_6

    .line 122
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getAlpha()F

    move-result v2

    iget v3, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 123
    iget v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 125
    :cond_5
    iget v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    .line 126
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 129
    :cond_6
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    move v2, v4

    .line 130
    goto :goto_0

    .line 132
    :cond_7
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    .line 133
    iget v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    if-eqz v0, :cond_8

    .line 134
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    :goto_1
    move v2, v5

    .line 142
    goto :goto_0

    .line 135
    :cond_8
    iget v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v2, v2, v6

    if-gez v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getAlpha()F

    move-result v2

    iget v3, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_9

    .line 136
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-ne v2, v3, :cond_a

    .line 137
    :cond_9
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    goto :goto_1

    .line 139
    :cond_a
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 140
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    iget v4, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    invoke-virtual {p1, v2, v3, v4}, Lcom/ecareme/pixwe/media/RenderView;->bindMixed(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;F)Z

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 47
    iput-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 48
    return-void
.end method

.method public getTexture()Lcom/ecareme/pixwe/media/Texture;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    return-object v0
.end method

.method public setTexture(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    const/high16 v1, 0x3f80

    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 67
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    if-nez v0, :cond_2

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 75
    :goto_1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 77
    iput v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    goto :goto_0

    .line 73
    :cond_3
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    goto :goto_1
.end method

.method public setTextureImmediate(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-ne v0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 87
    :cond_2
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 88
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    goto :goto_0
.end method

.method public unbind(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->unbindMixed()V

    .line 148
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 150
    :cond_0
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mBind:Z

    .line 151
    return-void
.end method

.method public update(F)Z
    .locals 4
    .parameter "timeElapsed"

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mFadingTexture:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    iget v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    const/high16 v2, 0x3f00

    mul-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 94
    iget v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mMixRatio:F

    iget v1, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/CrossFadingTexture;->mAnimatedMixRatio:F

    move v0, v3

    .line 97
    goto :goto_0
.end method
