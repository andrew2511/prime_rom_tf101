.class final Lcom/a/a/a/as;
.super Lcom/a/a/a/ag;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private synthetic a:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 2752
    iput-object p1, p0, Lcom/a/a/a/as;->a:Lcom/a/a/a/aq;

    invoke-direct {p0, p1}, Lcom/a/a/a/ag;-><init>(Lcom/a/a/a/aq;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2752
    invoke-virtual {p0}, Lcom/a/a/a/as;->a()Lcom/a/a/a/af;

    move-result-object v0

    return-object v0
.end method
