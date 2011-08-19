.class public final Lcom/ecareme/pixwe/media/GridDrawables;
.super Ljava/lang/Object;
.source "GridDrawables.java"


# static fields
.field private static final TEXTURE_CAMERA_SMALL:I

.field private static final TEXTURE_CHECKMARK_OFF:I

.field private static final TEXTURE_CHECKMARK_ON:I

.field private static final TEXTURE_FRAME:I

.field private static final TEXTURE_FRAME_FOCUS:I

.field private static final TEXTURE_FRAME_PRESSED:I

.field private static final TEXTURE_GRID_FRAME:I

.field private static final TEXTURE_LOCATION:I

.field private static final TEXTURE_PICASA_SMALL:I

.field private static final TEXTURE_PLACEHOLDER:I

.field public static final TEXTURE_SPINNER:[I

.field private static final TEXTURE_TRANSPARENT:I

.field private static final TEXTURE_VIDEO:I

.field public static sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

.field public static final sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

.field public static sGrid:Lcom/ecareme/pixwe/media/GridQuad;

.field public static sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

.field public static sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

.field public static sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

.field public static final sStringTextureTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/pixwe/media/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field public static sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

.field public static sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;


# instance fields
.field public mTextureCameraSmall:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureCheckmarkOff:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureCheckmarkOn:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureFrame:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureFrameFocus:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureFramePressed:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureGridFrame:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureLocation:Lcom/ecareme/pixwe/media/Texture;

.field public mTexturePicasaSmall:Lcom/ecareme/pixwe/media/Texture;

.field public mTexturePlaceholder:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

.field public mTextureTransparent:Lcom/ecareme/pixwe/media/Texture;

.field public mTextureVideo:Lcom/ecareme/pixwe/media/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 35
    new-array v1, v3, [Lcom/ecareme/pixwe/media/GridQuad;

    sput-object v1, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    .line 38
    const v1, 0x7f02008b

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME:I

    .line 39
    const v1, 0x7f02001d

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_GRID_FRAME:I

    .line 40
    const v1, 0x7f02008c

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME_FOCUS:I

    .line 41
    const v1, 0x7f02008d

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME_PRESSED:I

    .line 42
    const v1, 0x7f02000e

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_LOCATION:I

    .line 43
    const v1, 0x7f020097

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_VIDEO:I

    .line 44
    const v1, 0x7f02001c

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CHECKMARK_ON:I

    .line 45
    const v1, 0x7f02001b

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CHECKMARK_OFF:I

    .line 46
    const v1, 0x7f020044

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CAMERA_SMALL:I

    .line 47
    const v1, 0x7f020054

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_PICASA_SMALL:I

    .line 48
    const/16 v1, 0x8

    new-array v1, v1, [I

    sput-object v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_SPINNER:[I

    .line 49
    const v1, 0x7f02008e

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_TRANSPARENT:I

    .line 50
    const v1, 0x7f02001e

    sput v1, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_PLACEHOLDER:I

    .line 67
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/ecareme/pixwe/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_SPINNER:[I

    .line 72
    .local v0, textureSpinner:[I
    const/4 v1, 0x0

    const v2, 0x7f020039

    aput v2, v0, v1

    .line 73
    const/4 v1, 0x1

    const v2, 0x7f02003a

    aput v2, v0, v1

    .line 74
    const/4 v1, 0x2

    const v2, 0x7f02003b

    aput v2, v0, v1

    .line 75
    const v1, 0x7f02003c

    aput v1, v0, v3

    .line 76
    const/4 v1, 0x4

    const v2, 0x7f02003d

    aput v2, v0, v1

    .line 77
    const/4 v1, 0x5

    const v2, 0x7f02003e

    aput v2, v0, v1

    .line 78
    const/4 v1, 0x6

    const v2, 0x7f02003f

    aput v2, v0, v1

    .line 79
    const/4 v1, 0x7

    const v2, 0x7f020040

    aput v2, v0, v1

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .locals 24
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v5, 0x8

    new-array v5, v5, [Lcom/ecareme/pixwe/media/Texture;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    .line 83
    sget-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sGrid:Lcom/ecareme/pixwe/media/GridQuad;

    if-nez v5, :cond_0

    .line 84
    const/high16 v19, 0x3f80

    .line 85
    .local v19, height:F
    const/high16 v5, 0x3f80

    move/from16 v0, p1

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    move/from16 v0, p2

    int-to-float v0, v0

    move v6, v0

    div-float v4, v5, v6

    .line 86
    .local v4, width:F
    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v6, v0

    div-float v18, v5, v6

    .line 87
    .local v18, aspectRatio:F
    const/high16 v5, 0x3f80

    div-float v9, v5, v18

    .line 90
    .local v9, oneByAspect:F
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 93
    sget-object v11, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v12, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    aput-object v5, v11, v12

    .line 94
    sget-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/GridQuad;->setDynamic(Z)V

    .line 95
    sget-object v11, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v12, 0x1

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    aput-object v5, v11, v12

    .line 96
    sget-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/GridQuad;->setDynamic(Z)V

    .line 97
    sget-object v11, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v12, 0x2

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    aput-object v5, v11, v12

    .line 98
    sget-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/GridQuad;->setDynamic(Z)V

    .line 102
    const/high16 v5, 0x4200

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v10, v5, v6

    .line 103
    .local v10, sizeOfSelectedIcon:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    div-float/2addr v10, v5

    .line 104
    const/high16 v5, 0x4250

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v21, v5, v6

    .line 105
    .local v21, sizeOfLocationIcon:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    div-float v21, v21, v5

    .line 106
    const/high16 v5, 0x4298

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v22, v5, v6

    .line 107
    .local v22, sizeOfSourceIcon:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    div-float v22, v22, v5

    .line 108
    const/high16 v12, -0x4100

    const/high16 v13, 0x3e80

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move v11, v10

    invoke-static/range {v10 .. v16}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 109
    const v12, -0x425c28f6

    const v13, -0x4247ae14

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move v11, v10

    invoke-static/range {v10 .. v16}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 110
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v11, v21

    move/from16 v12, v21

    invoke-static/range {v11 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 111
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v11, v22

    move/from16 v12, v22

    invoke-static/range {v11 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 114
    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    const/high16 v6, 0x3fc0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/high16 v5, 0x4300

    move/from16 v20, v5

    .line 115
    .local v20, seedTextWidth:F
    :goto_0
    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    div-float v5, v20, v5

    mul-float v11, v5, v4

    .line 116
    .local v11, textWidth:F
    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    const/high16 v6, 0x3fc0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/high16 v5, 0x4200

    move/from16 v23, v5

    .line 117
    .local v23, textHeightPow2:F
    :goto_1
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    div-float v5, v23, v5

    const/high16 v6, 0x3f80

    mul-float v12, v5, v6

    .line 118
    .local v12, textHeight:F
    const/4 v14, 0x0

    .line 119
    .local v14, textOffsetY:F
    const/4 v13, 0x0

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 122
    const/high16 v5, 0x3f80

    move v0, v4

    move v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridQuadFrame;->createFrame(FFII)Lcom/ecareme/pixwe/media/GridQuadFrame;

    move-result-object v5

    sput-object v5, Lcom/ecareme/pixwe/media/GridDrawables;->sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

    .line 124
    .end local v4           #width:F
    .end local v9           #oneByAspect:F
    .end local v10           #sizeOfSelectedIcon:F
    .end local v11           #textWidth:F
    .end local v12           #textHeight:F
    .end local v14           #textOffsetY:F
    .end local v18           #aspectRatio:F
    .end local v19           #height:F
    .end local v20           #seedTextWidth:F
    .end local v21           #sizeOfLocationIcon:F
    .end local v22           #sizeOfSourceIcon:F
    .end local v23           #textHeightPow2:F
    :cond_0
    return-void

    .line 114
    .restart local v4       #width:F
    .restart local v9       #oneByAspect:F
    .restart local v10       #sizeOfSelectedIcon:F
    .restart local v18       #aspectRatio:F
    .restart local v19       #height:F
    .restart local v21       #sizeOfLocationIcon:F
    .restart local v22       #sizeOfSourceIcon:F
    :cond_1
    const/high16 v5, 0x4380

    move/from16 v20, v5

    goto :goto_0

    .line 116
    .restart local v11       #textWidth:F
    .restart local v20       #seedTextWidth:F
    :cond_2
    const/high16 v5, 0x4280

    move/from16 v23, v5

    goto :goto_1
.end method


# virtual methods
.method public getIconForSet(Lcom/ecareme/pixwe/media/MediaSet;Z)I
    .locals 6
    .parameter "set"
    .parameter "scaled"

    .prologue
    const-wide/16 v2, -0x1

    const v5, 0x7f02004b

    const v4, 0x7f02004a

    .line 191
    if-eqz p2, :cond_3

    .line 192
    if-nez p1, :cond_0

    move v0, v4

    .line 211
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 196
    const v0, 0x7f020053

    goto :goto_0

    .line 197
    :cond_1
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    sget v2, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 198
    const v0, 0x7f020043

    goto :goto_0

    :cond_2
    move v0, v4

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    if-nez p1, :cond_4

    move v0, v5

    .line 204
    goto :goto_0

    .line 206
    :cond_4
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 207
    const v0, 0x7f020054

    goto :goto_0

    .line 208
    :cond_5
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    sget v2, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 209
    const v0, 0x7f020044

    goto :goto_0

    :cond_6
    move v0, v5

    .line 211
    goto :goto_0
.end method

.method public onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 129
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 132
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 133
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 134
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 135
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 136
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 137
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 140
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 141
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 143
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 144
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 145
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 146
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 147
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 150
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 154
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuadFrame;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 155
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/GridQuadFrame;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 158
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrame:Lcom/ecareme/pixwe/media/Texture;

    .line 162
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_GRID_FRAME:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureGridFrame:Lcom/ecareme/pixwe/media/Texture;

    .line 163
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME_FOCUS:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrameFocus:Lcom/ecareme/pixwe/media/Texture;

    .line 164
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_FRAME_PRESSED:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFramePressed:Lcom/ecareme/pixwe/media/Texture;

    .line 165
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_LOCATION:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureLocation:Lcom/ecareme/pixwe/media/Texture;

    .line 166
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_VIDEO:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureVideo:Lcom/ecareme/pixwe/media/Texture;

    .line 167
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CHECKMARK_ON:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureCheckmarkOn:Lcom/ecareme/pixwe/media/Texture;

    .line 168
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CHECKMARK_OFF:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureCheckmarkOff:Lcom/ecareme/pixwe/media/Texture;

    .line 169
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_CAMERA_SMALL:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureCameraSmall:Lcom/ecareme/pixwe/media/Texture;

    .line 170
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_PICASA_SMALL:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTexturePicasaSmall:Lcom/ecareme/pixwe/media/Texture;

    .line 171
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_TRANSPARENT:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureTransparent:Lcom/ecareme/pixwe/media/Texture;

    .line 172
    sget v0, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_PLACEHOLDER:I

    invoke-virtual {p1, v0, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTexturePlaceholder:Lcom/ecareme/pixwe/media/Texture;

    .line 173
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrame:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 174
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureGridFrame:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrameFocus:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFramePressed:Lcom/ecareme/pixwe/media/Texture;

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 178
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const v1, 0x7f020039

    invoke-virtual {p1, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v2

    .line 179
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const v1, 0x7f02003a

    invoke-virtual {p1, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v3

    .line 180
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const v1, 0x7f02003b

    invoke-virtual {p1, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v4

    .line 181
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const/4 v1, 0x3

    const v2, 0x7f02003c

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const/4 v1, 0x4

    const v2, 0x7f02003d

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const/4 v1, 0x5

    const v2, 0x7f02003e

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const/4 v1, 0x6

    const v2, 0x7f02003f

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureSpinner:[Lcom/ecareme/pixwe/media/Texture;

    const/4 v1, 0x7

    const v2, 0x7f020040

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 186
    return-void
.end method
