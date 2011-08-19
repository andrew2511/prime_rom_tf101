.class public final Lcom/zinio/mobile/android/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/zinio/mobile/android/a/a/k;->d:I

    .line 59
    iput-object p5, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->g:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->f:Ljava/util/ArrayList;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/zinio/mobile/android/a/a/k;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 181
    :goto_0
    return v0

    .line 154
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 157
    goto :goto_0

    .line 158
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/a/k;

    .line 159
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 165
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    .line 166
    goto :goto_0

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 170
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    move v0, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 173
    goto :goto_0

    .line 174
    :cond_8
    iget v0, p0, Lcom/zinio/mobile/android/a/a/k;->d:I

    iget v1, p1, Lcom/zinio/mobile/android/a/a/k;->d:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 175
    goto :goto_0

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 177
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v2

    .line 178
    goto :goto_0

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 180
    goto :goto_0

    :cond_b
    move v0, v3

    .line 181
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/zinio/mobile/android/a/a/k;->d:I

    add-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    .line 147
    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
