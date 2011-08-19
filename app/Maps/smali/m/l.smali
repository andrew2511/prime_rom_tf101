.class public Lm/l;
.super Ljava/lang/Object;

# interfaces
.implements Lm/k;


# static fields
.field private static final a:[B


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:Lm/x;

.field private volatile f:Z

.field private volatile g:Z

.field private h:Ljava/util/Locale;

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/util/LinkedList;

.field private k:Lm/H;

.field private final l:Lad/g;

.field private m:Lm/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lm/l;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const/16 v4, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lm/l;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lm/l;->j:Ljava/util/LinkedList;

    new-instance v0, Lm/L;

    invoke-direct {v0, p0, v4}, Lm/L;-><init>(Lm/l;I)V

    iput-object v0, p0, Lm/l;->l:Lad/g;

    iput-object p1, p0, Lm/l;->c:Landroid/content/Context;

    iput-object p2, p0, Lm/l;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_0

    iget-object v1, p0, Lm/l;->i:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "._speech_nav_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Las/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/l;->b:Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lm/l;->c:Landroid/content/Context;

    invoke-static {v1}, Las/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lm/l;->c:Landroid/content/Context;

    const-string v1, "da_speech"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lm/l;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lm/l;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized a(ILm/U;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lm/l;->h:Ljava/util/Locale;

    iget-object v0, p0, Lm/l;->e:Lm/x;

    invoke-interface {v0}, Lm/x;->a()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lm/l;->e:Lm/x;

    invoke-interface {v1, v0}, Lm/x;->b(Ljava/util/Locale;)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lm/l;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lm/l;->e:Lm/x;

    iget-object v1, p0, Lm/l;->h:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lm/x;->a(Ljava/util/Locale;)I

    move-result v0

    :goto_1
    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_6

    :cond_1
    move v1, v5

    :goto_2
    iget-object v2, p0, Lm/l;->e:Lm/x;

    new-instance v3, Lm/z;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lm/z;-><init>(Lm/l;Lm/L;)V

    invoke-interface {v2, v3}, Lm/x;->a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v2

    if-eqz v2, :cond_2

    move v1, v5

    :cond_2
    iput-boolean v1, p0, Lm/l;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm/l;->f:Z

    iget-object v1, p0, Lm/l;->e:Lm/x;

    invoke-interface {v1}, Lm/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm/S;->a(Ljava/lang/String;)Lm/S;

    move-result-object v1

    iput-object v1, p0, Lm/l;->m:Lm/S;

    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lm/l;->g:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lm/U;->a(I)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Lm/U;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {p2, v0}, Lm/U;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/l;->k:Lm/H;

    const/4 v1, 0x0

    iput-object v1, p0, Lm/l;->k:Lm/H;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/H;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lm/H;->d()Lm/P;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lm/l;->l:Lad/g;

    invoke-virtual {v0}, Lm/H;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lm/H;->a(Lm/p;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lm/l;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lm/H;->a()V

    goto :goto_0
.end method

.method private a(Lm/H;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/l;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lm/l;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Lm/U;Lm/x;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lm/l;->e:Lm/x;

    iget-object v0, p0, Lm/l;->e:Lm/x;

    new-instance v1, Lm/M;

    invoke-direct {v1, p0, p1}, Lm/M;-><init>(Lm/l;Lm/U;)V

    invoke-interface {v0, v1}, Lm/x;->a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lm/l;ILm/U;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lm/l;->a(ILm/U;)V

    return-void
.end method

.method static synthetic a(Lm/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 8

    const/16 v4, 0x46

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2c

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    array-length v3, v1

    if-eq v2, v3, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_1

    const/16 v2, 0x8

    aget-byte v2, v1, v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_1

    const/16 v2, 0x9

    aget-byte v2, v1, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1

    const/16 v2, 0xb

    aget-byte v2, v1, v2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_2

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    const/16 v2, 0x28

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x29

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/16 v3, 0x2a

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/16 v3, 0x2b

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    if-lez v1, :cond_3

    add-int/lit8 v2, v1, 0x2c

    int-to-long v2, v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    sget-object v2, Lm/l;->a:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lm/l;->a:[B

    array-length v2, v2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-eq v0, v1, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    sget-object v0, Lm/l;->a:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto/16 :goto_0
.end method

.method private a(Z)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lm/l;->d()Landroid/os/StatFs;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lm/l;->e()Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v3, v1

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lm/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lm/l;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/l;->k:Lm/H;

    if-eqz v0, :cond_7

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :goto_1
    iget-object v2, p0, Lm/l;->j:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v0, p0, Lm/l;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/H;

    iget-object v2, p0, Lm/l;->l:Lad/g;

    invoke-virtual {v0}, Lm/H;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lm/l;->k:Lm/H;

    move-object v2, v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/H;

    iget-object v1, p0, Lm/l;->l:Lad/g;

    invoke-virtual {v0}, Lm/H;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/p;

    invoke-virtual {v0, v1}, Lm/H;->a(Lm/p;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lm/l;->b:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lm/l;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v5, p0, Lm/l;->b:Z

    :cond_3
    iget-boolean v0, p0, Lm/l;->b:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v5}, Lm/l;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lm/l;->a()V

    iput-boolean v5, p0, Lm/l;->g:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lm/l;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lm/l;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lm/l;->b:Z

    invoke-direct {p0, v0, v1}, Lm/l;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lm/H;->a(Ljava/lang/String;Ljava/io/File;)V

    iget-object v3, p0, Lm/l;->m:Lm/S;

    invoke-virtual {v2}, Lm/H;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lm/l;->h:Ljava/util/Locale;

    invoke-virtual {v3, v4, v5}, Lm/S;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lm/l;->e:Lm/x;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Lm/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lm/H;->a()V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lm/l;->k:Lm/H;

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lm/l;->k:Lm/H;

    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lm/l;->f()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    move-object v2, v0

    goto/16 :goto_2

    :cond_7
    move-object v0, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lm/w;)Lm/p;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/l;->l:Lad/g;

    invoke-virtual {p1}, Lm/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lm/l;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lm/l;->g:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/l;->j:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lm/l;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lm/l;->k:Lm/H;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm/l;->k:Lm/H;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm/l;->e:Lm/x;

    invoke-interface {v1}, Lm/x;->c()I

    const/4 v1, 0x0

    iput-object v1, p0, Lm/l;->k:Lm/H;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/H;

    invoke-virtual {p0}, Lm/H;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lm/U;)V
    .locals 2

    new-instance v0, Lm/j;

    iget-object v1, p0, Lm/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/j;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lm/l;->a(Lm/U;Lm/x;)V

    return-void
.end method

.method public a(Lm/w;Lm/v;)V
    .locals 2

    iget-boolean v0, p0, Lm/l;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lm/l;->g:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lm/v;->a(Lm/w;Lm/p;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lm/l;->l:Lad/g;

    invoke-virtual {p1}, Lm/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/P;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lm/v;->a(Lm/w;Lm/p;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lm/H;

    invoke-direct {v0, p0, p1, p2}, Lm/H;-><init>(Lm/l;Lm/w;Lm/v;)V

    invoke-direct {p0, v0}, Lm/l;->a(Lm/H;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lm/l;->e:Lm/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/l;->e:Lm/x;

    invoke-interface {v0}, Lm/x;->c()I

    iget-object v0, p0, Lm/l;->e:Lm/x;

    invoke-interface {v0}, Lm/x;->b()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lm/l;->f:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lm/l;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-boolean v0, p0, Lm/l;->f:Z

    if-nez v0, :cond_2

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lm/l;->e:Lm/x;

    invoke-interface {v0}, Lm/x;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected d()Landroid/os/StatFs;
    .locals 2

    iget-object v0, p0, Lm/l;->c:Landroid/content/Context;

    invoke-static {v0}, Las/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected e()Landroid/os/StatFs;
    .locals 2

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lm/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
