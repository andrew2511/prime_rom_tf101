.class final enum Lcom/a/a/a/j;
.super Lcom/a/a/a/ap;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/ap;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/a/bj;Ljava/lang/Object;)Lcom/a/a/a/aw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v0, Lcom/a/a/a/bi;

    invoke-direct {v0, p2, p1}, Lcom/a/a/a/bi;-><init>(Ljava/lang/Object;Lcom/a/a/a/bj;)V

    return-object v0
.end method

.method final a()Lcom/a/a/b/g;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/a/a/b/n;->b()Lcom/a/a/b/g;

    move-result-object v0

    return-object v0
.end method
