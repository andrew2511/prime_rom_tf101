.class public final Lcom/layar/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomSlider:[I = null

.field public static final CustomSlider_allowSingleTap:I = 0x6

.field public static final CustomSlider_animateOnClick:I = 0x7

.field public static final CustomSlider_bottomOffset:I = 0x4

.field public static final CustomSlider_content:I = 0x3

.field public static final CustomSlider_handle:I = 0x1

.field public static final CustomSlider_realHandle:I = 0x2

.field public static final CustomSlider_sliderOrientation:I = 0x0

.field public static final CustomSlider_topOffset:I = 0x5

.field public static final FloaticonLifeWidget:[I = null

.field public static final FloaticonLifeWidget_lowHealthLimit:I = 0x0

.field public static final MultiplyChoiseListPreference:[I = null

.field public static final MultiplyChoiseListPreference_summaryAll:I = 0x4

.field public static final MultiplyChoiseListPreference_summaryEmpty:I = 0x0

.field public static final MultiplyChoiseListPreference_summaryMore:I = 0x3

.field public static final MultiplyChoiseListPreference_summaryOne:I = 0x1

.field public static final MultiplyChoiseListPreference_summaryTwo:I = 0x2

.field public static final PreferenceTheme:[I = null

.field public static final PreferenceTheme_multiplyChoiseListPreference:I = 0x1

.field public static final PreferenceTheme_seekBarPreferenceStyle:I = 0x0

.field public static final ScaleGallery:[I = null

.field public static final ScaleGallery_selectedItemHeight:I = 0x0

.field public static final ScaleGallery_selectedItemWidth:I = 0x1

.field public static final ScaleGallery_unselectedItemAlpha:I = 0x2

.field public static final SeekBarPreference:[I = null

.field public static final SeekBarPreference_valueMax:I = 0x1

.field public static final SeekBarPreference_valueMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2547
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/layar/R$styleable;->CustomSlider:[I

    .line 2687
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2688
    const v2, 0x7f01000c

    aput v2, v0, v1

    .line 2687
    sput-object v0, Lcom/layar/R$styleable;->FloaticonLifeWidget:[I

    .line 2722
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/layar/R$styleable;->MultiplyChoiseListPreference:[I

    .line 2808
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/layar/R$styleable;->PreferenceTheme:[I

    .line 2845
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/layar/R$styleable;->ScaleGallery:[I

    .line 2906
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/layar/R$styleable;->SeekBarPreference:[I

    .line 2519
    return-void

    .line 2547
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2722
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2808
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2845
    :array_3
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 2906
    :array_4
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
