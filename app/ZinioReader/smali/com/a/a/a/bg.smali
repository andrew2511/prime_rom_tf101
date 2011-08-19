.class Lcom/a/a/a/bg;
.super Lcom/a/a/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/bj;


# instance fields
.field private a:Lcom/a/a/a/aq;

.field private b:I

.field private c:Lcom/a/a/a/bj;

.field private volatile d:Lcom/a/a/a/aw;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 953
    sget-object v0, Lcom/a/a/a/w;->a:Lcom/a/a/b/i;

    invoke-direct {p0, p2, v0}, Lcom/a/a/b/e;-><init>(Ljava/lang/Object;Lcom/a/a/b/i;)V

    .line 975
    invoke-static {}, Lcom/a/a/a/aq;->b()Lcom/a/a/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/bg;->d:Lcom/a/a/a/aw;

    .line 954
    iput-object p1, p0, Lcom/a/a/a/bg;->a:Lcom/a/a/a/aq;

    .line 955
    iput p3, p0, Lcom/a/a/a/bg;->b:I

    .line 956
    iput-object p4, p0, Lcom/a/a/a/bg;->c:Lcom/a/a/a/bj;

    .line 957
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 982
    iget-object v0, p0, Lcom/a/a/a/bg;->d:Lcom/a/a/a/aw;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/a/a/a/bg;->d:Lcom/a/a/a/aw;

    invoke-interface {v0}, Lcom/a/a/a/aw;->clear()V

    .line 985
    :cond_0
    iput-object p1, p0, Lcom/a/a/a/bg;->d:Lcom/a/a/a/aw;

    .line 986
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/a/a/a/bg;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/a/a/a/bg;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0, p0}, Lcom/a/a/a/aq;->b(Lcom/a/a/a/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/a/a/a/bg;->a:Lcom/a/a/a/aq;

    iget-object v0, v0, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 968
    :cond_0
    return-void
.end method

.method public final f()Lcom/a/a/a/aw;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/a/a/a/bg;->d:Lcom/a/a/a/aw;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/a/a/a/bg;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0, p0}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/bj;)V

    .line 989
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/a/a/a/bg;->b:I

    return v0
.end method

.method public final i()Lcom/a/a/a/bj;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/a/a/a/bg;->c:Lcom/a/a/a/bj;

    return-object v0
.end method
