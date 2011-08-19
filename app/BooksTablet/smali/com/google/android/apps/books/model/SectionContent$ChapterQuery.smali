.class public interface abstract Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;
.super Ljava/lang/Object;
.source "SectionContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/SectionContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChapterQuery"
.end annotation


# static fields
.field public static final ALL_PAGES_FORBIDDEN:I = 0x7

.field public static final ALL_SECTIONS_FORBIDDEN:I = 0x6

.field public static final CHAPTER_ID:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SORT_ORDER:Ljava/lang/String; = "chapter_order ASC"

.field public static final START_PAGE_ID:I = 0x4

.field public static final START_PAGE_TITLE:I = 0x5

.field public static final START_SECTION_ID:I = 0x3

.field public static final TITLE:I = 0x2

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "chapter_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "start_section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "start_page_title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "all_sections_forbidden"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "all_page_forbidden"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
