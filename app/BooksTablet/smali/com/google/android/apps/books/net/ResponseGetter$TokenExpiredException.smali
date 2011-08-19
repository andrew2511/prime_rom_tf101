.class public final Lcom/google/android/apps/books/net/ResponseGetter$TokenExpiredException;
.super Lcom/google/android/apps/books/net/ResponseGetter$AuthIoException;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/ResponseGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenExpiredException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/net/ResponseGetter$AuthIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    return-void
.end method
