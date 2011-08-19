.class public Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;
.super Landroid/database/AbstractCursor;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/QuerySuggestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestServerResultCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

.field final synthetic this$0:Lcom/android/vending/model/QuerySuggestionResponse;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/QuerySuggestionResponse;Lcom/android/vending/model/QuerySuggestionResponse;)V
    .locals 3
    .parameter
    .parameter "suggestions"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->this$0:Lcom/android/vending/model/QuerySuggestionResponse;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 256
    const/4 v0, 0x5

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

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    .line 262
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    .line 272
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x5

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/QuerySuggestionResponse;->getNumSuggestions()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 298
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 308
    iget v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 314
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v1, v2}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v0

    .line 316
    .local v0, suggestionType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    if-ne v0, v1, :cond_0

    .line 317
    const-wide/32 v1, 0x7f030000

    .line 322
    .end local v0           #suggestionType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :goto_0
    return-wide v1

    .line 319
    .restart local v0       #suggestionType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :cond_0
    const-wide/32 v1, 0x108004f

    goto :goto_0

    .line 322
    .end local v0           #suggestionType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_0

    .line 342
    const-string v2, ""

    :goto_0
    return-object v2

    .line 334
    :pswitch_0
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v0

    .line 335
    .local v0, suggType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->getMainText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 337
    .end local v0           #suggType:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :pswitch_1
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v1

    .line 338
    .local v1, suggTypeSecondary:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->getSecondaryText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 340
    .end local v1           #suggTypeSecondary:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
