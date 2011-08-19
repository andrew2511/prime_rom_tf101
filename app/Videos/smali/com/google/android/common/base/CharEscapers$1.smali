.class final Lcom/google/android/common/base/CharEscapers$1;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .parameter "out"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/google/android/common/base/CharEscapers$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/common/base/CharEscapers$1$1;-><init>(Lcom/google/android/common/base/CharEscapers$1;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "string"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p1
.end method

.method protected escape(C)[C
    .locals 1
    .parameter "c"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
