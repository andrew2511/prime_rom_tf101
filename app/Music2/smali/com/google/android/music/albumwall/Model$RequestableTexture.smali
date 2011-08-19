.class Lcom/google/android/music/albumwall/Model$RequestableTexture;
.super Lcom/google/android/music/albumwall/Model$Requestable;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestableTexture"
.end annotation


# static fields
.field private static sTextureIds:[I


# instance fields
.field private mHeight:I

.field private mTextureChangeTime:J

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    return v0
.end method


# virtual methods
.method public deleteTextureId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    iget v1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    aput v1, v0, v2

    .line 247
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 248
    iput v2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 250
    :cond_0
    return-void
.end method

.method public eglContextCleared()V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 288
    return-void
.end method

.method public genTextureId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have valid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 233
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 237
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    return v0
.end method

.method public getTextureLoadTime()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    return v0
.end method

.method public isTextureIdAllocated()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isTextureIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 297
    :cond_1
    return-void
.end method

.method public setExtent(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 266
    iput p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    .line 267
    iput p2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    .line 268
    return-void
.end method

.method public setTextureLoadTime(J)V
    .locals 0
    .parameter "textureChangeTime"

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    .line 301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
