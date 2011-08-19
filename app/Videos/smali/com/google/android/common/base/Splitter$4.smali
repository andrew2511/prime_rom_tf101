.class final Lcom/google/android/common/base/Splitter$4;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/android/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/Splitter;->fixedLength(I)Lcom/google/android/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput p1, p0, Lcom/google/android/common/base/Splitter$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/common/base/Splitter$SplittingIterator;
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/common/base/Splitter$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/common/base/Splitter$4$1;-><init>(Lcom/google/android/common/base/Splitter$4;Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/google/android/common/base/Splitter$4;->iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
