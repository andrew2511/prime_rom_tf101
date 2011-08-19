.class public final Lcom/google/android/youtube/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BasePagedView:[I = null

.field public static final BasePagedView_cacheColorHint:I = 0x0

.field public static final BasePagedView_maxItems:I = 0x3

.field public static final BasePagedView_statusView:I = 0x2

.field public static final BasePagedView_textWhenEmpty:I = 0x1

.field public static final Carousel:[I = null

.field public static final Carousel_background:I = 0xb

.field public static final Carousel_cameraZ:I = 0x5

.field public static final Carousel_cardHeight:I = 0x8

.field public static final Carousel_cardWidth:I = 0x7

.field public static final Carousel_detailHeight:I = 0xa

.field public static final Carousel_detailWidth:I = 0x9

.field public static final Carousel_radius:I = 0x6

.field public static final Carousel_renderscript:I = 0x0

.field public static final Carousel_rowCount:I = 0x1

.field public static final Carousel_rowSpacing:I = 0x2

.field public static final Carousel_slotCount:I = 0x3

.field public static final Carousel_splitDetailViews:I = 0xc

.field public static final Carousel_visibleSlots:I = 0x4

.field public static final PagedGridView:[I = null

.field public static final PagedGridView_columnWidth:I = 0x3

.field public static final PagedGridView_gravity:I = 0x5

.field public static final PagedGridView_horizontalSpacing:I = 0x0

.field public static final PagedGridView_numColumns:I = 0x4

.field public static final PagedGridView_stretchMode:I = 0x2

.field public static final PagedGridView_verticalSpacing:I = 0x1

.field public static final PagedListView:[I = null

.field public static final PagedListView_choiceMode:I = 0x1

.field public static final PagedListView_divider:I

.field public static final TabRow:[I

.field public static final TabRow_tabBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1379
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/youtube/R$styleable;->BasePagedView:[I

    .line 1469
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/youtube/R$styleable;->Carousel:[I

    .line 1677
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/youtube/R$styleable;->PagedGridView:[I

    .line 1796
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/youtube/R$styleable;->PagedListView:[I

    .line 1839
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000c

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/R$styleable;->TabRow:[I

    return-void

    .line 1379
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1469
    :array_1
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1677
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 1796
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
