.class public final Lcom/zinio/mobile/android/b/a/a;
.super Lcom/zinio/mobile/android/b/a/o;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->c:Z

    .line 14
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->d:Z

    .line 16
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->f:Z

    .line 17
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->g:Z

    .line 18
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/a;->h:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/zinio/mobile/android/b/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method private c()Lcom/zinio/mobile/android/b/a/g;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/a;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/zinio/mobile/android/b/a/g;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/a;->a:Lcom/zinio/mobile/android/b/c;

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/a;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/g;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/a;->c()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/a;->c()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/b/a/g;->a(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 25
    const-string v0, "newsstand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/a;->b:Z

    .line 27
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    const-string v1, "default"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->g:Z

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->g:Z

    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "commerceURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/a;->c:Z

    goto :goto_0

    .line 35
    :cond_3
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/a;->d:Z

    goto :goto_0

    .line 37
    :cond_4
    const-string v0, "links"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/a;->e:Z

    goto :goto_0

    .line 39
    :cond_5
    const-string v0, "entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/a;->f:Z

    .line 41
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/a;->h:Ljava/lang/String;

    .line 43
    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/a;->i:Ljava/lang/String;

    .line 44
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->d:Z

    if-eqz v0, :cond_6

    .line 45
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/a;->c()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/b/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/a;->e:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/a;->c()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/b/a/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/a;->c()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    return-object v0
.end method
