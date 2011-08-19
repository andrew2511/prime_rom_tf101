.class public Lcom/layar/core/GLRadar;
.super Ljava/lang/Object;
.source "GLRadar.java"


# static fields
.field private static final RADAR_ANGLE:F = 90.0f

.field private static final RADAR_HEIGHT:I = 0x4c

.field public static final RADAR_HEIGHT_OFFSET:F = 46.0f

.field private static final RADAR_WIDTH:I = 0x4c

.field public static final RADAR_WIDTH_OFFSET:F = 68.0f

.field private static final SPRITE_HEIGHT:I = 0x4

.field private static final SPRITE_WIDTH:I = 0x4


# instance fields
.field protected density:F

.field public h:F

.field private mContext:Landroid/content/Context;

.field protected mRadarVertexBuffer:Ljava/nio/IntBuffer;

.field protected mSensor:Lcom/layar/util/SensorHelper;

.field protected mSpotVertexBuffer:Ljava/nio/IntBuffer;

.field protected mTextureBuffer:Ljava/nio/IntBuffer;

.field protected poisContainer:Lcom/layar/core/POIsContainer;

.field private radarTextureIdLan:I

.field private radarTextureIdPor:I

.field private rotationAngle:F

.field private sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private spotFocusedTextureId:I

.field private spotTextureId:I

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .parameter "context"
    .parameter "density"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/layar/core/GLRadar;->radarTextureIdLan:I

    .line 44
    iput v0, p0, Lcom/layar/core/GLRadar;->radarTextureIdPor:I

    .line 45
    iput v0, p0, Lcom/layar/core/GLRadar;->spotTextureId:I

    .line 46
    iput v0, p0, Lcom/layar/core/GLRadar;->spotFocusedTextureId:I

    .line 48
    iput v1, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    .line 52
    iput v1, p0, Lcom/layar/core/GLRadar;->x:F

    iput v1, p0, Lcom/layar/core/GLRadar;->y:F

    .line 61
    iput p2, p0, Lcom/layar/core/GLRadar;->density:F

    .line 62
    invoke-static {p1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/GLRadar;->mSensor:Lcom/layar/util/SensorHelper;

    .line 63
    iput-object p1, p0, Lcom/layar/core/GLRadar;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/layar/core/GLRadar;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 65
    iget-object v0, p0, Lcom/layar/core/GLRadar;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 66
    invoke-virtual {p0}, Lcom/layar/core/GLRadar;->initSprites()V

    .line 67
    return-void
.end method

.method private getVertexBuffer(II)[I
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 101
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 102
    neg-int v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    neg-int v2, p2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 103
    aput p1, v0, v1

    const/4 v1, 0x4

    neg-int v2, p2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 104
    neg-int v2, p1

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    const/16 v1, 0x9

    .line 105
    aput p1, v0, v1

    const/16 v1, 0xa

    aput p2, v0, v1

    .line 101
    return-object v0
.end method

.method private initRadarTexture(Ljavax/microedition/khronos/opengles/GL10;ILjava/lang/String;)V
    .locals 6
    .parameter "gl"
    .parameter "textId"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const v3, 0x47012f00

    const v2, 0x46180400

    const/16 v4, 0xde1

    .line 124
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 125
    invoke-interface {p1, v4, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 126
    const/16 v1, 0x2801

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 128
    const/16 v1, 0x2800

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 130
    const/16 v1, 0x2802

    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 132
    const/16 v1, 0x2803

    invoke-interface {p1, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 134
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 136
    iget-object v1, p0, Lcom/layar/core/GLRadar;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    return-void
.end method

.method private initSpot(Ljavax/microedition/khronos/opengles/GL10;ZI)V
    .locals 11
    .parameter "gl"
    .parameter "focused"
    .parameter "textId"

    .prologue
    const/4 v10, 0x0

    const v7, 0x47012f00

    const v6, 0x46180400

    const/4 v9, 0x0

    const/16 v8, 0xde1

    .line 143
    const v5, 0x84c0

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 144
    invoke-interface {p1, v8, p3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 145
    const/16 v5, 0x2801

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 147
    const/16 v5, 0x2800

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 149
    const/16 v5, 0x2802

    invoke-interface {p1, v8, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 151
    const/16 v5, 0x2803

    invoke-interface {p1, v8, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 154
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const v7, 0x45f00800

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 156
    iget-object v5, p0, Lcom/layar/core/GLRadar;->mContext:Landroid/content/Context;

    const-string v6, "radar_spot_mask.png"

    invoke-static {v5, v6}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 158
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 157
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 159
    .local v1, bmResult:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v4, paint:Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    .line 163
    iget-object v5, p0, Lcom/layar/core/GLRadar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 166
    .local v3, color:I
    :goto_0
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    invoke-virtual {v2, v0, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    invoke-static {v8, v10, v1, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    return-void

    .line 165
    .end local v3           #color:I
    :cond_0
    iget-object v5, p0, Lcom/layar/core/GLRadar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .restart local v3       #color:I
    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x0

    const v6, 0x3f19999a

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 202
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 203
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 205
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 206
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 208
    const/16 v1, 0xc50

    const/16 v2, 0x1101

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 209
    const/16 v1, 0x1d00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 210
    const/16 v1, 0xb71

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 211
    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 212
    const/16 v1, 0xb50

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 213
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 214
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 215
    const/16 v1, 0xb20

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 218
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 219
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 221
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 222
    iget v1, p0, Lcom/layar/core/GLRadar;->w:F

    iget v2, p0, Lcom/layar/core/GLRadar;->h:F

    invoke-static {p1, v4, v1, v4, v2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 224
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 225
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 226
    iget v1, p0, Lcom/layar/core/GLRadar;->x:F

    iget v2, p0, Lcom/layar/core/GLRadar;->y:F

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 227
    const/high16 v1, 0x42b4

    iget v2, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    add-float/2addr v1, v2

    invoke-interface {p1, v1, v4, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 229
    iget v1, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v3, v6

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 231
    iget v1, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    const/high16 v2, 0x4334

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdLan:I

    :goto_0
    invoke-interface {p1, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 232
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 233
    const/4 v1, 0x3

    const/16 v2, 0x140c

    iget-object v3, p0, Lcom/layar/core/GLRadar;->mRadarVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v1, v2, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 234
    const/4 v1, 0x2

    const/16 v2, 0x140c

    iget-object v3, p0, Lcom/layar/core/GLRadar;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v1, v2, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 236
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 237
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {p1, v1, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 238
    iget-object v1, p0, Lcom/layar/core/GLRadar;->mSensor:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentDirection()F

    move-result v1

    const/high16 v2, 0x42b4

    sub-float v0, v1, v2

    .line 239
    .local v0, curAngle:F
    invoke-interface {p1, v0, v4, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/layar/core/GLRadar;->drawRadarSpots(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 242
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 243
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 245
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 246
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 248
    const/16 v1, 0xb71

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 249
    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 250
    sget-boolean v1, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb50

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 251
    :cond_1
    return-void

    .line 231
    .end local v0           #curAngle:F
    :cond_2
    iget v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdPor:I

    goto :goto_0
.end method

.method protected drawRadarGLSpot(Ljavax/microedition/khronos/opengles/GL10;ZFFF)V
    .locals 7
    .parameter "gl"
    .parameter "focused"
    .parameter "dx"
    .parameter "dy"
    .parameter "angle"

    .prologue
    const/16 v6, 0x140c

    const/high16 v5, 0x3fc0

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    const/16 v0, 0xbc0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 260
    const/16 v0, 0x204

    const v1, 0x3e99999a

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 261
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 263
    invoke-interface {p1, p3, p4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 265
    if-eqz p2, :cond_0

    .line 266
    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 267
    iget v0, p0, Lcom/layar/core/GLRadar;->spotFocusedTextureId:I

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 272
    :goto_0
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 273
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/layar/core/GLRadar;->mSpotVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 274
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/layar/core/GLRadar;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 276
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 279
    neg-float v0, p3

    neg-float v1, p4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 280
    return-void

    .line 269
    :cond_0
    iget v0, p0, Lcom/layar/core/GLRadar;->spotTextureId:I

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_0
.end method

.method protected drawRadarSpots(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 21
    .parameter "gl"

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/high16 v10, 0x4218

    .line 287
    .local v10, cx:F
    const/high16 v11, 0x4218

    .line 288
    .local v11, cy:F
    const/4 v11, 0x0

    move v10, v11

    .line 289
    const/high16 v17, 0x4268

    .line 292
    .local v17, r:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v2, v0

    invoke-interface {v2}, Lcom/layar/core/POIsContainer;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v13

    .line 294
    .local v13, dataList:[Lcom/layar/data/BasePOI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->mSensor:Lcom/layar/util/SensorHelper;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/layar/util/SensorHelper;->getCurrentDirection()F

    move-result v9

    .line 295
    .local v9, curAngle:F
    if-eqz v13, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v2, v0

    invoke-interface {v2, v9}, Lcom/layar/core/POIsContainer;->getFocus(F)Lcom/layar/data/BasePOI;

    move-result-object v14

    .line 297
    .local v14, focusData:Lcom/layar/data/BasePOI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v2, v0

    invoke-interface {v2}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v15

    .line 299
    .local v15, focusLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v2, v0

    invoke-interface {v2}, Lcom/layar/core/POIsContainer;->getScope()I

    move-result v18

    .line 300
    .local v18, scope:I
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 316
    if-eqz v15, :cond_0

    if-eqz v14, :cond_0

    .line 317
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/layar/data/BasePOI;->getDisplayPart(I)I

    move-result v16

    .line 318
    .local v16, part:I
    if-ltz v16, :cond_0

    .line 319
    iget v2, v14, Lcom/layar/data/BasePOI;->bearing:F

    sub-float v8, v2, v9

    .line 320
    .local v8, angle:F
    float-to-double v2, v8

    const-wide v4, 0x4066800000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    .line 321
    float-to-double v2, v8

    const-wide v4, 0x4076800000000000L

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 325
    :cond_2
    :goto_2
    iget v2, v14, Lcom/layar/data/BasePOI;->x:F

    mul-float v2, v2, v17

    move/from16 v0, v18

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v2, v3

    add-float v6, v10, v2

    .line 326
    .local v6, y:F
    iget v2, v14, Lcom/layar/data/BasePOI;->y:F

    mul-float v2, v2, v17

    move/from16 v0, v18

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v2, v3

    sub-float v5, v11, v2

    .line 327
    .local v5, x:F
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/layar/core/GLRadar;->drawRadarGLSpot(Ljavax/microedition/khronos/opengles/GL10;ZFFF)V

    goto/16 :goto_0

    .line 300
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v8           #angle:F
    .end local v16           #part:I
    :cond_3
    aget-object v12, v13, v20

    .line 301
    .local v12, data:Lcom/layar/data/BasePOI;
    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/layar/data/BasePOI;->getDisplayPart(I)I

    move-result v16

    .line 302
    .restart local v16       #part:I
    if-gez v16, :cond_4

    .line 300
    :goto_3
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto :goto_1

    .line 304
    :cond_4
    iget v2, v12, Lcom/layar/data/BasePOI;->bearing:F

    sub-float v8, v2, v9

    .line 305
    .restart local v8       #angle:F
    float-to-double v2, v8

    const-wide v4, 0x4066800000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 306
    float-to-double v2, v8

    const-wide v4, 0x4076800000000000L

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 311
    :cond_5
    :goto_4
    iget v2, v12, Lcom/layar/data/BasePOI;->x:F

    mul-float v2, v2, v17

    move/from16 v0, v18

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v2, v3

    add-float v6, v10, v2

    .line 312
    .restart local v6       #y:F
    iget v2, v12, Lcom/layar/data/BasePOI;->y:F

    mul-float v2, v2, v17

    move/from16 v0, v18

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v2, v3

    sub-float v5, v11, v2

    .line 313
    .restart local v5       #x:F
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/layar/core/GLRadar;->drawRadarGLSpot(Ljavax/microedition/khronos/opengles/GL10;ZFFF)V

    goto :goto_3

    .line 307
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_6
    float-to-double v2, v8

    const-wide v4, -0x3f99800000000000L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    .line 308
    float-to-double v2, v8

    const-wide v4, 0x4076800000000000L

    add-double/2addr v2, v4

    double-to-float v8, v2

    goto :goto_4

    .line 322
    .end local v12           #data:Lcom/layar/data/BasePOI;
    :cond_7
    float-to-double v2, v8

    const-wide v4, -0x3f99800000000000L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 323
    float-to-double v2, v8

    const-wide v4, 0x4076800000000000L

    add-double/2addr v2, v4

    double-to-float v8, v2

    goto/16 :goto_2
.end method

.method public init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-array v0, v1, [I

    .line 110
    .local v0, ids:[I
    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 111
    aget v1, v0, v3

    iput v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdPor:I

    .line 112
    aget v1, v0, v4

    iput v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdLan:I

    .line 113
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/layar/core/GLRadar;->spotTextureId:I

    .line 114
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/layar/core/GLRadar;->spotFocusedTextureId:I

    .line 116
    iget v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdPor:I

    const-string v2, "radar_portrait.png"

    invoke-direct {p0, p1, v1, v2}, Lcom/layar/core/GLRadar;->initRadarTexture(Ljavax/microedition/khronos/opengles/GL10;ILjava/lang/String;)V

    .line 117
    iget v1, p0, Lcom/layar/core/GLRadar;->radarTextureIdLan:I

    const-string v2, "radar_landscape.png"

    invoke-direct {p0, p1, v1, v2}, Lcom/layar/core/GLRadar;->initRadarTexture(Ljavax/microedition/khronos/opengles/GL10;ILjava/lang/String;)V

    .line 119
    iget v1, p0, Lcom/layar/core/GLRadar;->spotTextureId:I

    invoke-direct {p0, p1, v3, v1}, Lcom/layar/core/GLRadar;->initSpot(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 120
    iget v1, p0, Lcom/layar/core/GLRadar;->spotFocusedTextureId:I

    invoke-direct {p0, p1, v4, v1}, Lcom/layar/core/GLRadar;->initSpot(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 121
    return-void
.end method

.method public initSprites()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 70
    const/high16 v0, 0x1

    .line 71
    .local v0, i:I
    mul-int/lit8 v4, v0, 0x4c

    .line 72
    .local v4, sw:I
    mul-int/lit8 v2, v0, 0x4c

    .line 73
    .local v2, sh:I
    invoke-direct {p0, v4, v2}, Lcom/layar/core/GLRadar;->getVertexBuffer(II)[I

    move-result-object v1

    .line 75
    .local v1, radarVertices:[I
    mul-int/lit8 v4, v0, 0x4

    .line 76
    mul-int/lit8 v2, v0, 0x4

    .line 77
    invoke-direct {p0, v4, v2}, Lcom/layar/core/GLRadar;->getVertexBuffer(II)[I

    move-result-object v3

    .line 79
    .local v3, spotVertices:[I
    const/16 v9, 0x8

    new-array v6, v9, [I

    const/4 v9, 0x1

    aput v0, v6, v9

    const/4 v9, 0x2

    aput v0, v6, v9

    const/4 v9, 0x3

    aput v0, v6, v9

    const/4 v9, 0x6

    aput v0, v6, v9

    .line 81
    .local v6, texCoords:[I
    array-length v9, v1

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 82
    .local v7, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/layar/core/GLRadar;->mRadarVertexBuffer:Ljava/nio/IntBuffer;

    .line 84
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mRadarVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 85
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mRadarVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    array-length v9, v3

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 88
    .local v8, vbb2:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/layar/core/GLRadar;->mSpotVertexBuffer:Ljava/nio/IntBuffer;

    .line 90
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mSpotVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 91
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mSpotVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 94
    .local v5, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/layar/core/GLRadar;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 96
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 97
    iget-object v9, p0, Lcom/layar/core/GLRadar;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-void
.end method

.method public isInTouch(FFI)Z
    .locals 9
    .parameter "xt"
    .parameter "yt"
    .parameter "rotation"

    .prologue
    .line 195
    iget v5, p0, Lcom/layar/core/GLRadar;->x:F

    sub-float v5, p1, v5

    float-to-double v1, v5

    .line 196
    .local v1, dx:D
    iget v5, p0, Lcom/layar/core/GLRadar;->h:F

    sub-float/2addr v5, p2

    iget v6, p0, Lcom/layar/core/GLRadar;->y:F

    sub-float/2addr v5, v6

    float-to-double v3, v5

    .line 197
    .local v3, dy:D
    mul-double v5, v1, v1

    mul-double v7, v3, v3

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 198
    .local v0, dist:F
    const/high16 v5, 0x4218

    iget v6, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v5, v6

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setPoisContainer(Lcom/layar/core/POIsContainer;)V
    .locals 0
    .parameter "poisContainer"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/layar/core/GLRadar;->poisContainer:Lcom/layar/core/POIsContainer;

    .line 255
    return-void
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    const/high16 v3, 0x4288

    const/high16 v2, 0x4238

    .line 175
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 176
    iget v0, p0, Lcom/layar/core/GLRadar;->w:F

    iget v1, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/GLRadar;->x:F

    .line 177
    iget v0, p0, Lcom/layar/core/GLRadar;->h:F

    iget v1, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/GLRadar;->y:F

    .line 178
    const/high16 v0, -0x3d4c

    iput v0, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 180
    iget v0, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/layar/core/GLRadar;->x:F

    .line 181
    iget v0, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/layar/core/GLRadar;->y:F

    .line 182
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    goto :goto_0

    .line 183
    :cond_2
    if-nez p1, :cond_3

    .line 184
    iget v0, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/layar/core/GLRadar;->x:F

    .line 185
    iget v0, p0, Lcom/layar/core/GLRadar;->h:F

    iget v1, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/GLRadar;->y:F

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    goto :goto_0

    .line 187
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 188
    iget v0, p0, Lcom/layar/core/GLRadar;->w:F

    iget v1, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/GLRadar;->x:F

    .line 189
    iget v0, p0, Lcom/layar/core/GLRadar;->density:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/layar/core/GLRadar;->y:F

    .line 190
    const/high16 v0, 0x4334

    iput v0, p0, Lcom/layar/core/GLRadar;->rotationAngle:F

    goto :goto_0
.end method
