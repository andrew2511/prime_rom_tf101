.class public Ljava/lang/ref/WeakReference;
.super Ljava/lang/ref/Reference;
.source "WeakReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;-><init>()V

    .line 96
    iput-object p1, p0, Ljava/lang/ref/WeakReference;->referent:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;-><init>()V

    .line 110
    iput-object p1, p0, Ljava/lang/ref/WeakReference;->referent:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Ljava/lang/ref/WeakReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 112
    return-void
.end method
