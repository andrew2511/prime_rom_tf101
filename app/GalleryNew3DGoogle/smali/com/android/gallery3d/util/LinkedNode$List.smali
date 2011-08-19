.class public Lcom/android/gallery3d/util/LinkedNode$List;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/LinkedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/gallery3d/util/LinkedNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/android/gallery3d/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/gallery3d/util/LinkedNode;

    invoke-direct {v0}, Lcom/android/gallery3d/util/LinkedNode;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public getFirst()Lcom/android/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    invoke-static {v0}, Lcom/android/gallery3d/util/LinkedNode;->access$100(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    invoke-static {v0}, Lcom/android/gallery3d/util/LinkedNode;->access$100(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getLast()Lcom/android/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    invoke-static {v0}, Lcom/android/gallery3d/util/LinkedNode;->access$000(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    invoke-static {v0}, Lcom/android/gallery3d/util/LinkedNode;->access$000(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insertLast(Lcom/android/gallery3d/util/LinkedNode;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/android/gallery3d/util/LinkedNode;,"TT;"
    iget-object v0, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    invoke-static {v0}, Lcom/android/gallery3d/util/LinkedNode;->access$000(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/LinkedNode;->insert(Lcom/android/gallery3d/util/LinkedNode;)V

    .line 52
    return-void
.end method

.method public nextOf(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/android/gallery3d/util/LinkedNode;,"TT;"
    invoke-static {p1}, Lcom/android/gallery3d/util/LinkedNode;->access$100(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/util/LinkedNode;->access$100(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public previousOf(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/android/gallery3d/util/LinkedNode;,"TT;"
    invoke-static {p1}, Lcom/android/gallery3d/util/LinkedNode;->access$000(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/LinkedNode$List;->mHead:Lcom/android/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/util/LinkedNode;->access$000(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method
