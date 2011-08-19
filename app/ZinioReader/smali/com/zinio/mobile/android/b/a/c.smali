.class public final Lcom/zinio/mobile/android/b/a/c;
.super Lcom/zinio/mobile/android/b/a/o;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->b:Z

    .line 11
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->c:Z

    .line 12
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->d:Z

    .line 13
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/c;->e:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method private c()Lcom/zinio/mobile/android/b/a/e;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/c;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zinio/mobile/android/b/a/e;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/e;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/c;->a:Lcom/zinio/mobile/android/b/c;

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/c;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/e;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/c;->c()Lcom/zinio/mobile/android/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/c;->c()Lcom/zinio/mobile/android/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/b/a/e;->a(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 20
    const-string v0, "profileId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/c;->b:Z

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/c;->c:Z

    goto :goto_0

    .line 26
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/c;->d:Z

    .line 28
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->d:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/c;->e:Ljava/lang/String;

    .line 30
    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/c;->f:Ljava/lang/String;

    .line 31
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/c;->c:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/c;->c()Lcom/zinio/mobile/android/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/c;->c()Lcom/zinio/mobile/android/b/a/e;

    move-result-object v0

    return-object v0
.end method
