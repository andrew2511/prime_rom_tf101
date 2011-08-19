.class public Lcom/google/googlenav/android/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Constructor;

.field private static g:Ljava/lang/reflect/Constructor;

.field private static h:Ljava/lang/Class;


# instance fields
.field private a:Lcom/google/android/maps/MapsActivity;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private i:Z

.field private j:Z


# direct methods
.method private c()Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/T;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Li/x;->bn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/google/googlenav/android/T;->g:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x55

    aput-byte v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    new-array v4, v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/android/T;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/android/T;->f:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/android/T;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/android/T;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/android/T;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/googlenav/android/T;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/android/T;->a:Lcom/google/android/maps/MapsActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/T;->j:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/android/T;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/android/T;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/android/T;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/googlenav/android/T;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/android/T;->a:Lcom/google/android/maps/MapsActivity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlenav/android/T;->c:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/T;->j:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/android/T;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
