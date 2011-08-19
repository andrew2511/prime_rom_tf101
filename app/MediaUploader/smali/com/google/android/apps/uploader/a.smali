.class public final Lcom/google/android/apps/uploader/a;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-boolean p3, p0, Lcom/google/android/apps/uploader/a;->a:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/a;->a:Z

    return v0
.end method
