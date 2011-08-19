.class Lcom/google/android/apps/books/provider/database/SectionsTable;
.super Ljava/lang/Object;
.source "SectionsTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "sections"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_sections"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v2, "REFERENCES volumes(volume_id)"

    .line 32
    .local v2, refVolumeId:Ljava/lang/String;
    const-string v0, "REFERENCES chapters(chapter_id)"

    .line 34
    .local v0, refChapterId:Ljava/lang/String;
    const-string v1, "REFERENCES session_keys(_id)"

    .line 36
    .local v1, refSessionKeyId:Ljava/lang/String;
    const-string v3, "CREATE TABLE sections (_id INTEGER PRIMARY KEY AUTOINCREMENT, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), section_id TEXT NOT NULL, title TEXT NOT NULL, section_order INTEGER NOT NULL, chapter_id TEXT NOT NULL REFERENCES chapters(chapter_id), page_count INTEGER NOT NULL DEFAULT 0, start_position TEXT NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, encrypted INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), style_css TEXT, UNIQUE (volume_id, section_id) ON CONFLICT REPLACE)"

    return-object v3
.end method

.method public static getViewSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "CREATE VIEW view_sections AS SELECT sections.*, session_keys.account_name AS account_name, session_keys.session_key_version AS session_key_version, session_keys.root_key_version AS root_key_version, session_keys.session_key_blob AS session_key_blob FROM sections LEFT OUTER JOIN session_keys ON session_keys._id=sections.session_key_id"

    return-object v0
.end method
