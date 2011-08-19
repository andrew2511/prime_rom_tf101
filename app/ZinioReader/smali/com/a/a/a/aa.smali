.class final enum Lcom/a/a/a/aa;
.super Lcom/a/a/a/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/av;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/a/aq;Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 485
    invoke-static {p2, v0}, Lcom/a/a/a/aa;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)V

    .line 486
    invoke-static {p2, v0}, Lcom/a/a/a/aa;->b(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)V

    .line 487
    return-object v0
.end method

.method final a(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)Lcom/a/a/a/bj;
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
    .line 479
    new-instance v0, Lcom/a/a/a/ax;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/a/ax;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    return-object v0
.end method
