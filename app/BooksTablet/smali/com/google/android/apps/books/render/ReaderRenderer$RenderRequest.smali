.class public Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;
.super Ljava/lang/Object;
.source "ReaderRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ReaderRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RenderRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cookie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field position:Lcom/google/android/apps/books/render/RenderPosition;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 0
    .parameter "p"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    .local p2, c:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 68
    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RenderRequest: position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
