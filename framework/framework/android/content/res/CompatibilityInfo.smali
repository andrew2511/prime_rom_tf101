.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 575
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 253
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 256
    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 5
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 247
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 248
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 249
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 16
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, compatFlags:I
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_53

    .line 102
    :cond_10
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_3c

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    move v7, v9

    .line 105
    .local v7, required:I
    :goto_17
    if-nez v7, :cond_1b

    .line 106
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 108
    :cond_1b
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_40

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    move v4, v9

    .line 110
    .local v4, compat:I
    :goto_22
    if-ge v4, v7, :cond_25

    .line 111
    move v4, v7

    .line 113
    :cond_25
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 115
    .local v6, largest:I
    const/16 v9, 0x140

    if-le v7, v9, :cond_42

    .line 122
    or-int/lit8 v5, v5, 0x4

    .line 139
    :cond_2d
    :goto_2d
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 140
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 141
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 241
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :goto_39
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 242
    return-void

    .line 102
    :cond_3c
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    move v7, v9

    goto :goto_17

    .restart local v7       #required:I
    :cond_40
    move v4, v7

    .line 108
    goto :goto_22

    .line 123
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_42
    if-eqz v6, :cond_49

    if-le p3, v6, :cond_49

    .line 127
    or-int/lit8 v5, v5, 0xa

    goto :goto_2d

    .line 128
    :cond_49
    if-lt v4, p3, :cond_4e

    .line 131
    or-int/lit8 v5, v5, 0x4

    goto :goto_2d

    .line 132
    :cond_4e
    if-eqz p4, :cond_2d

    .line 135
    or-int/lit8 v5, v5, 0x8

    goto :goto_2d

    .line 148
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :cond_53
    const/4 v0, 0x2

    .line 154
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 160
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 162
    .local v2, XLARGE_SCREENS:I
    const/4 v8, 0x0

    .line 166
    .local v8, sizeInfo:I
    const/4 v3, 0x0

    .line 168
    .local v3, anyResizeable:Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_67

    .line 169
    or-int/lit8 v8, v8, 0x8

    .line 170
    const/4 v3, 0x1

    .line 171
    if-nez p4, :cond_67

    .line 175
    or-int/lit8 v8, v8, 0x22

    .line 178
    :cond_67
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_73

    .line 179
    const/4 v3, 0x1

    .line 180
    if-nez p4, :cond_73

    .line 181
    or-int/lit8 v8, v8, 0x22

    .line 184
    :cond_73
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_7c

    .line 185
    const/4 v3, 0x1

    .line 186
    or-int/lit8 v8, v8, 0x2

    .line 189
    :cond_7c
    if-eqz p4, :cond_80

    .line 194
    and-int/lit8 v8, v8, -0x3

    .line 197
    :cond_80
    or-int/lit8 v5, v5, 0x8

    .line 198
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_e6

    .line 217
    :cond_87
    :goto_87
    const/high16 v9, 0x1000

    and-int/2addr v9, p2

    if-eqz v9, :cond_c9

    .line 218
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c4

    .line 219
    and-int/lit8 v5, v5, -0x9

    .line 228
    :cond_92
    :goto_92
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_ce

    .line 229
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 230
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 231
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_39

    .line 200
    :pswitch_a5
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_ab

    .line 201
    and-int/lit8 v5, v5, -0x9

    .line 203
    :cond_ab
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_87

    .line 204
    or-int/lit8 v5, v5, 0x4

    goto :goto_87

    .line 208
    :pswitch_b5
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_bb

    .line 209
    and-int/lit8 v5, v5, -0x9

    .line 211
    :cond_bb
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_87

    .line 212
    or-int/lit8 v5, v5, 0x4

    goto :goto_87

    .line 220
    :cond_c4
    if-nez v3, :cond_92

    .line 221
    or-int/lit8 v5, v5, 0x2

    goto :goto_92

    .line 224
    :cond_c9
    and-int/lit8 v5, v5, -0x9

    .line 225
    or-int/lit8 v5, v5, 0x4

    goto :goto_92

    .line 233
    :cond_ce
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 234
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x4320

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 236
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 237
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_39

    .line 198
    nop

    :pswitch_data_e6
    .packed-switch 0x3
        :pswitch_b5
        :pswitch_a5
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 7
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 474
    iget v4, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 475
    .local v4, width:I
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 477
    .local v0, height:I
    if-ge v4, v0, :cond_43

    .line 478
    move v2, v4

    .line 479
    .local v2, shortSize:I
    move v1, v0

    .local v1, longSize:I
    move v3, v2

    .line 484
    .end local v2           #shortSize:I
    .local v3, shortSize:I
    :goto_9
    const/high16 v2, 0x43a0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .end local p0
    mul-float/2addr p0, v2

    const/high16 v2, 0x3f00

    add-float/2addr p0, v2

    float-to-int v2, p0

    .line 485
    .local v2, newShortSize:I
    int-to-float p0, v1

    int-to-float v1, v3

    div-float/2addr p0, v1

    .line 486
    .local p0, aspect:F
    const v1, 0x3fe3bbbc

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1f

    .line 487
    .end local v1           #longSize:I
    const p0, 0x3fe3bbbc

    .line 489
    :cond_1f
    int-to-float v1, v2

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f00

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 491
    .local p0, newLongSize:I
    if-ge v4, v0, :cond_47

    .line 492
    move v1, v2

    .line 493
    .local v1, newWidth:I
    move p0, p0

    .line 499
    .local p0, newHeight:I
    :goto_29
    int-to-float v2, v4

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 500
    .local v2, sw:F
    int-to-float v0, v0

    int-to-float v3, p0

    div-float/2addr v0, v3

    .line 501
    .local v0, sh:F
    cmpg-float v3, v2, v0

    if-gez v3, :cond_34

    .end local v3           #shortSize:I
    move v0, v2

    .line 502
    .local v0, scale:F
    :cond_34
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3c

    .line 503
    .end local v2           #sw:F
    const/high16 v0, 0x3f80

    .line 506
    :cond_3c
    if-eqz p1, :cond_42

    .line 507
    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 508
    iput p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 511
    :cond_42
    return v0

    .line 481
    .end local v1           #newWidth:I
    .local v0, height:I
    .local p0, dm:Landroid/util/DisplayMetrics;
    :cond_43
    move v2, v0

    .line 482
    .local v2, shortSize:I
    move v1, v4

    .local v1, longSize:I
    move v3, v2

    .end local v2           #shortSize:I
    .restart local v3       #shortSize:I
    goto :goto_9

    .line 495
    .end local v1           #longSize:I
    .local v2, newShortSize:I
    .local p0, newLongSize:I
    :cond_47
    move v1, p0

    .line 496
    .local v1, newWidth:I
    move p0, v2

    .local p0, newHeight:I
    goto :goto_29
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "inoutConfig"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 456
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 459
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 460
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 461
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 463
    :cond_1a
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x3f00

    .line 430
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_41

    .line 433
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 439
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 440
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 441
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 442
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 443
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 445
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 446
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    .end local v0           #invertedRatio:F
    :cond_40
    return-void

    .line 435
    :cond_41
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 436
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 517
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 518
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_d

    move v3, v5

    .line 524
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :goto_c
    return v3

    .line 519
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_d
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_15

    move v3, v5

    goto :goto_c

    .line 520
    :cond_15
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    move v3, v5

    goto :goto_c

    .line 521
    :cond_1f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_23} :catch_2b

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    move v3, v5

    goto :goto_c

    .line 522
    :cond_29
    const/4 v3, 0x1

    goto :goto_c

    .line 523
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_2b
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v5

    .line 524
    goto :goto_c
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 554
    const/16 v0, 0x11

    .line 555
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 556
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 557
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 558
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 559
    return v0
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsScreen()Z
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 535
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 540
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 543
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 546
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 569
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 572
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 573
    return-void
.end method
