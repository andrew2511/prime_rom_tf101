.class public Lcom/google/android/gm/template/Template;
.super Lcom/google/android/gm/template/Command;
.source "Template.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private final mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 16
    const-string v0, "Anonymous"

    iput-object v0, p0, Lcom/google/android/gm/template/Template;->mName:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/google/android/gm/template/Template;->mNodes:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/gm/template/Template;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/android/gm/template/Template;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, numNodes:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 35
    iget-object v3, p0, Lcom/google/android/gm/template/Template;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/template/Node;

    .line 36
    .local v1, node:Lcom/google/android/gm/template/Node;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gm/template/Node;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v1           #node:Lcom/google/android/gm/template/Node;
    :cond_0
    return-void
.end method
