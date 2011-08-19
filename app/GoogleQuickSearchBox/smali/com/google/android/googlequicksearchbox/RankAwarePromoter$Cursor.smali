.class Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
.super Ljava/lang/Object;
.source "RankAwarePromoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/RankAwarePromoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cursor"
.end annotation


# instance fields
.field private mPos:I

.field private final mShouldGroupResults:Z

.field private final mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionList;Z)V
    .locals 1
    .parameter "suggestions"
    .parameter "shouldGroupResults"

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    .line 322
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 323
    iput-boolean p2, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mShouldGroupResults:Z

    .line 324
    return-void
.end method


# virtual methods
.method public current()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    return v0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getCount()I

    move-result v0

    .line 339
    .local v0, size:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    if-lt v1, v0, :cond_0

    move v1, v2

    .line 343
    :goto_0
    return v1

    .line 342
    :cond_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    .line 343
    iget v1, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mPos:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public shouldGroupResults()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->mShouldGroupResults:Z

    return v0
.end method
