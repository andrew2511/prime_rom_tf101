.class public Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
.super Ljava/io/IOException;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/ResponseGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyExpiredException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 484
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 486
    return-void
.end method
