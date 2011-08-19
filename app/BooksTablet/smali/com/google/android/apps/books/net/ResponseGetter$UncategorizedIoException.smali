.class public final Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;
.super Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/ResponseGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UncategorizedIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 528
    return-void
.end method
