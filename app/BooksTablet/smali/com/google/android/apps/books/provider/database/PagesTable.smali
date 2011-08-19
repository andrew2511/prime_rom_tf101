.class Lcom/google/android/apps/books/provider/database/PagesTable;
.super Ljava/lang/Object;
.source "PagesTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "pages"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_pages"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    const-string v3, "REFERENCES volumes(volume_id)"

    .line 30
    .local v3, refVolumeId:Ljava/lang/String;
    const-string v0, "REFERENCES chapters(chapter_id)"

    .line 32
    .local v0, refChapterId:Ljava/lang/String;
    const-string v1, "REFERENCES sections(section_id)"

    .line 34
    .local v1, refSectionId:Ljava/lang/String;
    const-string v2, "REFERENCES session_keys(_id)"

    .line 36
    .local v2, refSessionKeyId:Ljava/lang/String;
    const-string v4, "CREATE TABLE pages (_id INTEGER PRIMARY KEY AUTOINCREMENT, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), page_id TEXT NOT NULL, title TEXT, page_order INTEGER NOT NULL, remote_url TEXT, cc_box_x INTEGER, cc_box_y INTEGER, cc_box_w INTEGER, cc_box_h INTEGER, first_section_id TEXT REFERENCES sections(section_id), last_section_id TEXT REFERENCES sections(section_id), first_chapter_id TEXT REFERENCES chapters(chapter_id), content_status INTEGER NOT NULL DEFAULT 0, encrypted INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), UNIQUE (volume_id, page_id) ON CONFLICT REPLACE)"

    return-object v4
.end method

.method public static getIndexSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "CREATE INDEX IF NOT EXISTS pages_chapter_index ON pages (volume_id, first_chapter_id);"

    return-object v0
.end method

.method public static getViewSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "CREATE VIEW view_pages AS SELECT pages.*, session_keys.account_name AS account_name, session_keys.session_key_version AS session_key_version, session_keys.root_key_version AS root_key_version, session_keys.session_key_blob AS session_key_blob FROM pages LEFT OUTER JOIN session_keys ON session_keys._id=pages.session_key_id"

    return-object v0
.end method
