.class public Lcom/google/android/finsky/api/PaginatedDfeRequest;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "PaginatedDfeRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/google/android/finsky/api/DfeRequest",
        "<TT;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCount:I

.field private final mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .parameter "url"
    .parameter "offset"
    .parameter "count"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    .local p5, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p6, listener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;,"Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener<TT;>;"
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/api/PaginatedDfeRequest;->paginateUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 58
    iput-object p6, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;

    .line 59
    invoke-virtual {p0, p0}, Lcom/google/android/finsky/api/PaginatedDfeRequest;->setListener(Lcom/android/volley/Response$Listener;)V

    .line 60
    iput p2, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mOffset:I

    .line 61
    iput p3, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mCount:I

    .line 62
    return-void
.end method

.method private static paginateUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onResponse(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    .local p1, response:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    iget-object v0, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mListener:Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;

    iget v1, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mOffset:I

    iget v2, p0, Lcom/google/android/finsky/api/PaginatedDfeRequest;->mCount:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;->onResponse(Ljava/lang/Object;II)V

    .line 74
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/finsky/api/PaginatedDfeRequest;,"Lcom/google/android/finsky/api/PaginatedDfeRequest<TT;>;"
    check-cast p1, Lcom/google/protobuf/micro/MessageMicro;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/PaginatedDfeRequest;->onResponse(Lcom/google/protobuf/micro/MessageMicro;)V

    return-void
.end method
