.class public Lcom/asus/livewallpaper/gl/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"


# static fields
.field public static BUBBLEIDS:[I

.field public static CHARGEBUBBLEIDS:[I

.field private static sCache:Lcom/asus/livewallpaper/gl/Bubble;

.field private static sCacheLock:[I

.field private static sCacheUsed:I


# instance fields
.field public bitmapid:I

.field public id:F

.field private mNext:Lcom/asus/livewallpaper/gl/Bubble;

.field private mRecycled:Z

.field public offset:F

.field public shift:F

.field public speed:F

.field public tX:F

.field public tY:F

.field public type:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/asus/livewallpaper/gl/Bubble;->sCacheLock:[I

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/livewallpaper/gl/Bubble;->BUBBLEIDS:[I

    .line 25
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/asus/livewallpaper/gl/Bubble;->CHARGEBUBBLEIDS:[I

    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(FFFII)V
    .locals 4
    .parameter "id"
    .parameter "x"
    .parameter "y"
    .parameter "type"
    .parameter "bitmapid"

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->mRecycled:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->mNext:Lcom/asus/livewallpaper/gl/Bubble;

    .line 79
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->id:F

    .line 80
    iput v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->type:I

    .line 81
    iput v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    .line 82
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    .line 83
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    .line 84
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->tX:F

    .line 85
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->tY:F

    .line 87
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .line 88
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    .line 89
    iput v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    .line 97
    iput p1, p0, Lcom/asus/livewallpaper/gl/Bubble;->id:F

    .line 98
    iput p2, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    .line 99
    iput p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    .line 100
    iput p4, p0, Lcom/asus/livewallpaper/gl/Bubble;->type:I

    .line 101
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .line 102
    iput v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    .line 103
    iput v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    .line 104
    iput p5, p0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    .line 105
    return-void
.end method

.method public static obtain(FFFII)Lcom/asus/livewallpaper/gl/Bubble;
    .locals 8
    .parameter "id"
    .parameter "x"
    .parameter "y"
    .parameter "type"
    .parameter "bitmapid"

    .prologue
    .line 34
    sget-object v7, Lcom/asus/livewallpaper/gl/Bubble;->sCacheLock:[I

    monitor-enter v7

    .line 36
    :try_start_0
    sget-object v0, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/asus/livewallpaper/gl/Bubble;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/livewallpaper/gl/Bubble;-><init>(FFFII)V

    monitor-exit v7

    .line 57
    :goto_0
    return-object v0

    .line 40
    :cond_0
    sget-object v6, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    .line 41
    .local v6, tmp:Lcom/asus/livewallpaper/gl/Bubble;
    iget-object v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->mNext:Lcom/asus/livewallpaper/gl/Bubble;

    sput-object v0, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    .line 43
    sget v0, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->mNext:Lcom/asus/livewallpaper/gl/Bubble;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->mRecycled:Z

    .line 47
    iput p0, v6, Lcom/asus/livewallpaper/gl/Bubble;->id:F

    .line 48
    iput p4, v6, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    .line 49
    iput p1, v6, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    .line 50
    iput p2, v6, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    .line 51
    iput p3, v6, Lcom/asus/livewallpaper/gl/Bubble;->type:I

    .line 52
    const/4 v0, 0x0

    iput v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .line 53
    const/4 v0, 0x0

    iput v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    .line 54
    const/high16 v0, 0x3f00

    iput v0, v6, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    .line 57
    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 59
    .end local v6           #tmp:Lcom/asus/livewallpaper/gl/Bubble;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/asus/livewallpaper/gl/Bubble;->sCacheLock:[I

    monitor-enter v0

    .line 118
    :try_start_0
    sget v1, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 119
    sget v1, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/asus/livewallpaper/gl/Bubble;->sCacheUsed:I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->mRecycled:Z

    .line 122
    sget-object v1, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    iput-object v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->mNext:Lcom/asus/livewallpaper/gl/Bubble;

    .line 123
    sput-object p0, Lcom/asus/livewallpaper/gl/Bubble;->sCache:Lcom/asus/livewallpaper/gl/Bubble;

    .line 125
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 130
    iput p1, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    .line 131
    iput p2, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    .line 132
    return-void
.end method

.method public setTranslate(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 138
    iput p1, p0, Lcom/asus/livewallpaper/gl/Bubble;->tX:F

    .line 139
    iput p2, p0, Lcom/asus/livewallpaper/gl/Bubble;->tY:F

    .line 140
    return-void
.end method
