.class final enum Lcom/a/a/a/r;
.super Lcom/a/a/a/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x6

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
    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 420
    invoke-static {p2, v0}, Lcom/a/a/a/r;->b(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)V

    .line 421
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
    .line 414
    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/a/c;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    return-object v0
.end method
