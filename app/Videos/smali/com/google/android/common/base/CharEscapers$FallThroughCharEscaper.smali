.class Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallThroughCharEscaper"
.end annotation


# instance fields
.field private final primary:Lcom/google/android/common/base/CharEscaper;

.field private final secondary:Lcom/google/android/common/base/CharEscaper;


# direct methods
.method public constructor <init>(Lcom/google/android/common/base/CharEscaper;Lcom/google/android/common/base/CharEscaper;)V
    .locals 0
    .parameter "primary"
    .parameter "secondary"

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/google/android/common/base/CharEscaper;-><init>()V

    .line 1074
    iput-object p1, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/android/common/base/CharEscaper;

    .line 1075
    iput-object p2, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/android/common/base/CharEscaper;

    .line 1076
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 2
    .parameter "c"

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1081
    .local v0, result:[C
    if-nez v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1084
    :cond_0
    return-object v0
.end method
