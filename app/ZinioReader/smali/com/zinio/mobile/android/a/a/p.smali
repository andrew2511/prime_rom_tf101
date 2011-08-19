.class public final Lcom/zinio/mobile/android/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    .line 28
    const-string v0, ""

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 9
    check-cast p1, Lcom/zinio/mobile/android/a/a/p;

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 90
    :goto_0
    return v0

    .line 75
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/a/p;

    .line 80
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    move v0, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 86
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 89
    goto :goto_0

    :cond_6
    move v0, v3

    .line 90
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 68
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/p;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
