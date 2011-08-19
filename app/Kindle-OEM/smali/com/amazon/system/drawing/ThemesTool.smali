.class public Lcom/amazon/system/drawing/ThemesTool;
.super Ljava/lang/Object;
.source "ThemesTool.java"


# static fields
.field public static final NB_THEMES:I = 0x6

.field public static final THEME_BEACH:I = 0x5

.field public static final THEME_BLUE:I = 0x3

.field public static final THEME_DEFAULT:I = 0x0

.field public static final THEME_GREEN:I = 0x4

.field public static final THEME_HIGH_CONTRAST:I = 0x2

.field public static final THEME_INVERTED:I = 0x1

.field private static themes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x0t
        0x0t 0xfft 0xfft 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0x0t 0xfft 0xfft 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0xfft 0xfft 0x0t
        0x0t 0x0t 0xfft 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xaat 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0x0t
        0xfft 0xfft 0x94t 0x0t
        0x94t 0x94t 0xfft 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0x0t 0xfft 0xfft 0x0t
        0x0t 0xaat 0x55t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0xaat 0x0t
        0x94t 0xfft 0xf1t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTheme(I)[I
    .locals 1
    .parameter "themeID"

    .prologue
    .line 112
    sget-object v0, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getThemeIDFromColors(IIII)I
    .locals 3
    .parameter "textColor"
    .parameter "linkColor"
    .parameter "bgColor"
    .parameter "highlightColor"

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p0, v1, :cond_0

    sget-object v1, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v1, v1, v2

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/amazon/system/drawing/ThemesTool;->themes:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne p3, v1, :cond_0

    move v1, v0

    .line 133
    :goto_1
    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
