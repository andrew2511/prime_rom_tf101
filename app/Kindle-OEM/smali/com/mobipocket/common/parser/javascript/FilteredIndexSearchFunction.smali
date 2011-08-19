.class public Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;
.super Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;
.source "FilteredIndexSearchFunction.java"


# instance fields
.field private caption2:Ljava/lang/String;

.field private keyIndexName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "indexName"
    .parameter "keyIndexName"
    .parameter "caption1"
    .parameter "caption2"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->keyIndexName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->caption2:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->keyIndexName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->caption2:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getCaption2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->caption2:Ljava/lang/String;

    return-object v0
.end method

.method getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "filtered_index_search"

    return-object v0
.end method

.method public getKeyIndexName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->keyIndexName:Ljava/lang/String;

    return-object v0
.end method
