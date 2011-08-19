.class public final Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;
.super Ljava/io/IOException;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/ResponseGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mRetryMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "detailMessage"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    .line 426
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "cause"
    .parameter "retryMillis"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 437
    iput-object p3, p0, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    .line 438
    return-void
.end method


# virtual methods
.method public getRetryMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    return-object v0
.end method
