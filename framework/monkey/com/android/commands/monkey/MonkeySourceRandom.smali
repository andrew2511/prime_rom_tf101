.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0xa

.field public static final FACTOR_ANYTHING:I = 0x9

.field public static final FACTOR_APPSWITCH:I = 0x7

.field public static final FACTOR_FLIP:I = 0x8

.field public static final FACTOR_MAJORNAV:I = 0x5

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x4

.field public static final FACTOR_PINCHZOOM:I = 0x2

.field public static final FACTOR_SYSOPS:I = 0x6

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x3

.field private static final GESTURE_DRAG:I = 0x1

.field private static final GESTURE_PINCH_OR_ZOOM:I = 0x2

.field private static final GESTURE_TAP:I

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final PHYSICAL_KEY_EXISTS:[Z

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 36
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_58

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    .line 49
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_60

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    .line 56
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 59
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 62
    :cond_31
    const/4 v0, 0x0

    :goto_32
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 63
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 65
    :cond_4a
    return-void

    .line 36
    nop

    :array_4c
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_58
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_60
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V
    .registers 11
    .parameter "random"
    .parameter
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .local p2, MainApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/high16 v4, 0x4170

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    .line 88
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 91
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    .line 94
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 116
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v4, v0, v2

    .line 117
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x1

    const/high16 v2, 0x4120

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 119
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x4

    const/high16 v2, 0x41c8

    aput v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 121
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 122
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 123
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x9

    const/high16 v2, 0x4150

    aput v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 127
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    .line 128
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 130
    return-void
.end method

.method private adjustEventFactors()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x42c8

    const/16 v10, 0xa

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, userSum:F
    const/4 v1, 0x0

    .line 139
    .local v1, defaultSum:F
    const/4 v0, 0x0

    .line 140
    .local v0, defaultCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    if-ge v4, v10, :cond_24

    .line 141
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_1c

    .line 142
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    .line 140
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 144
    :cond_1c
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    add-float/2addr v1, v7

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 150
    :cond_24
    cmpl-float v7, v6, v11

    if-lez v7, :cond_31

    .line 151
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "** Event weights > 100%"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v12

    .line 192
    :goto_30
    return v7

    .line 156
    :cond_31
    if-nez v0, :cond_4a

    const v7, 0x42c7cccd

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_41

    const v7, 0x42c83333

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4a

    .line 157
    :cond_41
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "** Event weights != 100%"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v12

    .line 158
    goto :goto_30

    .line 162
    :cond_4a
    sub-float v3, v11, v6

    .line 163
    .local v3, defaultsTarget:F
    div-float v2, v3, v1

    .line 166
    .local v2, defaultsAdjustment:F
    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v10, :cond_6d

    .line 167
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_65

    .line 168
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    neg-float v8, v8

    aput v8, v7, v4

    .line 166
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 170
    :cond_65
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v7, v4

    mul-float/2addr v8, v2

    aput v8, v7, v4

    goto :goto_62

    .line 175
    :cond_6d
    iget v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    if-lez v7, :cond_aa

    .line 176
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "// Event percentages:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x0

    :goto_79
    if-ge v4, v10, :cond_aa

    .line 178
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "//   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 182
    :cond_aa
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeys()Z

    move-result v7

    if-nez v7, :cond_b3

    move v7, v12

    .line 183
    goto/16 :goto_30

    .line 187
    :cond_b3
    const/4 v5, 0x0

    .line 188
    .local v5, sum:F
    const/4 v4, 0x0

    :goto_b5
    if-ge v4, v10, :cond_c4

    .line 189
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    div-float/2addr v7, v11

    add-float/2addr v5, v7

    .line 190
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v5, v7, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 192
    :cond_c4
    const/4 v7, 0x1

    goto/16 :goto_30
.end method

.method private generateEvents()V
    .registers 10

    .prologue
    const/4 v8, 0x6

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 376
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 377
    .local v0, cls:F
    const/4 v2, 0x0

    .line 379
    .local v2, lastKey:I
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, v3, v7

    cmpg-float v3, v0, v3

    if-gez v3, :cond_19

    .line 380
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v7}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    .line 427
    :goto_18
    return-void

    .line 382
    :cond_19
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, v3, v6

    cmpg-float v3, v0, v3

    if-gez v3, :cond_27

    .line 383
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_18

    .line 385
    :cond_27
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_35

    .line 386
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_18

    .line 388
    :cond_35
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_44

    .line 389
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    goto :goto_18

    .line 395
    :cond_44
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7b

    .line 396
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v3, v4

    .line 415
    :goto_5a
    const/16 v3, 0x1a

    if-eq v2, v3, :cond_44

    if-eq v2, v8, :cond_44

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_44

    .line 422
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v1, v7, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 423
    .local v1, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 425
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v1           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    invoke-direct {v1, v6, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 426
    .restart local v1       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_18

    .line 397
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_7b
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_92

    .line 398
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v3, v4

    goto :goto_5a

    .line 399
    :cond_92
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, v3, v8

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a8

    .line 400
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v3, v4

    goto :goto_5a

    .line 401
    :cond_a8
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_d1

    .line 402
    new-instance v1, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 404
    .local v1, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_18

    .line 406
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    :cond_d1
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_f2

    .line 407
    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 408
    .local v1, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    if-nez v3, :cond_f0

    move v3, v6

    :goto_e7
    iput-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 409
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_18

    :cond_f0
    move v3, v7

    .line 408
    goto :goto_e7

    .line 412
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_f2
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_5a
.end method

.method private generatePointerEvent(Ljava/util/Random;I)V
    .registers 22
    .parameter "random"
    .parameter "gesture"

    .prologue
    .line 251
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 253
    .local v6, display:Landroid/view/Display;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v10

    .line 254
    .local v10, p1:Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v12

    .line 256
    .local v12, v1:Landroid/graphics/PointF;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 258
    .local v7, downAt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 264
    const/4 v14, 0x1

    move/from16 v0, p2

    move v1, v14

    if-ne v0, v1, :cond_8a

    .line 265
    const/16 v14, 0xa

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 266
    .local v5, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_52
    if-ge v9, v5, :cond_189

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 266
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    .line 274
    .end local v5           #count:I
    .end local v9           #i:I
    :cond_8a
    const/4 v14, 0x2

    move/from16 v0, p2

    move v1, v14

    if-ne v0, v1, :cond_189

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v11

    .line 276
    .local v11, p2:Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v13

    .line 278
    .local v13, v2:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x105

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 285
    const/16 v14, 0xa

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 286
    .restart local v5       #count:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_ea
    if-ge v9, v5, :cond_13c

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v11

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_ea

    .line 296
    :cond_13c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v11

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x106

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 305
    .end local v5           #count:I
    .end local v9           #i:I
    .end local v11           #p2:Landroid/graphics/PointF;
    .end local v13           #v2:Landroid/graphics/PointF;
    :cond_189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 310
    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .registers 15
    .parameter "random"

    .prologue
    .line 342
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 344
    .local v3, display:Landroid/view/Display;
    const/4 v6, 0x0

    .line 345
    .local v6, drop:Z
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 346
    .local v0, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_10
    const/16 v8, 0xa

    if-ge v7, v8, :cond_44

    .line 348
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/4 v9, 0x5

    sub-int v1, v8, v9

    .line 349
    .local v1, dX:I
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/4 v9, 0x5

    sub-int v2, v8, v9

    .line 351
    .local v2, dY:I
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    const/4 v10, 0x0

    int-to-float v11, v1

    int-to-float v12, v2

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    if-lez v7, :cond_42

    const/4 v10, 0x1

    :goto_38
    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 346
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 351
    :cond_42
    const/4 v10, 0x0

    goto :goto_38

    .line 357
    .end local v1           #dX:I
    .end local v2           #dY:I
    :cond_44
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    if-nez v8, :cond_86

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 360
    .local v4, downAt:J
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 365
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 370
    .end local v4           #downAt:J
    :cond_86
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .registers 2
    .parameter "keyName"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .registers 2
    .parameter "keycode"

    .prologue
    .line 97
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;
    .registers 6
    .parameter "random"
    .parameter "display"

    .prologue
    .line 313
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomVector(Ljava/util/Random;)Landroid/graphics/PointF;
    .registers 7
    .parameter "random"

    .prologue
    const/high16 v4, 0x4248

    const/high16 v3, 0x3f00

    .line 317
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 9
    .parameter "random"
    .parameter "display"
    .parameter "point"
    .parameter "vector"

    .prologue
    const/4 v3, 0x0

    .line 321
    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 323
    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 325
    return-void
.end method

.method private static validateKeyCategory(Ljava/lang/String;[IF)Z
    .registers 7
    .parameter "catName"
    .parameter "keys"
    .parameter "factor"

    .prologue
    const/4 v3, 0x1

    .line 196
    const v1, 0x3dcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_a

    move v1, v3

    .line 205
    :goto_9
    return v1

    .line 199
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 200
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget v2, p1, v0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_18

    move v1, v3

    .line 201
    goto :goto_9

    .line 199
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 204
    :cond_1b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no physical keys but with factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private validateKeys()Z
    .registers 5

    .prologue
    .line 212
    const-string v0, "NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "MAJOR_NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "SYS_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public generateActivity()V
    .registers 5

    .prologue
    .line 442
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 444
    .local v0, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 445
    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 3

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 453
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    .line 455
    :cond_b
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 456
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    .line 457
    .local v0, e:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    .line 458
    return-object v0
.end method

.method public setFactors(IF)V
    .registers 4
    .parameter "index"
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput p2, v0, p1

    .line 233
    return-void
.end method

.method public setFactors([F)V
    .registers 6
    .parameter "factors"

    .prologue
    .line 223
    const/16 v0, 0xa

    .line 224
    .local v0, c:I
    array-length v2, p1

    if-ge v2, v0, :cond_6

    .line 225
    array-length v0, p1

    .line 227
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 228
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, p1, v1

    aput v3, v2, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 229
    :cond_12
    return-void
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 435
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 436
    return-void
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    move-result v0

    return v0
.end method
