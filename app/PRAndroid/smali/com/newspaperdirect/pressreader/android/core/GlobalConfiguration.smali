.class public Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# static fields
.field public static PAGE_PREVIEW_WIDTH:I

.field public static SCREEN_SIZE:I

.field private static SCREEN_SIZE_EXTRA_LARGE:I

.field private static SCREEN_SIZE_LARGE:I

.field private static SCREEN_SIZE_MEDIUM:I

.field private static SCREEN_SIZE_SMALL:I

.field public static THUMBNAIL_WIDTH:I

.field public static TOC_THUMBNAILS_WIDTH:I

.field public static mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->mIsInitialized:Z

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_SMALL:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_LARGE:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_MEDIUM:I

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_EXTRA_LARGE:I

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x1e0

    const/16 v6, 0x140

    const/16 v5, 0xb4

    const/16 v4, 0x8c

    const/16 v3, 0x78

    .line 24
    sget-boolean v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 57
    .end local p0
    :goto_0
    return-void

    .line 25
    .restart local p0
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->mIsInitialized:Z

    .line 26
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 27
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_1

    .line 28
    sput v5, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    .line 29
    const/16 v1, 0x320

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    .line 30
    sput v4, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->TOC_THUMBNAILS_WIDTH:I

    .line 31
    sget v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_EXTRA_LARGE:I

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    .line 34
    sput v5, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    .line 35
    const/16 v1, 0x258

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    .line 36
    sput v4, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->TOC_THUMBNAILS_WIDTH:I

    .line 37
    sget v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_LARGE:I

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v1, v7, :cond_3

    .line 40
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    .line 41
    sput v7, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    .line 42
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->TOC_THUMBNAILS_WIDTH:I

    .line 43
    sget v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_MEDIUM:I

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v1, v6, :cond_4

    .line 46
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    .line 47
    sput v6, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    .line 48
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->TOC_THUMBNAILS_WIDTH:I

    .line 49
    sget v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_MEDIUM:I

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    goto :goto_0

    .line 52
    :cond_4
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    .line 53
    const/16 v1, 0xf0

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    .line 54
    sput v3, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->TOC_THUMBNAILS_WIDTH:I

    .line 55
    sget v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE_SMALL:I

    sput v1, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    goto/16 :goto_0
.end method
