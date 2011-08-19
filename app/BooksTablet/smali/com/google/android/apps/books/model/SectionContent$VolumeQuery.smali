.class public interface abstract Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;
.super Ljava/lang/Object;
.source "SectionContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/SectionContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeQuery"
.end annotation


# static fields
.field public static final BUY_URL:I = 0x4

.field public static final CREATOR:I = 0x0

.field public static final FIRST_CHAPTER_START_SECTION:I = 0x3

.field public static final HAS_IMAGE_MODE:I = 0x2

.field public static final OPEN_ACCESS:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TITLE:I = 0x1

.field public static final VIEWABILITY:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_image_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "first_chapter_start_section"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "open_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
