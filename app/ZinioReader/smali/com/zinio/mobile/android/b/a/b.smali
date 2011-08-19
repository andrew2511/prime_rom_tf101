.class public final Lcom/zinio/mobile/android/b/a/b;
.super Lcom/zinio/mobile/android/b/a/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    return-void
.end method

.method private c()Lcom/zinio/mobile/android/b/a/f;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/b;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/zinio/mobile/android/b/a/f;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/b;->a:Lcom/zinio/mobile/android/b/c;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/b;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/f;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/b;->c()Lcom/zinio/mobile/android/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/b;->c()Lcom/zinio/mobile/android/b/a/f;

    move-result-object v0

    return-object v0
.end method
