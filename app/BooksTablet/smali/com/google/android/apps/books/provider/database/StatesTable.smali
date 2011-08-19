.class Lcom/google/android/apps/books/provider/database/StatesTable;
.super Ljava/lang/Object;
.source "StatesTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "volume_states"

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
    invoke-static {}, Lcom/google/android/apps/books/provider/database/StatesTable;->createColumnToClass()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/database/StatesTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static createColumnToClass()Ljava/util/LinkedHashMap;
    .locals 6
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
    const-class v5, Ljava/lang/Integer;

    const-class v4, Ljava/lang/Long;

    const-class v3, Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "account_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "volume_id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "position"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "last_access"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "last_local_access"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "last_action"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "pinned"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "last_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
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
    .line 46
    sget-object v0, Lcom/google/android/apps/books/provider/database/StatesTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "CREATE TABLE volume_states (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), position TEXT, last_access INTEGER NOT NULL DEFAULT 0, last_local_access INTEGER NOT NULL DEFAULT 0, last_action TEXT DEFAULT NULL, pinned INTEGER NOT NULL DEFAULT 0, last_mode INTEGER NOT NULL DEFAULT -1, UNIQUE (volume_id, account_name) )"

    return-object v0
.end method
