.class public final Lcom/zinio/mobile/android/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/List;

.field private final j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Lcom/zinio/mobile/android/a/a/k;

.field private n:Z

.field private final o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/zinio/mobile/android/a/a/k;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zinio/mobile/android/a/a/t;->m:Lcom/zinio/mobile/android/a/a/k;

    .line 87
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/t;->a:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/zinio/mobile/android/a/a/t;->b:I

    .line 89
    iput-object p3, p0, Lcom/zinio/mobile/android/a/a/t;->c:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/zinio/mobile/android/a/a/t;->d:Ljava/lang/String;

    .line 91
    iput p5, p0, Lcom/zinio/mobile/android/a/a/t;->e:I

    .line 92
    iput-object p6, p0, Lcom/zinio/mobile/android/a/a/t;->g:Ljava/util/List;

    .line 93
    iput-object p7, p0, Lcom/zinio/mobile/android/a/a/t;->m:Lcom/zinio/mobile/android/a/a/k;

    .line 94
    iput-object p8, p0, Lcom/zinio/mobile/android/a/a/t;->h:Ljava/lang/String;

    .line 95
    iput-object p9, p0, Lcom/zinio/mobile/android/a/a/t;->i:Ljava/util/List;

    .line 96
    iput-object p10, p0, Lcom/zinio/mobile/android/a/a/t;->j:Ljava/lang/String;

    .line 97
    iput-wide p11, p0, Lcom/zinio/mobile/android/a/a/t;->k:J

    .line 98
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/t;->f:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/t;->l:Ljava/lang/String;

    .line 100
    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/t;->n:Z

    .line 101
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/t;->o:Z

    .line 103
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const-string v0, "page"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/k;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zinio/mobile/android/a/a/t;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/zinio/mobile/android/a/a/t;->b:I

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/k;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/a/a/t;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/zinio/mobile/android/a/a/t;->e:I

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/zinio/mobile/android/a/a/k;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->m:Lcom/zinio/mobile/android/a/a/k;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/t;->k:J

    return-wide v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/t;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/t;->n:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/t;->o:Z

    return v0
.end method
