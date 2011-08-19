.class final enum Lcom/a/a/a/m;
.super Lcom/a/a/a/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    const/4 v0, 0x2

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
    .line 368
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 369
    invoke-static {p2, v0}, Lcom/a/a/a/m;->b(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)V

    .line 370
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
    .line 363
    new-instance v0, Lcom/a/a/a/v;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/a/v;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    return-object v0
.end method
