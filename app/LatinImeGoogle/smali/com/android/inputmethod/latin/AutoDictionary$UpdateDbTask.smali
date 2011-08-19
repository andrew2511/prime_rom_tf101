.class Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "AutoDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AutoDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "openHelper"
    .parameter
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, pendingWrites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    iput-object p3, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    .line 232
    iput-object p4, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    .line 234
    return-void
.end method

.method private getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "word"
    .parameter "frequency"
    .parameter "locale"

    .prologue
    .line 254
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 255
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    .line 238
    iget-object v5, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 240
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 241
    .local v4, mEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 242
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 243
    .local v2, freq:Ljava/lang/Integer;
    const-string v6, "words"

    const-string v7, "word=? AND locale=?"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v8, v9

    const/4 v5, 0x1

    iget-object v9, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    if-eqz v2, :cond_0

    .line 246
    const-string v6, "words"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v6, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 250
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #freq:Ljava/lang/Integer;
    :cond_1
    return-object v10
.end method
