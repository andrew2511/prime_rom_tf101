.class abstract Lcom/zinio/mobile/android/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/zinio/mobile/android/util/a;

.field b:Ljava/lang/Object;

.field private c:Lcom/zinio/mobile/android/util/a;

.field private synthetic d:Lcom/zinio/mobile/android/util/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/util/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/zinio/mobile/android/util/k;->d:Lcom/zinio/mobile/android/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    invoke-virtual {p0}, Lcom/zinio/mobile/android/util/k;->a()V

    .line 1012
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/zinio/mobile/android/util/k;->a:Lcom/zinio/mobile/android/util/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/zinio/mobile/android/util/k;->a:Lcom/zinio/mobile/android/util/a;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/k;->a:Lcom/zinio/mobile/android/util/a;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/k;->c:Lcom/zinio/mobile/android/util/a;

    .line 1028
    iget-object v0, p0, Lcom/zinio/mobile/android/util/k;->b:Ljava/lang/Object;

    .line 1029
    invoke-virtual {p0}, Lcom/zinio/mobile/android/util/k;->a()V

    .line 1030
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/zinio/mobile/android/util/k;->c:Lcom/zinio/mobile/android/util/a;

    .line 1035
    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1037
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/util/k;->c:Lcom/zinio/mobile/android/util/a;

    .line 1041
    iget-object v1, p0, Lcom/zinio/mobile/android/util/k;->d:Lcom/zinio/mobile/android/util/c;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/util/c;->a(Lcom/zinio/mobile/android/util/a;)Z

    .line 1042
    return-void
.end method
