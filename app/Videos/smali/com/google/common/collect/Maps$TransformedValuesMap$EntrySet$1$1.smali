.class Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;,"Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;,"Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, this:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;,"Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->this$1:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/google/common/collect/Maps$TransformedValuesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
