.class interface abstract Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumesQuery;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VolumesQuery"
.end annotation


# static fields
.field public static final BUY_URL:I = 0xc

.field public static final CREATOR:I = 0x4

.field public static final DATE:I = 0x5

.field public static final OPEN_ACCESS:I = 0xd

.field public static final PAGE_COUNT:I = 0xe

.field public static final PAGE_FRACTION:I = 0x9

.field public static final PINNED:I = 0xa

.field public static final PREFERRED_MODE:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final RESOURCE_FRACTION:I = 0x8

.field public static final SECTION_FRACTION:I = 0x7

.field public static final THUMBNAIL:I = 0x2

.field public static final TITLE:I = 0x3

.field public static final VIEWABILITY:I = 0xb

.field public static final VOLUME_ID:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1370
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "preferred_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "section_fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "resource_fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "page_fraction"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pinned"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "open_access"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "page_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
