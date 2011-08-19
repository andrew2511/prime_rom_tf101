.class public Lcom/asus/livewallpaper/gl/MyGLUtils;
.super Ljava/lang/Object;
.source "MyGLUtils.java"


# static fields
.field private static sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/asus/livewallpaper/gl/MyGLUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadTexture(Ljavax/microedition/khronos/opengles/GL10;ILandroid/content/Context;)I
    .locals 13
    .parameter "mGL"
    .parameter "rid"
    .parameter "ctx"

    .prologue
    const/16 v12, 0x2901

    const v11, 0x46180400

    const/4 v10, 0x1

    const/16 v8, 0xde1

    const/4 v9, 0x0

    .line 58
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v3, v0

    .line 59
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v4, 0x0

    .line 60
    .local v4, glError:I
    new-array v5, v10, [I

    .line 61
    .local v5, textureId:[I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/asus/livewallpaper/gl/MyGLUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v6, p1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v3, v10, v5, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 66
    aget v6, v5, v9

    invoke-interface {v3, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 68
    const/16 v6, 0x2801

    invoke-interface {v3, v8, v6, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 69
    const/16 v6, 0x2800

    invoke-interface {v3, v8, v6, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 70
    const/16 v6, 0x2802

    invoke-interface {v3, v8, v6, v12}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterx(III)V

    .line 71
    const/16 v6, 0x2803

    invoke-interface {v3, v8, v6, v12}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterx(III)V

    .line 72
    invoke-static {v8, v9, v1, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 75
    const/4 v6, 0x4

    new-array v2, v6, [I

    aput v9, v2, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    aput v6, v2, v10

    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    aput v7, v2, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    aput v7, v2, v6

    .line 78
    .local v2, cropRect:[I
    const v6, 0x8b9d

    invoke-interface {v3, v8, v6, v2, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 80
    invoke-interface {v3}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v4

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    const/16 v6, 0x505

    if-ne v4, v6, :cond_0

    .line 84
    const-string v6, "Jimmy"

    const-string v7, "Texture creation : out of memory"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    if-eqz v4, :cond_1

    .line 87
    const-string v6, "Jimmy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Texture creation fail, glError "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v2           #cropRect:[I
    :cond_1
    :goto_0
    aget v6, v5, v9

    return v6

    .line 90
    :cond_2
    const-string v6, "Jimmy"

    const-string v7, "bitmap is null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I
    .locals 9
    .parameter "mGL"
    .parameter "ctx"
    .parameter "resource"
    .parameter "resize"

    .prologue
    .line 98
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 99
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v2, 0x0

    .line 100
    .local v2, glError:I
    const/4 p0, 0x1

    new-array v4, p0, [I

    .line 102
    .end local p0
    .local v4, textureId:[I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object p1, Lcom/asus/livewallpaper/gl/MyGLUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .end local p1
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 103
    .local p0, bitmap:Landroid/graphics/Bitmap;
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 v3, 0x0

    aput v3, p1, p2

    .end local p2
    const/4 p2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, p1, p2

    const/4 p2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    aput v3, p1, p2

    .line 107
    .local p1, cropRect:[I
    if-eqz p3, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 109
    .local v6, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 110
    .local v3, height:I
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    .line 111
    .local v5, w:I
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    .line 113
    .local p2, h:I
    sub-int v7, v6, v5

    shl-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, v6

    if-gt v7, v8, :cond_4

    .line 114
    :goto_0
    sub-int v7, v3, p2

    shl-int/lit8 v8, p2, 0x1

    sub-int/2addr v8, v3

    if-gt v7, v8, :cond_5

    .line 116
    :goto_1
    if-ne v5, v6, :cond_0

    if-eq p2, v3, :cond_1

    .line 117
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, v5, p2, v3}, Lcom/asus/livewallpaper/gl/MyGLUtils;->resizedBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .end local v3           #height:I
    move-result-object p0

    .line 132
    .end local v5           #w:I
    .end local v6           #width:I
    .end local p2           #h:I
    :cond_1
    if-eqz p0, :cond_6

    .line 135
    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 136
    .end local v2           #glError:I
    const/16 p2, 0xde1

    const/4 v2, 0x0

    aget v2, v4, v2

    invoke-interface {v1, p2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 138
    const/16 p2, 0xde1

    const/16 v2, 0x2801

    const v3, 0x46180400

    invoke-interface {v1, p2, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 139
    const/16 p2, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-interface {v1, p2, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 140
    const/16 p2, 0xde1

    const/16 v2, 0x2802

    const/16 v3, 0x2901

    invoke-interface {v1, p2, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterx(III)V

    .line 141
    const/16 p2, 0xde1

    const/16 v2, 0x2803

    const/16 v3, 0x2901

    invoke-interface {v1, p2, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterx(III)V

    .line 143
    const/16 p2, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v2, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 146
    if-nez p3, :cond_2

    .line 147
    const/16 p2, 0xde1

    const p3, 0x8b9d

    const/4 v2, 0x0

    invoke-interface {v1, p2, p3, p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 151
    .end local p3
    :cond_2
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result p1

    .line 153
    .local p1, glError:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    const/16 p0, 0x505

    if-ne p1, p0, :cond_3

    .line 156
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    const-string p0, "Jimmy"

    const-string p2, "Texture creation : out of memory"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    if-eqz p1, :cond_7

    .line 159
    const-string p0, "Jimmy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Texture creation fail, glError "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    .line 165
    .end local p1           #glError:I
    .local p0, glError:I
    :goto_2
    const/4 p0, 0x0

    aget p0, v4, p0

    .end local p0           #glError:I
    return p0

    .line 113
    .restart local v2       #glError:I
    .restart local v3       #height:I
    .restart local v5       #w:I
    .restart local v6       #width:I
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, cropRect:[I
    .restart local p2       #h:I
    .restart local p3
    :cond_4
    shl-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 114
    :cond_5
    shl-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 162
    .end local v3           #height:I
    .end local v5           #w:I
    .end local v6           #width:I
    .end local p2           #h:I
    :cond_6
    const-string p0, "Jimmy"

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    const-string p1, "bitmap is null "

    .end local p1           #cropRect:[I
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    .end local v2           #glError:I
    .local p0, glError:I
    goto :goto_2

    .end local p0           #glError:I
    .end local p3
    .local p1, glError:I
    :cond_7
    move p0, p1

    .end local p1           #glError:I
    .restart local p0       #glError:I
    goto :goto_2
.end method

.method public static resizedBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, dst:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    return-object v0
.end method
