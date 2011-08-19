.class public Lcom/google/android/finsky/providers/SuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SuggestionProvider.java"


# static fields
.field protected static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/providers/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 86
    const-string v0, "com.google.android.finsky.SuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/SuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method private emptyCursor()Landroid/database/MatrixCursor;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/finsky/providers/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private removeEllipsis(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "originalString"

    .prologue
    .line 240
    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p1

    .line 247
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected addLastRowIfNeeded(Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter "matrixCursor"

    .prologue
    .line 220
    return-void
.end method

.method protected getMaxItemsToDisplay(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, listDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/providers/SuggestionProvider;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 100
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move v6, v0

    if-nez v6, :cond_1

    .line 101
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SelectionArgs must be provided for the Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 106
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 122
    .local v14, listDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    new-instance v18, Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 125
    .local v18, sem:Ljava/util/concurrent/Semaphore;
    const/4 v6, 0x0

    aget-object v16, p4, v6

    .line 126
    .local v16, query:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/providers/SuggestionProvider;->mQuery:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/providers/SuggestionProvider;->mQuery:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/finsky/api/DfeApi;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, url:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    .line 133
    .local v4, api:Lcom/google/android/finsky/api/DfeApi;
    const/4 v6, 0x0

    const/16 v7, 0x64

    new-instance v8, Lcom/google/android/finsky/providers/SuggestionProvider$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/providers/SuggestionProvider$1;-><init>(Lcom/google/android/finsky/providers/SuggestionProvider;Ljava/util/List;Ljava/util/concurrent/Semaphore;)V

    new-instance v9, Lcom/google/android/finsky/providers/SuggestionProvider$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/providers/SuggestionProvider$2;-><init>(Lcom/google/android/finsky/providers/SuggestionProvider;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/finsky/api/DfeApi;->search(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 161
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/providers/SuggestionProvider;->emptyCursor()Landroid/database/MatrixCursor;

    move-result-object v6

    .line 196
    :goto_0
    return-object v6

    .line 162
    :catch_0
    move-exception v12

    .line 163
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/providers/SuggestionProvider;->emptyCursor()Landroid/database/MatrixCursor;

    move-result-object v6

    goto :goto_0

    .line 172
    .end local v12           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v15, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/google/android/finsky/providers/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v15, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 173
    .local v15, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/providers/SuggestionProvider;->getMaxItemsToDisplay(Ljava/util/List;)I

    move-result v6

    if-ge v13, v6, :cond_3

    .line 174
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    .line 175
    .local v11, doc:Lcom/google/android/finsky/api/model/Document;
    sget-object v6, Lcom/google/android/finsky/providers/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    array-length v6, v6

    move v0, v6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 177
    .local v17, row:[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v17, v6

    .line 179
    const/4 v6, 0x1

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/CorpusMetadata;->getIconResource(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v17, v6

    .line 181
    const/4 v6, 0x2

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/finsky/providers/SuggestionProvider;->removeEllipsis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 183
    const/4 v6, 0x3

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 185
    const/4 v6, 0x4

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 188
    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, detailsUrl:Ljava/lang/String;
    const/4 v6, 0x5

    aput-object v10, v17, v6

    .line 190
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 173
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 194
    .end local v10           #detailsUrl:Ljava/lang/String;
    .end local v11           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v17           #row:[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/providers/SuggestionProvider;->addLastRowIfNeeded(Landroid/database/MatrixCursor;)V

    move-object v6, v15

    .line 196
    goto :goto_0
.end method
