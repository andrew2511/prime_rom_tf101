.class public Lcom/google/android/youtube/app/suggest/SuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "SuggestionCursor.java"


# static fields
.field private static COLUMN_NAMES:[Ljava/lang/String;


# instance fields
.field private suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    iget v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->mPos:I

    int-to-long v0, v0

    .line 89
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->mPos:I

    if-gez v0, :cond_0

    .line 47
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->mPos:I

    iget-object v1, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 49
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;

    iget-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;->suggestion:Ljava/lang/String;

    .line 54
    :goto_0
    return-object v0

    .restart local p0
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSuggestions(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;>;"
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;

    .line 60
    .local v1, suggestion:Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v1           #suggestion:Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;
    :cond_0
    return-void
.end method
