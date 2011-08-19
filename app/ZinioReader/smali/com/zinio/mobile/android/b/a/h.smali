.class public final Lcom/zinio/mobile/android/b/a/h;
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

.method private c()Lcom/zinio/mobile/android/b/a/l;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/h;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/zinio/mobile/android/b/a/l;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/l;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/h;->a:Lcom/zinio/mobile/android/b/c;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/h;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/l;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/h;->c()Lcom/zinio/mobile/android/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/h;->c()Lcom/zinio/mobile/android/b/a/l;

    move-result-object v0

    return-object v0
.end method
