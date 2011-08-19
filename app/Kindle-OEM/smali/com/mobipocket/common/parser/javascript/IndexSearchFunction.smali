.class public Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;
.super Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;
.source "IndexSearchFunction.java"


# instance fields
.field private caption1:Ljava/lang/String;

.field private indexName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "indexName"
    .parameter "caption1"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->indexName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->caption1:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->indexName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->caption1:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getCaption1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->caption1:Ljava/lang/String;

    return-object v0
.end method

.method getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "index_search"

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->indexName:Ljava/lang/String;

    return-object v0
.end method
