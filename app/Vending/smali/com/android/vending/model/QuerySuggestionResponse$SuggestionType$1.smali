.class final enum Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$1;
.super Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;-><init>(Ljava/lang/String;ILcom/android/vending/model/QuerySuggestionResponse$1;)V

    return-void
.end method


# virtual methods
.method public getMainText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 4
    .parameter "proto"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 29
    new-instance v0, Lcom/android/vending/model/Asset;

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    .line 32
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 34
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSecondaryText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 4
    .parameter "proto"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 37
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 40
    new-instance v0, Lcom/android/vending/model/Asset;

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    .line 46
    .local v0, asset:Lcom/android/vending/model/Asset;
    const-string v1, ""

    .line 48
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
