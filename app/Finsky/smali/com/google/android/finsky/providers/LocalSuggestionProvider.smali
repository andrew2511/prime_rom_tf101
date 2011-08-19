.class public Lcom/google/android/finsky/providers/LocalSuggestionProvider;
.super Lcom/google/android/finsky/providers/SuggestionProvider;
.source "LocalSuggestionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/providers/SuggestionProvider;-><init>()V

    .line 42
    const-string v0, "com.google.android.finsky.LocalSuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/LocalSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected addLastRowIfNeeded(Landroid/database/MatrixCursor;)V
    .locals 4
    .parameter "matrixCursor"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v1, Lcom/google/android/finsky/providers/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 66
    .local v0, row:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 68
    const/4 v1, 0x1

    const v2, 0x7f02001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/LocalSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 75
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/LocalSuggestionProvider;->getQuery()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    const/4 v1, 0x5

    const-string v2, "allResults"

    aput-object v2, v0, v1

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getMaxItemsToDisplay(Ljava/util/List;)I
    .locals 2
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
    .line 52
    .local p1, listDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
