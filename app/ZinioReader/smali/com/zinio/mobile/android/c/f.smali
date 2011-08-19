.class public final Lcom/zinio/mobile/android/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/zinio/mobile/android/c/f;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/zinio/mobile/android/c/f;->b:Ljava/lang/String;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-static {p1, p2}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/f;->c:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/f;->e:Ljava/lang/String;

    .line 45
    :goto_0
    iput-object p3, p0, Lcom/zinio/mobile/android/c/f;->d:Ljava/lang/String;

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/f;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p4, p0, Lcom/zinio/mobile/android/c/f;->f:Ljava/util/HashMap;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zinio/mobile/android/c/f;->f:Ljava/util/HashMap;

    .line 124
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zinio/mobile/android/c/f;->f:Ljava/util/HashMap;

    return-object v0
.end method
