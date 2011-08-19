.class final enum Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType$3;
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
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;-><init>(Ljava/lang/String;ILcom/android/vending/model/QuerySuggestionResponse$1;)V

    return-void
.end method


# virtual methods
.method public getMainText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 1
    .parameter "proto"

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public getSecondaryText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 1
    .parameter "proto"

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method
