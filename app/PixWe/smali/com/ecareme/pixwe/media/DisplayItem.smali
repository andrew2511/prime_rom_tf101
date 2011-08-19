.class public final Lcom/ecareme/pixwe/media/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# static fields
.field private static final STACK_SPACING:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "DisplayItem"

.field private static final random:Ljava/util/Random;


# instance fields
.field public mAlive:Z

.field private mAnimatablesEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimatedImageTheta:F

.field public mAnimatedPlaceholderFade:F

.field public mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

.field public mAnimatedTheta:F

.field private mConvergenceSpeed:F

.field public mCurrentSlotIndex:I

.field private mHasFocus:Z

.field private mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

.field private mImageTheta:F

.field public final mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

.field private mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

.field private mPerformingScale:Z

.field private mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

.field private mSpan:F

.field private mSpanDirection:F

.field private mSpanSpeed:F

.field private mStackId:I

.field private mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

.field private mStartOffset:F

.field private mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

.field private mTargetTheta:F

.field private mThumbnailImage:Lcom/ecareme/pixwe/media/MediaItemTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/DisplayItem;->random:Ljava/util/Random;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatablesEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 33
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/ecareme/pixwe/media/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 34
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 36
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 40
    iput-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mThumbnailImage:Lcom/ecareme/pixwe/media/MediaItemTexture;

    .line 41
    iput-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

    .line 42
    iput-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mConvergenceSpeed:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPlaceholderFade:F

    .line 50
    new-instance v0, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 60
    iput-object p1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 61
    iget v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    .line 62
    iget v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    .line 63
    if-nez p1, :cond_0

    .line 65
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mCurrentSlotIndex:I

    .line 66
    return-void
.end method


# virtual methods
.method public clearHiResImage()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

    .line 165
    return-void
.end method

.method public clearScreennailImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

    if-eqz v0, :cond_0

    .line 158
    iput-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

    .line 159
    iput-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

    .line 161
    :cond_0
    return-void
.end method

.method public clearThumbnail()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mThumbnailImage:Lcom/ecareme/pixwe/media/MediaItemTexture;

    .line 169
    return-void
.end method

.method public final commit()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 206
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    .line 207
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    .line 208
    return-void
.end method

.method public getAnimatablesEntry()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatablesEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    return-object v0
.end method

.method public final getHasFocus()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHasFocus:Z

    return v0
.end method

.method public final getHiResImage(Landroid/content/Context;)Lcom/ecareme/pixwe/media/Texture;
    .locals 3
    .parameter "context"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

    .line 336
    .local v0, texture:Lcom/ecareme/pixwe/media/UriTexture;
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/ecareme/pixwe/media/UriTexture;

    .end local v0           #texture:Lcom/ecareme/pixwe/media/UriTexture;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/UriTexture;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v0       #texture:Lcom/ecareme/pixwe/media/UriTexture;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/UriTexture;->setCacheId(J)V

    .line 339
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHiResImage:Lcom/ecareme/pixwe/media/UriTexture;

    .line 341
    :cond_0
    return-object v0
.end method

.method public getImageTheta()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    return v0
.end method

.method public getScreennailImage(Landroid/content/Context;)Lcom/ecareme/pixwe/media/Texture;
    .locals 7
    .parameter "context"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

    .line 139
    .local v2, texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/ecareme/pixwe/media/Texture;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v1, v3, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 141
    .local v1, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v3}, Lcom/ecareme/pixwe/media/DataSource;->getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;

    move-result-object v3

    sget-object v4, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    if-ne v3, v4, :cond_4

    .line 142
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 143
    new-instance v2, Lcom/ecareme/pixwe/media/MediaItemTexture;

    .end local v2           #texture:Lcom/ecareme/pixwe/media/Texture;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v2, p1, v3, v4}, Lcom/ecareme/pixwe/media/MediaItemTexture;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 151
    .restart local v2       #texture:Lcom/ecareme/pixwe/media/Texture;
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mScreennailImage:Lcom/ecareme/pixwe/media/Texture;

    .line 153
    .end local v1           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_2
    return-object v2

    .line 144
    .restart local v1       #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_3
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 145
    new-instance v2, Lcom/ecareme/pixwe/media/UriTexture;

    .end local v2           #texture:Lcom/ecareme/pixwe/media/Texture;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ecareme/pixwe/media/UriTexture;-><init>(Ljava/lang/String;)V

    .restart local v2       #texture:Lcom/ecareme/pixwe/media/Texture;
    goto :goto_0

    .line 148
    :cond_4
    new-instance v2, Lcom/ecareme/pixwe/media/UriTexture;

    .end local v2           #texture:Lcom/ecareme/pixwe/media/Texture;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ecareme/pixwe/media/UriTexture;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v2       #texture:Lcom/ecareme/pixwe/media/Texture;
    move-object v0, v2

    check-cast v0, Lcom/ecareme/pixwe/media/UriTexture;

    move-object v3, v0

    iget-object v4, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v4, v4, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ecareme/pixwe/media/UriTexture;->setCacheId(J)V

    goto :goto_0
.end method

.method public getStackIndex()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    return v0
.end method

.method public getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;
    .locals 5
    .parameter "context"
    .parameter "config"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mThumbnailImage:Lcom/ecareme/pixwe/media/MediaItemTexture;

    .line 128
    .local v0, texture:Lcom/ecareme/pixwe/media/MediaItemTexture;
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v1, v1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/ecareme/pixwe/media/MediaItemTexture;

    .end local v0           #texture:Lcom/ecareme/pixwe/media/MediaItemTexture;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v0, p1, p2, v1}, Lcom/ecareme/pixwe/media/MediaItemTexture;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 132
    .restart local v0       #texture:Lcom/ecareme/pixwe/media/MediaItemTexture;
    :cond_0
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mThumbnailImage:Lcom/ecareme/pixwe/media/MediaItemTexture;

    .line 134
    :cond_1
    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v0, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mPerformingScale:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->equals(Lcom/ecareme/pixwe/media/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    iget v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 180
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    iget v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPlaceholderFade:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 177
    goto :goto_0
.end method

.method public final rotateImageBy(F)V
    .locals 1
    .parameter "theta"

    .prologue
    .line 73
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    .line 74
    return-void
.end method

.method public final set(Lcom/ecareme/pixwe/media/Vector3f;IZ)V
    .locals 12
    .parameter "position"
    .parameter "stackIndex"
    .parameter "performTransition"

    .prologue
    const/4 v11, 0x1

    const/high16 v7, 0x41f0

    const/high16 v8, 0x3f00

    const v10, 0x3e4ccccd

    const/4 v9, 0x0

    .line 77
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mConvergenceSpeed:F

    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 79
    .local v0, animatedPosition:Lcom/ecareme/pixwe/media/Vector3f;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 80
    .local v4, targetPosition:Lcom/ecareme/pixwe/media/Vector3f;
    move v2, p2

    .line 81
    .local v2, seed:I
    move v1, p2

    .line 83
    .local v1, randomSeed:I
    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    .line 84
    const/4 v2, 0x3

    .line 85
    const/4 v1, 0x0

    .line 88
    :cond_0
    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-nez v5, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 90
    const/high16 v5, -0x3fc0

    int-to-float v6, p2

    mul-float/2addr v6, v10

    add-float/2addr v5, v6

    iput v5, v0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 93
    :cond_1
    invoke-virtual {v4, p1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 94
    iget v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    if-eq v5, p2, :cond_2

    if-ltz p2, :cond_2

    .line 95
    iput p2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    .line 98
    :cond_2
    if-nez v1, :cond_6

    .line 99
    if-nez p2, :cond_5

    .line 100
    iput v9, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    .line 104
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v10

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 105
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v10

    invoke-virtual {v5, v9, v9, v6}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 117
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 118
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 119
    iput v9, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    .line 120
    return-void

    .line 101
    :cond_5
    iget v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_3

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    goto :goto_0

    .line 107
    :cond_6
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_7

    move v3, v11

    .line 108
    .local v3, sign:I
    :goto_2
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/Vector3f;->equals(Lcom/ecareme/pixwe/media/Vector3f;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_4

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    .line 110
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v6, v3

    const/high16 v7, 0x4140

    mul-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v6, v7

    sget-object v7, Lcom/ecareme/pixwe/media/DisplayItem;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float v7, v8, v7

    const/high16 v8, 0x4080

    mul-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 111
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    mul-int/lit8 v6, v3, 0x4

    int-to-float v6, v6

    if-ne v3, v11, :cond_8

    const/high16 v7, -0x3f00

    :goto_3
    add-float/2addr v6, v7

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 112
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 113
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 114
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v6, v2

    mul-float/2addr v6, v10

    iput v6, v5, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    goto :goto_1

    .line 107
    .end local v3           #sign:I
    :cond_7
    const/4 v5, -0x1

    move v3, v5

    goto :goto_2

    .line 111
    .restart local v3       #sign:I
    :cond_8
    int-to-float v7, v3

    sget-object v8, Lcom/ecareme/pixwe/media/DisplayItem;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4180

    mul-float/2addr v7, v8

    goto :goto_3
.end method

.method public final setHasFocus(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "pushDown"

    .prologue
    const v3, 0x3e4ccccd

    .line 211
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mConvergenceSpeed:F

    .line 212
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mHasFocus:Z

    .line 213
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    .line 214
    .local v0, seed:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 215
    const/4 v0, 0x3

    .line 217
    :cond_0
    if-eqz p1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 219
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 220
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 221
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v2, v0

    mul-float/2addr v2, v3

    if-eqz p2, :cond_1

    const/high16 v3, 0x3f80

    :goto_0
    add-float/2addr v2, v3

    iput v2, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 227
    :goto_1
    return-void

    .line 221
    :cond_1
    const/high16 v3, -0x4100

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 224
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 225
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v2, v0

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    goto :goto_1
.end method

.method public final setOffset(ZZFFFFF)V
    .locals 15
    .parameter "useOffset"
    .parameter "pushDown"
    .parameter "span"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 272
    iget v7, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    .line 273
    .local v7, seed:I
    if-eqz p1, :cond_5

    .line 274
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mPerformingScale:Z

    .line 275
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpan:F

    sub-float v9, p3, v11

    .line 276
    .local v9, spanDelta:F
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v11, v11, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v11

    int-to-float v5, v11

    .line 277
    .local v5, maxSlots:F
    const/4 v11, 0x0

    const/high16 v12, 0x4200

    invoke-static {v5, v11, v12}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v5

    .line 278
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x4120

    sget v13, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 280
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    iget v12, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanDirection:F

    iget v13, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    .line 281
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    const/4 v12, 0x0

    invoke-static {v11, v12, v5}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v11

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    .line 290
    :goto_0
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/DisplayItem;->mSpan:F

    .line 291
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v12, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v11, v12}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 292
    if-nez p2, :cond_4

    .line 293
    const/high16 v11, 0x4000

    cmpg-float v11, v5, v11

    if-gez v11, :cond_3

    .line 328
    .end local v5           #maxSlots:F
    .end local v9           #spanDelta:F
    :cond_0
    :goto_1
    return-void

    .line 283
    .restart local v5       #maxSlots:F
    .restart local v9       #spanDelta:F
    :cond_1
    const/high16 v11, 0x4416

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    div-float v11, p3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    .line 284
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    const/high16 v12, 0x4000

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 285
    const/high16 v11, 0x4000

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    .line 287
    :cond_2
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    const v12, 0x3dcccccd

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanSpeed:F

    .line 288
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v11

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mSpanDirection:F

    goto :goto_0

    .line 301
    :cond_3
    const/high16 v11, 0x42fa

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    div-float v11, p3, v11

    float-to-int v4, v11

    .line 302
    .local v4, maxSeedVal:I
    int-to-float v11, v4

    const/high16 v12, 0x4000

    const/high16 v13, 0x3f80

    sub-float v13, v5, v13

    invoke-static {v11, v12, v13}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v11

    float-to-int v4, v11

    .line 303
    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    const/4 v12, 0x0

    int-to-float v13, v4

    sub-float v13, v5, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v13, v14

    invoke-static {v11, v12, v13}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v10

    .line 304
    .local v10, startOffset:F
    int-to-float v11, v7

    sub-float v6, v11, v10

    .line 305
    .local v6, offsetSeed:F
    int-to-float v11, v4

    div-float v8, v6, v11

    .line 306
    .local v8, seedFactor:F
    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-static {v8, v11, v12}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v8

    .line 307
    mul-float v11, p6, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v12, v12, p4

    add-float v2, v11, v12

    .line 308
    .local v2, dx:F
    mul-float v11, p7, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v12, v12, p5

    add-float v3, v11, v12

    .line 309
    .local v3, dy:F
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v12, v7

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    invoke-virtual {v11, v2, v3, v12}, Lcom/ecareme/pixwe/media/Vector3f;->add(FFF)V

    .line 310
    const/4 v11, 0x0

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    goto :goto_1

    .line 312
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #maxSeedVal:I
    .end local v6           #offsetSeed:F
    .end local v8           #seedFactor:F
    .end local v10           #startOffset:F
    :cond_4
    const/4 v11, 0x0

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    .line 313
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v12, v7

    const v13, 0x3e4ccccd

    mul-float/2addr v12, v13

    const/high16 v13, 0x4040

    add-float/2addr v12, v13

    iput v12, v11, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    goto/16 :goto_1

    .line 316
    .end local v5           #maxSlots:F
    .end local v9           #spanDelta:F
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mPerformingScale:Z

    .line 317
    const/4 v11, 0x0

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    .line 318
    const/4 v11, 0x3

    if-le v7, v11, :cond_6

    .line 319
    const/4 v7, 0x3

    .line 321
    :cond_6
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v12, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v11, v12}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 322
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v12, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v11, v12}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 323
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v12, v7

    const v13, 0x3e4ccccd

    mul-float/2addr v12, v13

    iput v12, v11, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 324
    if-eqz v7, :cond_0

    iget v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    .line 325
    const/high16 v11, 0x41f0

    const/high16 v12, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    goto/16 :goto_1
.end method

.method public final setSingleOffset(ZZFFFF)V
    .locals 8
    .parameter "useOffset"
    .parameter "pushAway"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "spreadValue"

    .prologue
    const/high16 v7, 0x4080

    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f00

    const v5, 0x3e4ccccd

    const/4 v4, 0x0

    .line 230
    iget v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStackId:I

    .line 231
    .local v0, seed:I
    if-eqz p1, :cond_7

    .line 232
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 233
    cmpl-float v1, p6, v7

    if-lez v1, :cond_0

    .line 234
    const v1, 0x3dcccccd

    mul-float/2addr v1, p6

    add-float p6, v7, v1

    .line 235
    :cond_0
    cmpg-float v1, p6, v3

    if-gez v1, :cond_1

    .line 236
    div-float p6, v3, p6

    .line 237
    const/4 p2, 0x1

    .line 239
    :cond_1
    if-nez p2, :cond_6

    .line 240
    if-nez v0, :cond_2

    .line 241
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    neg-float v2, p6

    const/high16 v3, 0x4160

    mul-float/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4}, Lcom/ecareme/pixwe/media/Vector3f;->add(FFF)V

    .line 243
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 244
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    neg-float v2, p6

    const/high16 v3, 0x4200

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2, v4, v4}, Lcom/ecareme/pixwe/media/Vector3f;->add(FFF)V

    .line 246
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    const/high16 v2, 0x4160

    mul-float/2addr v2, p6

    invoke-virtual {v1, v4, v2, v4}, Lcom/ecareme/pixwe/media/Vector3f;->add(FFF)V

    .line 249
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 250
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    const/high16 v2, 0x4200

    mul-float/2addr v2, p6

    invoke-virtual {v1, v2, v4, v4}, Lcom/ecareme/pixwe/media/Vector3f;->add(FFF)V

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    const/high16 v2, -0x4080

    mul-float/2addr v2, p6

    int-to-float v3, v0

    mul-float/2addr v3, v5

    mul-float/2addr v3, p6

    add-float/2addr v2, v3

    iput v2, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 253
    iput v4, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    .line 269
    :goto_0
    return-void

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v2, v0

    mul-float/2addr v2, v5

    mul-float v3, p6, v6

    add-float/2addr v2, v3

    iput v2, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    goto :goto_0

    .line 258
    :cond_7
    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    .line 259
    const/4 v0, 0x3

    .line 261
    :cond_8
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStacktopPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 262
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mJitteredPosition:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Vector3f;->add(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 263
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    int-to-float v2, v0

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 264
    if-eqz v0, :cond_9

    iget v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_9

    .line 265
    const/high16 v1, 0x41f0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v2, v6, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    .line 267
    :cond_9
    iput v4, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mStartOffset:F

    goto :goto_0
.end method

.method public final update(F)V
    .locals 4
    .parameter "timeElapsedInSec"

    .prologue
    .line 187
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v2, :cond_0

    .line 188
    const/high16 v2, 0x3fa0

    mul-float/2addr p1, v2

    .line 189
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 190
    .local v0, animatedPosition:Lcom/ecareme/pixwe/media/Vector3f;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 191
    .local v1, targetPosition:Lcom/ecareme/pixwe/media/Vector3f;
    iget v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mConvergenceSpeed:F

    mul-float/2addr p1, v2

    .line 192
    iget v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v3, v1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 193
    iget v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v3, v1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 194
    iget v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    iget v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mTargetTheta:F

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    .line 195
    iget v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    iget v3, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mImageTheta:F

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    .line 196
    iget v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPlaceholderFade:F

    const/high16 v3, 0x3f80

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPlaceholderFade:F

    .line 197
    iget v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget v3, v1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    invoke-static {v2, v3, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, v0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 199
    .end local v0           #animatedPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v1           #targetPosition:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_0
    return-void
.end method
