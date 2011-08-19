.class interface abstract Lcom/google/android/apps/books/provider/database/VolumesTable$Subquery;
.super Ljava/lang/Object;
.source "VolumesTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/database/VolumesTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Subquery"
.end annotation


# static fields
.field public static final LAST_LOCAL_ACCESS:Ljava/lang/String; = "SELECT MAX(volume_states.last_local_access) FROM volume_states WHERE volume_states.volume_id=volumes.volume_id"

.field public static final PAGE_COUNT:Ljava/lang/String; = "SELECT COUNT(pages.page_id) FROM pages WHERE pages.volume_id=volumes.volume_id"

.field public static final PAGE_FRACTION:Ljava/lang/String; = "SELECT CAST(SUM(pages.content_status=3) AS REAL) / SUM(pages.content_status!=1) FROM pages WHERE pages.volume_id=volumes.volume_id"

.field public static final PINNED:Ljava/lang/String; = "SELECT MAX(volume_states.pinned) FROM volume_states WHERE volume_states.volume_id=volumes.volume_id"

.field public static final RESOURCE_FRACTION:Ljava/lang/String; = "SELECT CAST(SUM(resources.content_status=3) AS REAL) / SUM(resources.content_status!=1) FROM resources WHERE resources.volume_id=volumes.volume_id"

.field public static final SECTION_FRACTION:Ljava/lang/String; = "SELECT CAST(SUM(sections.content_status=3) AS REAL) / SUM(sections.content_status!=1) FROM sections WHERE sections.volume_id=volumes.volume_id"

.field public static final TIMESTAMP:Ljava/lang/String; = "SELECT MAX(collection_volumes.timestamp) FROM collection_volumes WHERE collection_volumes.volume_id=volumes.volume_id"
