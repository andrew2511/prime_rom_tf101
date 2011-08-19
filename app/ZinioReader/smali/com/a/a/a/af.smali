.class final Lcom/a/a/a/af;
.super Lcom/a/a/a/ac;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private synthetic c:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/a/a/a/af;->c:Lcom/a/a/a/aq;

    invoke-direct {p0}, Lcom/a/a/a/ac;-><init>()V

    .line 2718
    iput-object p2, p0, Lcom/a/a/a/af;->a:Ljava/lang/Object;

    .line 2719
    iput-object p3, p0, Lcom/a/a/a/af;->b:Ljava/lang/Object;

    .line 2720
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 2732
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 2733
    check-cast p1, Ljava/util/Map$Entry;

    .line 2734
    iget-object v0, p0, Lcom/a/a/a/af;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/af;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2737
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2734
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2737
    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/a/a/a/af;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/a/a/a/af;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/a/a/a/af;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/a/a/a/af;->c:Lcom/a/a/a/aq;

    iget-object v1, p0, Lcom/a/a/a/af;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/aq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2747
    iput-object p1, p0, Lcom/a/a/a/af;->b:Ljava/lang/Object;

    .line 2748
    return-object v0
.end method
