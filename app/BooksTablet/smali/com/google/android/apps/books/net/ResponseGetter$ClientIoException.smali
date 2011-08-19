.class public Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;
.super Ljava/io/IOException;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/ResponseGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mRetry:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0
    .parameter "detailMessage"
    .parameter "cause"
    .parameter "shouldRetry"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 464
    iput-boolean p3, p0, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;->mRetry:Z

    .line 465
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 466
    return-void
.end method


# virtual methods
.method public shouldRetry()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;->mRetry:Z

    return v0
.end method
