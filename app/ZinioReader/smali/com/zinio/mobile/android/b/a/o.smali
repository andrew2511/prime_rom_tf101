.class public Lcom/zinio/mobile/android/b/a/o;
.super Lcom/zinio/mobile/android/b/a/m;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/b/e;


# instance fields
.field protected a:Lcom/zinio/mobile/android/b/c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/m;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->b:Z

    .line 16
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->c:Z

    .line 17
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->d:Z

    .line 19
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->e:Z

    .line 20
    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->f:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/o;->a:Lcom/zinio/mobile/android/b/c;

    .line 31
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/a/o;->a()Lcom/zinio/mobile/android/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/o;->a:Lcom/zinio/mobile/android/b/c;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/o;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/zinio/mobile/android/b/a/j;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/j;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/o;->a:Lcom/zinio/mobile/android/b/c;

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/o;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/j;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->c:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/a/o;->a()Lcom/zinio/mobile/android/b/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/b/a/j;->a(I)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->e:Z

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/a/o;->a()Lcom/zinio/mobile/android/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/b/a/j;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/o;->f:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/a/o;->a()Lcom/zinio/mobile/android/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/b/a/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "responseStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/o;->b:Z

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/o;->c:Z

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "errorDetail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/o;->d:Z

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/o;->e:Z

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/o;->f:Z

    goto :goto_0
.end method

.method public bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/zinio/mobile/android/b/a/o;->a()Lcom/zinio/mobile/android/b/a/j;

    move-result-object v0

    return-object v0
.end method
