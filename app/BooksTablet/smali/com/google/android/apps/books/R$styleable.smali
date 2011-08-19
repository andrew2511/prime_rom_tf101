.class public final Lcom/google/android/apps/books/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ListPreference:[I = null

.field public static final ListPreference_entries:I = 0x0

.field public static final ListPreference_entryValues:I = 0x1

.field public static final Preference:[I = null

.field public static final Preference_key:I = 0x0

.field public static final Theme:[I = null

.field public static final Theme_actionBarDrawable:I = 0x1

.field public static final Theme_carouselBackgroundDrawable:I = 0x0

.field public static final Theme_menuAboutDrawable:I = 0x4

.field public static final Theme_menuAccountsDrawable:I = 0x5

.field public static final Theme_menuDeleteDrawable:I = 0x6

.field public static final Theme_menuPinDrawable:I = 0x7

.field public static final Theme_menuSearchDrawable:I = 0x8

.field public static final Theme_menuSettingsDrawable:I = 0x9

.field public static final Theme_menuShopDrawable:I = 0x3

.field public static final Theme_menuTocDrawable:I = 0xa

.field public static final Theme_navigationColor:I = 0x2

.field public static final Theme_nightMode:I = 0xe

.field public static final Theme_scrubberCalloutDrawable:I = 0xc

.field public static final Theme_scrubberDrawable:I = 0xb

.field public static final Theme_scrubberTrackDrawable:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1055
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/books/R$styleable;->ListPreference:[I

    .line 1088
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000f

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    .line 1143
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    return-void

    .line 1055
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1143
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
