.class final Lcom/a/a/a/be;
.super Lcom/a/a/b/d;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/aw;


# instance fields
.field private a:Lcom/a/a/a/bj;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/a/a/a/bj;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1297
    sget-object v0, Lcom/a/a/a/w;->a:Lcom/a/a/b/i;

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/d;-><init>(Ljava/lang/Object;Lcom/a/a/b/i;)V

    .line 1298
    iput-object p2, p0, Lcom/a/a/a/be;->a:Lcom/a/a/a/bj;

    .line 1299
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/bj;)Lcom/a/a/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 1308
    new-instance v0, Lcom/a/a/a/be;

    invoke-virtual {p0}, Lcom/a/a/a/be;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/a/a/a/be;-><init>(Ljava/lang/Object;Lcom/a/a/a/bj;)V

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/a/a/a/be;->a:Lcom/a/a/a/bj;

    invoke-interface {v0}, Lcom/a/a/a/bj;->g()V

    .line 1304
    return-void
.end method
