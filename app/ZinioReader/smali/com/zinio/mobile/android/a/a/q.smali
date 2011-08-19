.class public final Lcom/zinio/mobile/android/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 79
    :goto_0
    return v0

    .line 64
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/a/q;

    .line 69
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 78
    goto :goto_0

    :cond_6
    move v0, v3

    .line 79
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 57
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
