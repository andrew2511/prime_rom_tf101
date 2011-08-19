.class Lcom/a/a/a/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/bj;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/a/a/a/aq;

.field private c:I

.field private d:Lcom/a/a/a/bj;

.field private volatile e:Lcom/a/a/a/aw;


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
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    invoke-static {}, Lcom/a/a/a/aq;->b()Lcom/a/a/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/an;->e:Lcom/a/a/a/aw;

    .line 788
    iput-object p1, p0, Lcom/a/a/a/an;->b:Lcom/a/a/a/aq;

    .line 789
    iput-object p2, p0, Lcom/a/a/a/an;->a:Ljava/lang/Object;

    .line 790
    iput p3, p0, Lcom/a/a/a/an;->c:I

    .line 791
    iput-object p4, p0, Lcom/a/a/a/an;->d:Lcom/a/a/a/bj;

    .line 792
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/a/a/a/an;->e:Lcom/a/a/a/aw;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/a/a/a/an;->e:Lcom/a/a/a/aw;

    invoke-interface {v0}, Lcom/a/a/a/aw;->clear()V

    .line 813
    :cond_0
    iput-object p1, p0, Lcom/a/a/a/an;->e:Lcom/a/a/a/aw;

    .line 814
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/a/a/a/an;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Lcom/a/a/a/aw;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/a/a/a/an;->e:Lcom/a/a/a/aw;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/a/a/a/an;->b:Lcom/a/a/a/aq;

    invoke-virtual {v0, p0}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/bj;)V

    .line 817
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/a/a/a/an;->c:I

    return v0
.end method

.method public final i()Lcom/a/a/a/bj;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/a/a/a/an;->d:Lcom/a/a/a/bj;

    return-object v0
.end method
