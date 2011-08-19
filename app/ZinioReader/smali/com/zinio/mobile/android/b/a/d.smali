.class public final Lcom/zinio/mobile/android/b/a/d;
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

    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->c:Z

    .line 14
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->d:Z

    .line 15
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/d;->e:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method private c()Lcom/zinio/mobile/android/b/a/k;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/d;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/zinio/mobile/android/b/a/k;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/d;->a:Lcom/zinio/mobile/android/b/c;

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/d;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/k;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/d;->c()Lcom/zinio/mobile/android/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->b:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/d;->c()Lcom/zinio/mobile/android/b/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/b/a/k;->a(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 23
    const-string v0, "profileId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/d;->b:Z

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/d;->c:Z

    goto :goto_0

    .line 29
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/d;->d:Z

    .line 31
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->d:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/d;->e:Ljava/lang/String;

    .line 33
    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/d;->f:Ljava/lang/String;

    .line 34
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/d;->c:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/d;->c()Lcom/zinio/mobile/android/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/d;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/b/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/d;->c()Lcom/zinio/mobile/android/b/a/k;

    move-result-object v0

    return-object v0
.end method
