.class public Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;
.super Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;
.source "CondIndexSearchFunction.java"


# instance fields
.field private keyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "indexName"
    .parameter "keyIndexName"
    .parameter "keyName"
    .parameter "caption1"

    .prologue
    .line 19
    const-string v0, ""

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->keyName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->keyName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "cond_index_search"

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->keyName:Ljava/lang/String;

    return-object v0
.end method
