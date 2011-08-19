.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final PROJECTION_ADD:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v0, v2

    const-string v1, "frequency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "frequency"

    aput-object v1, v0, v3

    const-string v1, "locale"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 44
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 58
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 140
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v3

    .line 142
    .local v3, maxWordLength:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    const-string v5, "word"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, indexWord:I
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, indexFrequency:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, word:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 150
    .local v0, frequency:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 151
    invoke-super {p0, v4, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 153
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 156
    .end local v0           #frequency:I
    .end local v1           #indexFrequency:I
    .end local v2           #indexWord:I
    .end local v4           #word:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 6
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getRequiresReload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionaryAsync()V

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_1

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 95
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "word"

    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "appid"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 102
    .local v3, contentResolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/inputmethod/latin/UserDictionary$2;

    const-string v2, "addWord"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/UserDictionary$2;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary$2;->start()V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 1
    .parameter "codes"
    .parameter "callback"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    const-string v3, "(locale IS NULL) or (locale=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 75
    return-void
.end method
