.class public abstract Lcom/a/a/b/d;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/m;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/a/a/b/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p2, Lcom/a/a/b/i;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 38
    invoke-virtual {p2}, Lcom/a/a/b/i;->a()V

    .line 39
    return-void
.end method
