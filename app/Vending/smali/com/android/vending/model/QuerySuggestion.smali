.class public Lcom/android/vending/model/QuerySuggestion;
.super Ljava/lang/Object;
.source "QuerySuggestion.java"


# instance fields
.field protected mSuggestionProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "suggestionProto"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/vending/model/QuerySuggestion;->mSuggestionProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestion;->mSuggestionProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
