.class public final Lw/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Lw/a;

.field private final c:Lw/u;

.field private final d:Ljava/io/PrintWriter;

.field private final e:Ljava/util/Date;

.field private final f:Ljava/lang/StringBuffer;

.field private final g:Ljava/text/FieldPosition;

.field private final h:Ljava/text/SimpleDateFormat;

.field private final i:Ljava/util/EnumSet;

.field private final j:[Lw/b;

.field private final k:[I

.field private final l:[J

.field private m:J


# direct methods
.method public constructor <init>(Lw/a;Lw/u;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lw/v;->e:Ljava/util/Date;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lw/v;->f:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lw/v;->g:Ljava/text/FieldPosition;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lw/v;->h:Ljava/text/SimpleDateFormat;

    sget-object v0, Lw/z;->f:Lw/z;

    sget-object v1, Lw/z;->q:Lw/z;

    sget-object v2, Lw/z;->r:Lw/z;

    sget-object v3, Lw/z;->x:Lw/z;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lw/v;->i:Ljava/util/EnumSet;

    invoke-static {}, Lw/z;->values()[Lw/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lw/b;

    iput-object v0, p0, Lw/v;->j:[Lw/b;

    invoke-static {}, Lw/z;->values()[Lw/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lw/v;->k:[I

    invoke-static {}, Lw/z;->values()[Lw/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lw/v;->l:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw/v;->m:J

    iput-object p1, p0, Lw/v;->b:Lw/a;

    iput-object p2, p0, Lw/v;->c:Lw/u;

    iput-object p3, p0, Lw/v;->d:Ljava/io/PrintWriter;

    iget-object v0, p0, Lw/v;->l:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private declared-synchronized a(Lw/b;)V
    .locals 5

    const/4 v4, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/b;

    iget-object v1, p0, Lw/v;->l:[J

    iget-object v0, v0, Lw/b;->a:Lw/z;

    invoke-virtual {v0}, Lw/z;->ordinal()I

    move-result v0

    iget-wide v2, p1, Lw/b;->b:J

    aput-wide v2, v1, v0

    :cond_0
    iget-object v0, p0, Lw/v;->j:[Lw/b;

    iget-object v1, p1, Lw/b;->a:Lw/z;

    invoke-virtual {v1}, Lw/z;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    iget-object v0, p0, Lw/v;->k:[I

    iget-object v1, p1, Lw/b;->a:Lw/z;

    invoke-virtual {v1}, Lw/z;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p1, Lw/b;->a:Lw/z;

    sget-object v1, Lw/z;->j:Lw/z;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/b;

    iget-object v0, v0, Lw/b;->a:Lw/z;

    sget-object v1, Lw/z;->j:Lw/z;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    iget-object v1, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/b;

    iget-object v0, v0, Lw/b;->a:Lw/z;

    sget-object v1, Lw/z;->j:Lw/z;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p1, Lw/b;->a:Lw/z;

    iget-object v0, v0, Lw/z;->C:Lw/w;

    sget-object v1, Lw/w;->a:Lw/w;

    if-ne v0, v1, :cond_3

    iget-wide v0, p1, Lw/b;->b:J

    iput-wide v0, p0, Lw/v;->m:J

    :cond_3
    iget-object v0, p0, Lw/v;->c:Lw/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lw/v;->i:Ljava/util/EnumSet;

    iget-object v1, p1, Lw/b;->a:Lw/z;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lw/v;->c:Lw/u;

    const-string v1, "gmmNlpEventLog"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lw/u;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lw/b;->a(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw/v;->c:Lw/u;

    const-string v2, "gmmNlpEventLog"

    invoke-interface {v1, v2, v0}, Lw/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lw/v;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lw/v;->e:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lw/v;->f:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lw/v;->h:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lw/v;->e:Ljava/util/Date;

    iget-object v2, p0, Lw/v;->f:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lw/v;->g:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lw/v;->d:Ljava/io/PrintWriter;

    iget-object v1, p0, Lw/v;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lw/v;->d:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lw/b;->a(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lw/v;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    new-instance v0, Lw/h;

    sget-object v2, Lw/z;->c:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/h;-><init>(Lw/v;Lw/z;JI)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 8

    new-instance v0, Lw/g;

    sget-object v2, Lw/z;->d:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lw/g;-><init>(Lw/v;Lw/z;JIIZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(IJ)V
    .locals 8

    new-instance v0, Lw/p;

    sget-object v2, Lw/z;->n:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lw/p;-><init>(Lw/v;Lw/z;JIJ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(IZ)V
    .locals 7

    new-instance v0, Lw/j;

    sget-object v2, Lw/z;->a:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lw/j;-><init>(Lw/v;Lw/z;JIZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(LW/b;)V
    .locals 6

    new-instance v0, Lw/q;

    sget-object v2, Lw/z;->w:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lw/q;-><init>(Lw/v;Lw/z;JLW/b;)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(LW/k;)V
    .locals 6

    new-instance v0, Lw/n;

    sget-object v2, Lw/z;->l:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lw/n;-><init>(Lw/v;Lw/z;JLW/k;)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(LW/m;)V
    .locals 6

    new-instance v0, Lw/f;

    sget-object v2, Lw/z;->e:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lw/f;-><init>(Lw/v;Lw/z;JLW/m;)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/b;

    iget-object v2, v0, Lw/b;->a:Lw/z;

    iget-object v2, v2, Lw/z;->C:Lw/w;

    sget-object v3, Lw/w;->a:Lw/w;

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    invoke-virtual {v0, p1}, Lw/b;->a(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lw/m;

    sget-object v2, Lw/z;->x:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lw/m;-><init>(Lw/v;Lw/z;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/text/Format;JJLjava/io/PrintWriter;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-wide/32 v2, 0x927c0

    sub-long v2, p4, v2

    iget-object v0, p0, Lw/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/b;

    iget-wide v5, v0, Lw/b;->b:J

    cmp-long v5, v5, v2

    if-ltz v5, :cond_0

    iget-object v5, v0, Lw/b;->a:Lw/z;

    iget-object v5, v5, Lw/z;->C:Lw/w;

    sget-object v6, Lw/w;->a:Lw/w;

    if-ne v5, v6, :cond_1

    const/16 v5, 0xa

    invoke-virtual {p6, v5}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    invoke-virtual {v1, p2, p3}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v0, p1, v1, p6}, Lw/b;->a(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public a(Lw/A;)V
    .locals 6

    new-instance v0, Lw/c;

    sget-object v2, Lw/z;->j:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lw/c;-><init>(Lw/v;Lw/z;JLw/A;)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(Lw/z;)V
    .locals 3

    new-instance v0, Lw/b;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lw/b;-><init>(Lw/z;J)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public a(Z)V
    .locals 6

    new-instance v0, Lw/i;

    sget-object v2, Lw/z;->b:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/i;-><init>(Lw/v;Lw/z;JZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public b(I)V
    .locals 6

    new-instance v0, Lw/e;

    sget-object v2, Lw/z;->f:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/e;-><init>(Lw/v;Lw/z;JI)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public b(Z)V
    .locals 6

    new-instance v0, Lw/d;

    sget-object v2, Lw/z;->g:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/d;-><init>(Lw/v;Lw/z;JZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public c(I)V
    .locals 6

    new-instance v0, Lw/s;

    sget-object v2, Lw/z;->z:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/s;-><init>(Lw/v;Lw/z;JI)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public c(Z)V
    .locals 6

    new-instance v0, Lw/k;

    sget-object v2, Lw/z;->k:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/k;-><init>(Lw/v;Lw/z;JZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public d(I)V
    .locals 6

    new-instance v0, Lw/t;

    sget-object v2, Lw/z;->A:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/t;-><init>(Lw/v;Lw/z;JI)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public d(Z)V
    .locals 6

    new-instance v0, Lw/o;

    sget-object v2, Lw/z;->m:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/o;-><init>(Lw/v;Lw/z;JZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public e(Z)V
    .locals 6

    new-instance v0, Lw/r;

    sget-object v2, Lw/z;->u:Lw/z;

    iget-object v1, p0, Lw/v;->b:Lw/a;

    invoke-interface {v1}, Lw/a;->a()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lw/r;-><init>(Lw/v;Lw/z;JZ)V

    invoke-direct {p0, v0}, Lw/v;->a(Lw/b;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lw/v;->a(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
