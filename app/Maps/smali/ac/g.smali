.class public Lac/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:J

.field private static final b:Ljava/util/Vector;

.field private static final c:Ljava/util/Hashtable;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Ljava/lang/StringBuffer;

.field private static l:Lac/j;

.field private static m:Lac/q;

.field private static n:Z

.field private static o:Z

.field private static p:Lac/t;

.field private static q:Lac/f;

.field private static r:Lac/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lac/g;->a:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lac/g;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lac/g;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lac/g;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lac/g;->e:Ljava/lang/String;

    sput v2, Lac/g;->f:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lac/g;->g:J

    const/4 v0, 0x1

    sput-boolean v0, Lac/g;->h:Z

    sput-boolean v2, Lac/g;->i:Z

    sput-boolean v2, Lac/g;->j:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lac/g;->k:Ljava/lang/StringBuffer;

    new-instance v0, Lac/a;

    invoke-direct {v0}, Lac/a;-><init>()V

    sput-object v0, Lac/g;->l:Lac/j;

    sput-boolean v2, Lac/g;->n:Z

    sput-boolean v2, Lac/g;->o:Z

    new-instance v0, Lac/n;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, Lac/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lac/g;->r:Lac/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lac/y;
    .locals 1

    sget-object v0, Lac/g;->r:Lac/y;

    return-object v0
.end method

.method public static a(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lac/g;->a(ZLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(ZLjava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lac/g;->r:Lac/y;

    invoke-interface {v0}, Lac/y;->a()[B

    move-result-object v0

    sget-object v1, Lac/g;->q:Lac/f;

    invoke-interface {v1, p0, p1, v0}, Lac/f;->a(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lac/g;->a(J)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(J)V
    .locals 3

    sget-object v0, Lac/g;->r:Lac/y;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lac/g;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lac/g;->r:Lac/y;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lac/y;->a([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lac/g;->r:Lac/y;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lac/y;->a([B)V

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lac/g;->r:Lac/y;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v0}, Lac/y;->a([B)V

    throw v1
.end method

.method public static a(Lac/f;)V
    .locals 0

    sput-object p0, Lac/g;->q:Lac/f;

    return-void
.end method

.method public static a(Lac/j;)V
    .locals 0

    sput-object p0, Lac/g;->l:Lac/j;

    return-void
.end method

.method public static a(Lac/y;)V
    .locals 0

    sput-object p0, Lac/g;->r:Lac/y;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x12c

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lac/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lac/g;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    sput-object p0, Lac/g;->e:Ljava/lang/String;

    :goto_1
    sget-object v1, Lac/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    sget-object v1, Lac/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lac/g;->e:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lac/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lac/g;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 2

    invoke-static {p0}, Lac/g;->c(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lac/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLjava/lang/StringBuffer;)V
    .locals 2

    invoke-static {p0}, Lac/g;->c(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lac/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lac/g;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    sget-object v0, Lac/g;->p:Lac/t;

    if-eqz v0, :cond_0

    sget-object v0, Lac/g;->p:Lac/t;

    invoke-interface {v0, p0, p1, p2}, Lac/t;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    sget-object v0, Lac/g;->q:Lac/f;

    if-eqz v0, :cond_1

    const-string v0, "REQUEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lac/g;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lac/g;->f:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lac/g;->q:Lac/f;

    sget-object v1, Lac/g;->l:Lac/j;

    invoke-interface {v0, p2, p0, p1, v1}, Lac/f;->a(ZLjava/lang/String;Ljava/lang/Throwable;Lac/j;)V

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    const-wide/32 v3, 0x63ff9c

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-object v0, Lac/g;->r:Lac/y;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lac/g;->r:Lac/y;

    invoke-interface {v0}, Lac/y;->a()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x258

    if-gt v1, v2, :cond_1

    sget-wide v1, Lac/g;->g:J

    sub-long v1, p3, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_1
    if-nez v0, :cond_5

    invoke-static {p3, p4}, Lac/g;->a(J)V

    :cond_2
    :goto_1
    sget-object v0, Lac/g;->r:Lac/y;

    invoke-interface {v0}, Lac/y;->a()[B

    move-result-object v0

    :cond_3
    array-length v1, v0

    if-le v1, v5, :cond_6

    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, v0

    if-le v1, v5, :cond_4

    const/4 v1, 0x2

    array-length v4, v0

    sub-int/2addr v4, v5

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_4
    int-to-short v0, p0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v0, Lac/g;->g:J

    sub-long v0, p3, v0

    const-wide/32 v4, 0x63ff9c

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Lac/g;->r:Lac/y;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lac/y;->a([B)V

    sput-wide p3, Lac/g;->g:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto :goto_0

    :cond_5
    sget-object v0, Lac/g;->q:Lac/f;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v6, v0, p3, p4}, Lac/g;->a(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    :cond_6
    move v1, v6

    goto :goto_2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lac/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lac/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lac/g;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lac/g;->m:Lac/q;

    if-eqz v0, :cond_0

    sget-object v0, Lac/g;->m:Lac/q;

    invoke-interface {v0, p0}, Lac/q;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    const-string v2, ""

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    const-string v1, "="

    const-string v2, ""

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lac/g;->r:Lac/y;

    if-eqz v0, :cond_0

    sget-object v0, Lac/g;->r:Lac/y;

    invoke-interface {v0}, Lac/y;->c()V

    :cond_0
    return-void
.end method

.method public static d()Lac/j;
    .locals 1

    sget-object v0, Lac/g;->l:Lac/j;

    return-object v0
.end method
