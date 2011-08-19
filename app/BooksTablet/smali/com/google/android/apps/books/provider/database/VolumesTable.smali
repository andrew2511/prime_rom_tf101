.class Lcom/google/android/apps/books/provider/database/VolumesTable;
.super Ljava/lang/Object;
.source "VolumesTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/VolumesTable$Subquery;,
        Lcom/google/android/apps/books/provider/database/VolumesTable$Qualified;
    }
.end annotation


# static fields
.field public static final CLEAR_COVER_TRIGGER:Ljava/lang/String; = "clear_cover"

.field public static final TABLE_NAME:Ljava/lang/String; = "volumes"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_volumes"

.field private static final sColumnToClass:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->createColumnToClass()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/database/VolumesTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method private static createColumnToClass()Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const-class v4, Ljava/lang/Integer;

    const-class v3, Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "volume_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "title"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "sortable_title"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "creator"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "sortable_creator"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "publisher"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "description"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "cover_url"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "cover_content_status"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "open_access"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "viewability"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "buy_url"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "first_chapter_start_section"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "preferred_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "has_text_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "has_image_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "date"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "version"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "content_version"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method public static getColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/apps/books/provider/database/VolumesTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCoverUrlChangeTriggerSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "CREATE TRIGGER clear_cover AFTER UPDATE OF cover_url ON volumes WHEN NEW.cover_url!=OLD.cover_url BEGIN  UPDATE volumes  SET cover_content_status=0  WHERE volume_id=NEW.volume_id; END"

    return-object v0
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "CREATE TABLE volumes (_id INTEGER, volume_id TEXT PRIMARY KEY, title TEXT NOT NULL, sortable_title TEXT, creator TEXT, sortable_creator TEXT, publisher TEXT, description TEXT, cover_url TEXT, cover_content_status INTEGER NOT NULL DEFAULT 0, open_access TEXT, viewability TEXT, buy_url TEXT, first_chapter_start_section INTEGER, preferred_mode INTEGER, has_text_mode INTEGER NOT NULL DEFAULT 0, has_image_mode INTEGER NOT NULL DEFAULT 0, date TEXT, version TEXT NOT NULL, content_version TEXT)"

    return-object v0
.end method

.method public static getViewSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "CREATE VIEW view_volumes AS SELECT volumes.*, (SELECT CAST(SUM(sections.content_status=3) AS REAL) / SUM(sections.content_status!=1) FROM sections WHERE sections.volume_id=volumes.volume_id) AS section_fraction, (SELECT CAST(SUM(resources.content_status=3) AS REAL) / SUM(resources.content_status!=1) FROM resources WHERE resources.volume_id=volumes.volume_id) AS resource_fraction, (SELECT CAST(SUM(pages.content_status=3) AS REAL) / SUM(pages.content_status!=1) FROM pages WHERE pages.volume_id=volumes.volume_id) AS page_fraction, (SELECT COUNT(pages.page_id) FROM pages WHERE pages.volume_id=volumes.volume_id) AS page_count, (SELECT MAX(volume_states.last_local_access) FROM volume_states WHERE volume_states.volume_id=volumes.volume_id) AS max_last_local_access, (SELECT MAX(volume_states.pinned) FROM volume_states WHERE volume_states.volume_id=volumes.volume_id) AS pinned, (SELECT MAX(collection_volumes.timestamp) FROM collection_volumes WHERE collection_volumes.volume_id=volumes.volume_id) AS max_collection_volumes_timestamp FROM volumes GROUP BY volumes.volume_id"

    return-object v0
.end method
