.class public final Lcom/google/android/music/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MusicMenuView:[I = null

.field public static final MusicMenuView_maxItemsPerRow:I = 0x1

.field public static final MusicMenuView_maxRows:I = 0x2

.field public static final MusicMenuView_rowHeight:I = 0x0

.field public static final PassClick:[I = null

.field public static final PassClick_clickReceiver:I = 0x0

.field public static final PassClick_passDrawableStateChange:I = 0x1

.field public static final PlayPauseImages:[I = null

.field public static final PlayPauseImages_pauseImage:I = 0x0

.field public static final PlayPauseImages_playImage:I = 0x1

.field public static final PlayPauseImages_stopImage:I = 0x2

.field public static final SizableSeekbar:[I

.field public static final SizableSeekbar_trackHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 2277
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/music/R$styleable;->MusicMenuView:[I

    .line 2336
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/music/R$styleable;->PassClick:[I

    .line 2373
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/music/R$styleable;->PlayPauseImages:[I

    .line 2428
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010003

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/music/R$styleable;->SizableSeekbar:[I

    return-void

    .line 2277
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2336
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2373
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
