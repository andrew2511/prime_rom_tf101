.class Lcom/google/android/apps/books/provider/database/ChaptersTable;
.super Ljava/lang/Object;
.source "ChaptersTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/ChaptersTable$Subquery;,
        Lcom/google/android/apps/books/provider/database/ChaptersTable$Qualified;
    }
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "chapters"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_chapters"

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
    .line 26
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ChaptersTable;->createColumnToClass()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/database/ChaptersTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private static createColumnToClass()Ljava/util/LinkedHashMap;
    .locals 4
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
    const-class v3, Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "volume_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "chapter_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "chapter_order"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "title"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "start_section_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "start_page_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
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
    .line 44
    sget-object v0, Lcom/google/android/apps/books/provider/database/ChaptersTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const-string v1, "REFERENCES sections(section_id)"

    .line 51
    .local v1, refSectionId:Ljava/lang/String;
    const-string v0, "REFERENCES pages(page_id)"

    .line 56
    .local v0, refPageId:Ljava/lang/String;
    const-string v2, "CREATE TABLE chapters (_id INTEGER PRIMARY KEY AUTOINCREMENT, volume_id TEXT NOT NULL, chapter_id TEXT NOT NULL, chapter_order INTEGER NOT NULL, title TEXT NOT NULL, start_section_id TEXT NOT NULL REFERENCES sections(section_id), start_page_id TEXT NOT NULL REFERENCES pages(page_id), UNIQUE (volume_id, chapter_id) ON CONFLICT REPLACE)"

    return-object v2
.end method

.method public static getViewSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "CREATE VIEW view_chapters AS SELECT chapters.*, (SELECT pages.title FROM pages WHERE pages.volume_id=chapters.volume_id AND pages.page_id=chapters.start_page_id) AS start_page_title, (CASE EXISTS (SELECT 1 FROM sections WHERE sections.volume_id=chapters.volume_id AND sections.chapter_id=chapters.chapter_id AND sections.content_status!=1) WHEN 1 THEN 0 ELSE 1 END) AS all_sections_forbidden, (CASE EXISTS (SELECT 1 FROM pages WHERE pages.volume_id=chapters.volume_id AND pages.first_chapter_id=chapters.chapter_id AND pages.content_status!=1) WHEN 1 THEN 0 ELSE 1 END) AS all_page_forbidden FROM chapters"

    return-object v0
.end method
