.class public final Lcom/google/android/music/utils/LabelMaker$Config;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/LabelMaker;
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

.field public static final DEFAULT_CONFIG_SCALED:Lcom/google/android/music/utils/LabelMaker$Config; = null

.field public static final DEFAULT_CONFIG_TRUNCATED:Lcom/google/android/music/utils/LabelMaker$Config; = null

.field private static final FADE_WIDTH:I = 0x1e

.field public static final OVERFLOW_CLIP:I = 0x0

.field public static final OVERFLOW_ELLIPSIZE:I = 0x1

.field public static final OVERFLOW_FADE:I = 0x2

.field public static final SIZE_BOUNDS_TO_TEXT:I = 0x2

.field public static final SIZE_BOUNDS_TO_TEXT_TIGHT:I = 0x3

.field public static final SIZE_EXACT:I = 0x0

.field public static final SIZE_EXACT_TIGHT:I = 0x4

.field public static final SIZE_TEXT_TO_BOUNDS:I = 0x1


# instance fields
.field public a:F

.field public b:F

.field public backgroundColor:I

.field public bitmapConfig:Landroid/graphics/Bitmap$Config;

.field public bold:Z

.field public clipWidth:I

.field public extr:F

.field public fontSize:F

.field public g:F

.field public height:I

.field public italic:Z

.field public layoutAlignment:I

.field public maxLines:I

.field public multiLine:Z

.field public overflowMode:I

.field public r:F

.field public secondaryFontExtraSpace:F

.field public secondaryFontSize:F

.field public secondaryOpacity:F

.field public shadow:Z

.field public shadowRadius:I

.field public sizeMode:I

.field public strikeThrough:Z

.field public tertiaryFontExtraSpace:F

.field public tertiaryFontSize:F

.field public tertiaryOpacity:F

.field public underline:Z

.field public width:I

.field public xalignment:I

.field public xmargin:I

.field public yalignment:I

.field public ymargin:I

.field public yoffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v0}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/LabelMaker$Config;->DEFAULT_CONFIG_SCALED:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 431
    new-instance v0, Lcom/google/android/music/utils/LabelMaker$Config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/LabelMaker$Config;->DEFAULT_CONFIG_TRUNCATED:Lcom/google/android/music/utils/LabelMaker$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4040

    const/4 v3, 0x2

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 434
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 435
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 436
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontExtraSpace:F

    .line 437
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 438
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 439
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontExtraSpace:F

    .line 441
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->extr:F

    .line 442
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    .line 443
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    .line 444
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    .line 445
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 446
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 447
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->underline:Z

    .line 448
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 449
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->italic:Z

    .line 450
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->strikeThrough:Z

    .line 451
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    .line 452
    iput-boolean v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 453
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 456
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 458
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 460
    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 461
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 463
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 464
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 465
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 466
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->ymargin:I

    .line 467
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    .line 468
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 469
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 473
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 476
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 479
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 6
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4040

    const/4 v3, 0x2

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 434
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 435
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 436
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontExtraSpace:F

    .line 437
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 438
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 439
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontExtraSpace:F

    .line 441
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->extr:F

    .line 442
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    .line 443
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    .line 444
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    .line 445
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 446
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 447
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->underline:Z

    .line 448
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 449
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->italic:Z

    .line 450
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->strikeThrough:Z

    .line 451
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    .line 452
    iput-boolean v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 453
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 456
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 458
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 460
    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 461
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 463
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 464
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 465
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 466
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->ymargin:I

    .line 467
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    .line 468
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 469
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 473
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 476
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 486
    iput p1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 487
    iput p2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 488
    iput p3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 489
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 490
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "sizeMode"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4040

    const/4 v3, 0x2

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 434
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 435
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 436
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontExtraSpace:F

    .line 437
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 438
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 439
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontExtraSpace:F

    .line 441
    iput v4, p0, Lcom/google/android/music/utils/LabelMaker$Config;->extr:F

    .line 442
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    .line 443
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    .line 444
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    .line 445
    iput v2, p0, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 446
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 447
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->underline:Z

    .line 448
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 449
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->italic:Z

    .line 450
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->strikeThrough:Z

    .line 451
    iput-boolean v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    .line 452
    iput-boolean v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 453
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 456
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 458
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 460
    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 461
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 463
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 464
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 465
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 466
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->ymargin:I

    .line 467
    iput v1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    .line 468
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 469
    iput v3, p0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 473
    iput v5, p0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 476
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 482
    iput p1, p0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 483
    return-void
.end method

.method private static extractComponent(II)F
    .locals 2
    .parameter "color"
    .parameter "shift"

    .prologue
    .line 500
    shr-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/music/utils/LabelMaker$Config;->extractComponent(II)F

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    .line 494
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/music/utils/LabelMaker$Config;->extractComponent(II)F

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    .line 495
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/music/utils/LabelMaker$Config;->extractComponent(II)F

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    .line 496
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/music/utils/LabelMaker$Config;->extractComponent(II)F

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 497
    return-void
.end method
