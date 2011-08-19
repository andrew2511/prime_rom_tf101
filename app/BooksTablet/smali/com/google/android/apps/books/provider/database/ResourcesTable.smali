.class Lcom/google/android/apps/books/provider/database/ResourcesTable;
.super Ljava/lang/Object;
.source "ResourcesTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "resources"

.field public static final VIEW_NAME:Ljava/lang/String; = "view_resources"


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
    const-string v0, "REFERENCES sections(section_id)"

    .line 34
    .local v0, refSectionId:Ljava/lang/String;
    const-string v1, "REFERENCES session_keys(_id)"

    .line 36
    .local v1, refSessionKeyId:Ljava/lang/String;
    const-string v3, "CREATE TABLE resources (_id INTEGER PRIMARY KEY AUTOINCREMENT, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), resource_id TEXT NOT NULL, related_section_id TEXT REFERENCES sections(section_id), resource_order INTEGER NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, encrypted INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), UNIQUE (volume_id, resource_id) ON CONFLICT REPLACE)"

    return-object v3
.end method

.method public static getViewSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "CREATE VIEW view_resources AS SELECT resources.*, session_keys.account_name AS account_name, session_keys.session_key_version AS session_key_version, session_keys.root_key_version AS root_key_version, session_keys.session_key_blob AS session_key_blob FROM resources LEFT OUTER JOIN session_keys ON session_keys._id=resources.session_key_id"

    return-object v0
.end method
