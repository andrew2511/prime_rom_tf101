.class final Lcom/a/a/a/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/aw;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput-object p1, p0, Lcom/a/a/a/ay;->a:Ljava/lang/Object;

    .line 1349
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/bj;)Lcom/a/a/a/aw;
    .locals 0
    .parameter

    .prologue
    .line 1357
    return-object p0
.end method

.method public final clear()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/a/a/a/ay;->a:Ljava/lang/Object;

    return-object v0
.end method
