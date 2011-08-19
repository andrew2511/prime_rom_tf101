.class public final Lcom/zinio/mobile/android/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/zinio/mobile/android/a/a/i;->b:I

    .line 42
    iput-object p3, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/zinio/mobile/android/a/a/i;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 190
    :goto_0
    return v0

    .line 151
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/a/i;

    .line 157
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 161
    goto :goto_0

    .line 163
    :cond_4
    iget v0, p0, Lcom/zinio/mobile/android/a/a/i;->b:I

    iget v1, p1, Lcom/zinio/mobile/android/a/a/i;->b:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 167
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 173
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    move v0, v2

    .line 174
    goto :goto_0

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 176
    goto :goto_0

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 179
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v2

    .line 180
    goto :goto_0

    .line 181
    :cond_a
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_b
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    if-eqz v0, :cond_d

    move v0, v2

    .line 186
    goto :goto_0

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 188
    goto/16 :goto_0

    :cond_d
    move v0, v3

    .line 190
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/zinio/mobile/android/a/a/i;->b:I

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    .line 144
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/a/a/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Folio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Blurb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Authors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/i;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
