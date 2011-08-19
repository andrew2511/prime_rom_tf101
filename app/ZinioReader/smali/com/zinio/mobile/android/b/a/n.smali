.class public final Lcom/zinio/mobile/android/b/a/n;
.super Lcom/zinio/mobile/android/b/a/o;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/zinio/mobile/android/a/b/q;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/ArrayList;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zinio/mobile/android/a/b/q;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/o;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->b:Z

    .line 21
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->c:Z

    .line 23
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->d:Z

    .line 24
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->e:Z

    .line 25
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->f:Z

    .line 26
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->g:Z

    .line 27
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->h:Z

    .line 28
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->i:Z

    .line 29
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->j:Z

    .line 30
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->k:Z

    .line 31
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->l:Z

    .line 32
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->m:Z

    .line 33
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->n:Z

    .line 34
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->o:Z

    .line 35
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->p:Z

    .line 37
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->q:Z

    .line 38
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/n;->r:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zinio/mobile/android/b/a/n;->s:J

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->t:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->u:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->w:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->x:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->y:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->B:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    .line 53
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->D:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->E:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    .line 57
    iput-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    .line 84
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->H:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/n;->c()Lcom/zinio/mobile/android/b/a/i;

    move-result-object v0

    const-string v1, "Library response error!"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/b/a/i;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private c()Lcom/zinio/mobile/android/b/a/i;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->a:Lcom/zinio/mobile/android/b/c;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/zinio/mobile/android/b/a/i;

    invoke-direct {v0}, Lcom/zinio/mobile/android/b/a/i;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->a:Lcom/zinio/mobile/android/b/c;

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/zinio/mobile/android/b/a/n;->a:Lcom/zinio/mobile/android/b/c;

    check-cast p0, Lcom/zinio/mobile/android/b/a/i;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/zinio/mobile/android/b/a/j;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/n;->c()Lcom/zinio/mobile/android/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->o:Z

    if-eqz v0, :cond_1

    .line 190
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->B:Ljava/lang/String;

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->e:Z

    if-eqz v0, :cond_2

    .line 192
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->t:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_2
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->f:Z

    if-eqz v0, :cond_3

    .line 194
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->u:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_3
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->i:Z

    if-eqz v0, :cond_4

    .line 196
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->v:Ljava/lang/String;

    goto :goto_0

    .line 197
    :cond_4
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->j:Z

    if-eqz v0, :cond_5

    .line 198
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->w:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_5
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->k:Z

    if-eqz v0, :cond_6

    .line 200
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->x:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->l:Z

    if-eqz v0, :cond_7

    .line 202
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->y:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_7
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->m:Z

    if-eqz v0, :cond_8

    .line 204
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_8
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->n:Z

    if-eqz v0, :cond_9

    .line 206
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_9
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->r:Z

    if-eqz v0, :cond_a

    .line 208
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->D:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_a
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->q:Z

    if-eqz v0, :cond_b

    .line 210
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a/n;->E:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_b
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->p:Z

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    .line 213
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    goto :goto_0

    .line 212
    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    :cond_d
    iget v0, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    goto :goto_2
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    .line 92
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/b/a/o;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 94
    const-string v0, "library"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->b:Z

    .line 96
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->b:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->a()Lcom/zinio/mobile/android/a/b/q;

    .line 100
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 102
    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add user with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/n;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/q;->b()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    .line 112
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/n;->c()Lcom/zinio/mobile/android/b/a/i;

    move-result-object v0

    const-string v1, "Library updated!"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/b/a/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_2
    :try_start_2
    const-string v0, "libraryPublication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->c:Z

    goto :goto_0

    .line 117
    :cond_3
    const-string v0, "pubId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->e:Z

    goto :goto_0

    .line 119
    :cond_4
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->f:Z

    goto :goto_0

    .line 121
    :cond_5
    const-string v0, "publication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->d:Z

    .line 123
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->d:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/n;->u:Ljava/lang/String;

    const-string v3, "Magazine"

    iget-object v4, p0, Lcom/zinio/mobile/android/b/a/n;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/b/a/n;->s:J

    .line 126
    iget-wide v0, p0, Lcom/zinio/mobile/android/b/a/n;->s:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to insert publication "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_6
    const-string v0, "libraryIssue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->g:Z

    .line 133
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/n;->g:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->x:Ljava/lang/String;

    move-object v3, v0

    .line 145
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->y:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/n;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/b/a/n;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/zinio/mobile/android/b/a/n;->E:Ljava/lang/String;

    iget-object v6, p0, Lcom/zinio/mobile/android/b/a/n;->D:Ljava/lang/String;

    iget v7, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    iget-wide v8, p0, Lcom/zinio/mobile/android/b/a/n;->s:J

    invoke-virtual/range {v0 .. v9}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)J

    move-result-wide v0

    .line 150
    cmp-long v2, v0, v10

    if-nez v2, :cond_8

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to insert issue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    :cond_8
    iget-object v2, p0, Lcom/zinio/mobile/android/b/a/n;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zinio/mobile/android/b/a/n;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->F:Lcom/zinio/mobile/android/a/b/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->v:Ljava/lang/String;

    iget-wide v2, p0, Lcom/zinio/mobile/android/b/a/n;->s:J

    iget v4, p0, Lcom/zinio/mobile/android/b/a/n;->C:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/a/b/q;->a(Ljava/lang/String;JI)Z

    goto/16 :goto_0

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 141
    :cond_a
    const-string v0, "1"

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    .line 143
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a/n;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1

    .line 160
    :cond_c
    const-string v0, "issue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->h:Z

    goto/16 :goto_0

    .line 162
    :cond_d
    const-string v0, "issueId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->i:Z

    goto/16 :goto_0

    .line 164
    :cond_e
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->j:Z

    goto/16 :goto_0

    .line 166
    :cond_f
    const-string v0, "issueDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->k:Z

    goto/16 :goto_0

    .line 168
    :cond_10
    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 169
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->l:Z

    goto/16 :goto_0

    .line 170
    :cond_11
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->m:Z

    goto/16 :goto_0

    .line 172
    :cond_12
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->n:Z

    goto/16 :goto_0

    .line 174
    :cond_13
    const-string v0, "thumbnailUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 175
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->o:Z

    goto/16 :goto_0

    .line 176
    :cond_14
    const-string v0, "entitlementId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 177
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->q:Z

    goto/16 :goto_0

    .line 178
    :cond_15
    const-string v0, "entitlementDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 179
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->r:Z

    goto/16 :goto_0

    .line 180
    :cond_16
    const-string v0, "isNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iput-boolean p3, p0, Lcom/zinio/mobile/android/b/a/n;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final bridge synthetic b()Lcom/zinio/mobile/android/b/c;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/n;->c()Lcom/zinio/mobile/android/b/a/i;

    move-result-object v0

    return-object v0
.end method
