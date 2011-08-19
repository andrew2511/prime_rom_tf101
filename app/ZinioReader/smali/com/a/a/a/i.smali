.class final Lcom/a/a/a/i;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->clear()V

    .line 2807
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0, p1}, Lcom/a/a/a/aq;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2790
    new-instance v0, Lcom/a/a/a/bb;

    iget-object v1, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-direct {v0, v1}, Lcom/a/a/a/bb;-><init>(Lcom/a/a/a/aq;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/a/a/a/i;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->size()I

    move-result v0

    return v0
.end method
