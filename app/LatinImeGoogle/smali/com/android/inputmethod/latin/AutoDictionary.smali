.class public Lcom/android/inputmethod/latin/AutoDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "AutoDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;,
        Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;


# instance fields
.field private mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashMap;
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

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 81
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word"

    const-string v2, "word"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "ime"
    .parameter "locale"
    .parameter "dicTypeId"

    .prologue
    .line 90
    invoke-direct {p0, p1, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 91
    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 92
    iput-object p3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->loadDictionary()V

    .line 99
    :cond_1
    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 210
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "words"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 211
    sget-object v3, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 214
    sget-object v3, Lcom/android/inputmethod/latin/AutoDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 215
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "freq DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .locals 6
    .parameter "newWord"
    .parameter "addFrequency"

    .prologue
    .line 143
    move-object v2, p1

    .line 144
    .local v2, word:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 146
    .local v1, length:I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getMaxWordLength()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->isAutoCapitalized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 152
    .local v0, freq:I
    if-gez v0, :cond_4

    move v0, p2

    .line 153
    :goto_1
    invoke-super {p0, v2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 155
    const/16 v3, 0xc

    if-lt v0, v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    const/16 v4, 0xfa

    invoke-virtual {v3, v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->promoteToUserDictionary(Ljava/lang/String;I)V

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    if-nez v0, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 152
    :cond_4
    add-int v3, v0, p2

    move v0, v3

    goto :goto_1

    .line 162
    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public close()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->flushPendingWrites()V

    .line 114
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 115
    return-void
.end method

.method public flushPendingWrites()V
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/AutoDictionary;->sOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    iget-object v4, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/AutoDictionary$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    .local v0, frequency:I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    .end local v0           #frequency:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadDictionaryAsync()V
    .locals 9

    .prologue
    .line 120
    const-string v5, "locale=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/inputmethod/latin/AutoDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const-string v5, "word"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, wordIndex:I
    const-string v5, "freq"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, frequencyIndex:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, word:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 130
    .local v1, frequency:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getMaxWordLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 131
    invoke-super {p0, v3, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 133
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    .end local v1           #frequency:I
    .end local v2           #frequencyIndex:I
    .end local v3           #word:Ljava/lang/String;
    .end local v4           #wordIndex:I
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    return-void
.end method
