.class final Lcom/google/common/base/CharMatcher$10;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$10;->val$match1:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$10;->val$match2:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 434
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match1:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
