.class public final Lcom/zinio/mobile/android/resources/a/a;
.super Lcom/zinio/mobile/android/util/l;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/l;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/zinio/mobile/android/resources/a/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/a;->a(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {p1}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    :cond_0
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Lcom/zinio/mobile/android/a/a/s;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v2

    .line 68
    :goto_1
    if-nez v2, :cond_2

    .line 69
    const-string v0, ""

    .line 99
    :goto_2
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 65
    :cond_1
    check-cast p1, Lcom/zinio/mobile/android/a/a/h;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v2

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/a/a/j;->h(I)I

    move-result v2

    .line 73
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 74
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 77
    :cond_4
    sget-object v3, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/a/a/j;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_3
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/a/a/j;->g(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 83
    :cond_6
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/zinio/mobile/android/a/a/z;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/z;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 87
    :cond_7
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 92
    :cond_8
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    check-cast p1, Lcom/zinio/mobile/android/a/a/u;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/u;->a()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 99
    :cond_9
    const-string v0, ""

    goto/16 :goto_2
.end method

.method public static b(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/zinio/mobile/android/resources/a/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/zinio/mobile/android/a/a/j;)J
    .locals 8
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 200
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4}, Lcom/zinio/mobile/android/resources/a/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v0, v5

    .line 221
    :goto_0
    return-wide v0

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 210
    if-nez v0, :cond_1

    move-wide v0, v5

    .line 211
    goto :goto_0

    .line 214
    :cond_1
    array-length v1, v0

    move v2, v4

    move-wide v3, v5

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 216
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 214
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-wide v0, v3

    .line 221
    goto :goto_0
.end method

.method public static c(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-interface {p1}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    :cond_0
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/zinio/mobile/android/a/a/s;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v1

    .line 135
    :goto_0
    if-nez v1, :cond_2

    .line 136
    const-string v0, ""

    .line 160
    :goto_1
    return-object v0

    .line 132
    :cond_1
    check-cast p1, Lcom/zinio/mobile/android/a/a/h;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/a/j;->h(I)I

    move-result v1

    .line 140
    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 141
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 144
    :cond_4
    sget-object v2, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/a/j;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/a/a/j;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 149
    :cond_6
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/zinio/mobile/android/a/a/z;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/z;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 152
    :cond_7
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 156
    :cond_8
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/zinio/mobile/android/a/a/u;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 160
    :cond_9
    const-string v0, ""

    goto/16 :goto_1
.end method

.method public static d(Lcom/zinio/mobile/android/a/a/j;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4}, Lcom/zinio/mobile/android/resources/a/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    .line 252
    :goto_0
    return v0

    .line 244
    :cond_1
    new-instance v1, Lcom/zinio/mobile/android/resources/a/c;

    invoke-direct {v1}, Lcom/zinio/mobile/android/resources/a/c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 252
    array-length v0, v0

    goto :goto_0
.end method
