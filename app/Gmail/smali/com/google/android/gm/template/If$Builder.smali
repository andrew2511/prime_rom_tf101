.class public Lcom/google/android/gm/template/If$Builder;
.super Ljava/lang/Object;
.source "If.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/template/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDefault:Z

.field private final mNodeLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/template/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/template/If$Builder;->mConditions:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/template/If$Builder;->mNodeLists:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/template/If$Builder;->mHasDefault:Z

    .line 87
    return-void
.end method


# virtual methods
.method public addCondition(Lcom/google/android/gm/template/Expression;)Lcom/google/android/gm/template/If$Builder;
    .locals 2
    .parameter "condition"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/gm/template/If$Builder;->mHasDefault:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add more conditions after default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/If$Builder;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/google/android/gm/template/If$Builder;->mNodeLists:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method

.method public addDefault()Lcom/google/android/gm/template/If$Builder;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/gm/template/Constant;->TRUE:Lcom/google/android/gm/template/Constant;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/template/If$Builder;->addCondition(Lcom/google/android/gm/template/Expression;)Lcom/google/android/gm/template/If$Builder;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/template/If$Builder;->mHasDefault:Z

    .line 125
    return-object p0
.end method

.method public addNode(Lcom/google/android/gm/template/Node;)Lcom/google/android/gm/template/If$Builder;
    .locals 3
    .parameter "node"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/gm/template/If$Builder;->mNodeLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 113
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/google/android/gm/template/If$Builder;->mNodeLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public build()Lcom/google/android/gm/template/If;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/gm/template/If;

    iget-object v1, p0, Lcom/google/android/gm/template/If$Builder;->mConditions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gm/template/If$Builder;->mNodeLists:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/If;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/template/If$1;)V

    return-object v0
.end method
