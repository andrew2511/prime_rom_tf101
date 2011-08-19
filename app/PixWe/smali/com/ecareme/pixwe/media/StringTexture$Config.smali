.class public final Lcom/ecareme/pixwe/media/StringTexture$Config;
.super Ljava/lang/Object;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/StringTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_HCENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final ALIGN_VCENTER:I = 0x5

.field public static final DEFAULT_CONFIG_SCALED:Lcom/ecareme/pixwe/media/StringTexture$Config; = null

.field public static final DEFAULT_CONFIG_TRUNCATED:Lcom/ecareme/pixwe/media/StringTexture$Config; = null

.field private static final FADE_WIDTH:I = 0x1e

.field public static final OVERFLOW_CLIP:I = 0x0

.field public static final OVERFLOW_ELLIPSIZE:I = 0x1

.field public static final OVERFLOW_FADE:I = 0x2

.field public static final SIZE_BOUNDS_TO_TEXT:I = 0x2

.field public static final SIZE_EXACT:I = 0x0

.field public static final SIZE_TEXT_TO_BOUNDS:I = 0x1


# instance fields
.field public a:F

.field public b:F

.field public bold:Z

.field public fontSize:F

.field public g:F

.field public height:I

.field public italic:Z

.field public overflowMode:I

.field public r:F

.field public shadowRadius:I

.field public sizeMode:I

.field public strikeThrough:Z

.field public underline:Z

.field public width:I

.field public xalignment:I

.field public yalignment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->DEFAULT_CONFIG_SCALED:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 238
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>(I)V

    sput-object v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->DEFAULT_CONFIG_TRUNCATED:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 219
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 241
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->r:F

    .line 242
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->g:F

    .line 243
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->b:F

    .line 244
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    .line 245
    sget v0, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    .line 246
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->underline:Z

    .line 247
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 248
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->italic:Z

    .line 249
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->strikeThrough:Z

    .line 250
    const/16 v0, 0x100

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 252
    const/16 v0, 0x20

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 253
    const/4 v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 254
    const/4 v0, 0x5

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    .line 255
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 256
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 259
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 4
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 241
    iput v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->r:F

    .line 242
    iput v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->g:F

    .line 243
    iput v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->b:F

    .line 244
    iput v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    .line 245
    sget v0, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    .line 246
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->underline:Z

    .line 247
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 248
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->italic:Z

    .line 249
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->strikeThrough:Z

    .line 250
    const/16 v0, 0x100

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 252
    const/16 v0, 0x20

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 253
    const/4 v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 254
    const/4 v0, 0x5

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    .line 255
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 256
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 266
    iput p1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 267
    iput p2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 268
    iput p3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 269
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 270
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "sizeMode"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 241
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->r:F

    .line 242
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->g:F

    .line 243
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->b:F

    .line 244
    iput v1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    .line 245
    sget v0, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->shadowRadius:I

    .line 246
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->underline:Z

    .line 247
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 248
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->italic:Z

    .line 249
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->strikeThrough:Z

    .line 250
    const/16 v0, 0x100

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->width:I

    .line 252
    const/16 v0, 0x20

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    .line 253
    const/4 v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 254
    const/4 v0, 0x5

    iput v0, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->yalignment:I

    .line 255
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 256
    iput v3, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 262
    iput p1, p0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 263
    return-void
.end method
