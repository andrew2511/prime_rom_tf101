.class public Lm/X;
.super Ljava/lang/Object;

# interfaces
.implements Lm/n;


# static fields
.field private static a:Lm/X;


# instance fields
.field private final b:Lak/h;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private e:Lm/T;

.field private f:Lm/a;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lak/h;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm/X;->c:Ljava/util/Map;

    iput-object p1, p0, Lm/X;->b:Lak/h;

    iput-object p2, p0, Lm/X;->d:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm/X;->d:Landroid/content/Context;

    invoke-static {v1}, Las/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/X;->g:Ljava/lang/String;

    invoke-direct {p0}, Lm/X;->a()V

    invoke-direct {p0}, Lm/X;->c()V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lm/X;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lm/X;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/X;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lak/h;Landroid/content/Context;)Lm/X;
    .locals 1

    sget-object v0, Lm/X;->a:Lm/X;

    if-nez v0, :cond_0

    new-instance v0, Lm/X;

    invoke-direct {v0, p0, p1}, Lm/X;-><init>(Lak/h;Landroid/content/Context;)V

    sput-object v0, Lm/X;->a:Lm/X;

    :cond_0
    sget-object v0, Lm/X;->a:Lm/X;

    return-object v0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lm/X;->d:Landroid/content/Context;

    const-string v1, "VoiceBundles"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p0, Lm/X;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lm/E;->a(Ljava/lang/String;Ljava/lang/String;)Lm/E;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lm/X;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lm/E;->h()Lm/c;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized a(Lm/E;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/X;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lm/E;->h()Lm/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/E;

    iget-object v1, p0, Lm/X;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lm/E;->h()Lm/c;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/E;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lm/E;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lm/X;->b(Lm/E;)V

    :cond_0
    invoke-direct {p0}, Lm/X;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lm/X;Lm/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/X;->b(Lm/a;)V

    return-void
.end method

.method static synthetic a(Lm/X;Lm/a;Lm/E;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lm/X;->a(Lm/a;Lm/E;[B)V

    return-void
.end method

.method private declared-synchronized a(Lm/a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lm/a;->a(Lm/a;)I

    move-result v0

    invoke-direct {p0, v0}, Lm/X;->b(I)I

    move-result v1

    invoke-static {p1}, Lm/a;->a(Lm/a;)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lm/X;->b(Lm/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lm/a;

    invoke-static {p1}, Lm/a;->b(Lm/a;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Lm/a;->a(Lm/a;)I

    move-result v3

    invoke-static {v1}, Lm/X;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lm/a;->c(Lm/a;)Lm/E;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lm/a;-><init>(Lm/X;Ljava/util/Locale;ILjava/lang/String;Lm/E;)V

    iget-object v1, p0, Lm/X;->f:Lm/a;

    if-ne p1, v1, :cond_1

    iput-object v0, p0, Lm/X;->f:Lm/a;

    :cond_1
    iget-object v1, p0, Lm/X;->b:Lak/h;

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lm/a;Lm/E;[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lm/E;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Lm/o;

    invoke-direct {v1, v0}, Lm/o;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, p0, Lm/X;->f:Lm/a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lm/X;->e:Lm/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/X;->e:Lm/T;

    invoke-interface {v0, v1}, Lm/T;->a(Lm/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/X;->e:Lm/T;

    const/4 v0, 0x0

    iput-object v0, p0, Lm/X;->f:Lm/a;

    :cond_0
    invoke-direct {p0, p2}, Lm/X;->a(Lm/E;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, p1}, Lm/X;->b(Lm/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lm/X;->b(Lm/a;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lm/X;->b(Lm/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lm/X;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/E;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lm/E;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lm/X;->d:Landroid/content/Context;

    const-string v2, "VoiceBundles"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private b(Lm/E;)V
    .locals 5

    invoke-virtual {p1}, Lm/E;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static synthetic b(Lm/X;)V
    .locals 0

    invoke-direct {p0}, Lm/X;->b()V

    return-void
.end method

.method static synthetic b(Lm/X;Lm/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/X;->a(Lm/a;)V

    return-void
.end method

.method private declared-synchronized b(Lm/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/X;->f:Lm/a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lm/X;->e:Lm/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/X;->e:Lm/T;

    invoke-interface {v0}, Lm/T;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/X;->e:Lm/T;

    const/4 v0, 0x0

    iput-object v0, p0, Lm/X;->f:Lm/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "voice_instructions.zip"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "voice_instructions_imperial.zip"

    goto :goto_0

    :pswitch_1
    const-string v0, "voice_instructions_yards.zip"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lm/X;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/E;

    invoke-virtual {v0}, Lm/E;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lm/X;->b(Lm/E;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lm/X;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/Locale;ILm/T;)Lm/o;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/X;->c:Ljava/util/Map;

    new-instance v1, Lm/c;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lm/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v1, Lm/o;

    invoke-virtual {v0}, Lm/E;->e()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/o;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Lm/E;->f()V

    invoke-direct {p0}, Lm/X;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lm/E;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    new-instance v2, Lm/a;

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {v2, p0, p1, p2, v0}, Lm/a;-><init>(Lm/X;Ljava/util/Locale;ILm/E;)V

    iput-object v2, p0, Lm/X;->f:Lm/a;

    iput-object p3, p0, Lm/X;->e:Lm/T;

    iget-object v0, p0, Lm/X;->b:Lak/h;

    iget-object v2, p0, Lm/X;->f:Lm/a;

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method
