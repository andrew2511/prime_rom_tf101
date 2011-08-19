.class public Lah/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lah/B;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private final c:Lcom/google/android/maps/driveabout/app/e;

.field private final d:Lcom/google/android/maps/driveabout/app/bX;

.field private final e:Ljava/lang/StringBuilder;

.field private f:I

.field private g:I


# direct methods
.method private b(Lah/p;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lah/d;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lah/p;->a()Lah/A;

    move-result-object v0

    invoke-virtual {p1}, Lah/p;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lah/d;->a:Lah/B;

    iget-object v3, p0, Lah/d;->b:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v4, p0, Lah/d;->c:Lcom/google/android/maps/driveabout/app/e;

    iget-object v5, p0, Lah/d;->d:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v6, p0, Lah/d;->e:Ljava/lang/StringBuilder;

    invoke-interface/range {v0 .. v6}, Lah/A;->a(Ljava/util/HashMap;Lah/B;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/e;Lcom/google/android/maps/driveabout/app/bX;Ljava/lang/StringBuilder;)Z

    move-result v0

    invoke-virtual {p1}, Lah/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private static c(Lah/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lah/p;->a(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lah/p;)Z
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lah/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lah/d;->f:I

    iget-object v0, p0, Lah/d;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1}, Lah/p;->b()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-direct {p0, p1}, Lah/d;->b(Lah/p;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Lah/d;->c(Lah/p;)Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_2
    return v0

    :cond_0
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lah/d;->e:Ljava/lang/StringBuilder;

    const-string v1, "Interrupted!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lah/d;->e:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    iget v1, p0, Lah/d;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lah/d;->g:I

    goto :goto_2
.end method
