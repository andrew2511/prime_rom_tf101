.class public Lcom/google/googlenav/bD;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lf/h;

.field public final b:Ljava/lang/String;

.field public final c:Law/e;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Law/e;

.field public final g:Law/e;


# direct methods
.method public constructor <init>(Lf/h;Ljava/lang/String;Law/e;Ljava/lang/String;Ljava/lang/String;Law/e;Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bD;->a:Lf/h;

    iput-object p2, p0, Lcom/google/googlenav/bD;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/bD;->c:Law/e;

    iput-object p4, p0, Lcom/google/googlenav/bD;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/bD;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/googlenav/bD;->f:Law/e;

    iput-object p7, p0, Lcom/google/googlenav/bD;->g:Law/e;

    return-void
.end method

.method public static a(Law/e;)Lcom/google/googlenav/bD;
    .locals 15

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {p0, v2}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v8, Lf/h;

    const/4 v9, 0x1

    invoke-static {v2, v9}, Law/b;->e(Law/e;I)I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v2, v10}, Law/b;->e(Law/e;I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lf/h;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x5

    :try_start_1
    invoke-static {v2, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v1, v8

    :goto_0
    move-object v2, v0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->i(I)I

    move-result v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_2

    const/4 v9, 0x1

    invoke-virtual {p0, v9, v8}, Law/e;->e(II)Law/e;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Law/b;->e(Law/e;I)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Law/e;->h(I)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Law/e;->c(I)[B

    move-result-object v9

    :goto_3
    if-nez v9, :cond_1

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object v13, v3

    move-object v3, v7

    move-object v7, v13

    move-object v14, v6

    move-object v6, v4

    move-object v4, v14

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_5
    const-string v8, "PLACE_PAGE, unable to parse place info"

    invoke-static {v8, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_3

    :cond_1
    sparse-switch v10, :sswitch_data_0

    :goto_6
    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto :goto_4

    :sswitch_0
    :try_start_2
    new-instance v11, Law/e;

    sget-object v12, LV/c;->a:Law/f;

    invoke-direct {v11, v12}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v11, v9}, Law/e;->a([B)Law/e;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v3

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto :goto_4

    :sswitch_1
    new-instance v11, Law/e;

    sget-object v12, LV/z;->a:Law/f;

    invoke-direct {v11, v12}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v11, v9}, Law/e;->a([B)Law/e;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto :goto_4

    :sswitch_2
    new-instance v11, Law/e;

    sget-object v12, LV/n;->a:Law/f;

    invoke-direct {v11, v12}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v11, v9}, Law/e;->a([B)Law/e;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto :goto_4

    :sswitch_3
    new-instance v11, Law/e;

    sget-object v12, LV/s;->a:Law/f;

    invoke-direct {v11, v12}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v11, v9}, Law/e;->a([B)Law/e;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v6

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto :goto_4

    :sswitch_4
    new-instance v11, Law/e;

    sget-object v12, LV/y;->a:Law/f;

    invoke-direct {v11, v12}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v11, v9}, Law/e;->a([B)Law/e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    move-object v14, v4

    move-object v4, v6

    move-object v6, v14

    goto/16 :goto_4

    :catch_1
    move-exception v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PLACE_PAGE, received related place with corrupted story of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_2
    new-instance v0, Lcom/google/googlenav/bD;

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/bD;-><init>(Lf/h;Ljava/lang/String;Law/e;Ljava/lang/String;Ljava/lang/String;Law/e;Law/e;)V

    return-object v0

    :catch_2
    move-exception v0

    move-object v2, v8

    goto/16 :goto_5

    :cond_3
    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_0

    :cond_4
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_4
        0x10 -> :sswitch_1
        0x1e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/bD;->f:Law/e;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/bD;->f:Law/e;

    invoke-virtual {v1, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/bD;->f:Law/e;

    invoke-virtual {v1, v3}, Law/e;->d(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/bD;->f:Law/e;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Law/b;->e(Law/e;I)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-ne v1, v3, :cond_4

    const/16 v1, 0x36d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    const/16 v2, 0x36c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/bD;->g:Law/e;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/bD;->g:Law/e;

    invoke-virtual {v1, v5}, Law/e;->i(I)I

    move-result v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/bD;->g:Law/e;

    invoke-static {v2, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Lcom/google/googlenav/bD;->g:Law/e;

    invoke-virtual {v3, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
