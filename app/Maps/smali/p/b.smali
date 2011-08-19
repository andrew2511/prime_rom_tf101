.class public Lp/b;
.super Ln/l;


# static fields
.field protected static a:Lp/b;

.field private static m:Lag/g;


# instance fields
.field protected b:LT/c;

.field protected c:Lg/f;

.field protected d:Ly/k;

.field protected e:Ljava/util/Vector;

.field protected f:Ljava/util/Hashtable;

.field protected g:Ljava/util/Hashtable;

.field protected h:J

.field protected i:J

.field protected j:LT/a;

.field protected k:LT/a;

.field private n:Lat/g;

.field private o:Ln/b;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/Vector;

.field private s:Ljava/lang/Object;

.field private t:I

.field private u:I

.field private v:I

.field private final w:J

.field private x:Z

.field private y:Lp/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lp/b;

    invoke-static {v0}, Lag/g;->a(Ljava/lang/Class;)Lag/g;

    move-result-object v0

    sput-object v0, Lp/b;->m:Lag/g;

    return-void
.end method

.method protected constructor <init>(Lp/a;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ln/l;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lp/b;->r:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lp/b;->e:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lp/b;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lp/b;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp/b;->s:Ljava/lang/Object;

    iput v1, p0, Lp/b;->t:I

    iput v1, p0, Lp/b;->u:I

    iput v1, p0, Lp/b;->v:I

    iput-boolean v1, p0, Lp/b;->x:Z

    invoke-static {p1}, Lp/a;->a(Lp/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lp/b;->w:J

    new-instance v0, Ly/k;

    invoke-static {p1}, Lp/a;->b(Lp/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lp/a;->c(Lp/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lp/a;->d(Lp/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lp/a;->e(Lp/a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "g"

    invoke-direct/range {v0 .. v5}, Ly/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lp/b;->d:Ly/k;

    invoke-virtual {p0}, Lp/b;->c()LT/c;

    move-result-object v0

    iput-object v0, p0, Lp/b;->b:LT/c;

    iget-object v0, p0, Lp/b;->b:LT/c;

    invoke-virtual {v0}, LT/c;->d()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->x()Ln/b;

    move-result-object v0

    iput-object v0, p0, Lp/b;->o:Ln/b;

    invoke-static {p1}, Lp/a;->f(Lp/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lp/a;->g(Lp/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/b;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lp/b;->d()Lat/g;

    move-result-object v0

    iput-object v0, p0, Lp/b;->n:Lat/g;

    iget-object v0, p0, Lp/b;->n:Lat/g;

    invoke-virtual {v0}, Lat/g;->a()V

    new-instance v0, Lg/g;

    iget-object v1, p0, Lp/b;->b:LT/c;

    iget-object v2, p0, Lp/b;->d:Ly/k;

    invoke-direct {v0, p0, v1, v2}, Lg/g;-><init>(Lp/b;LT/c;Ly/k;)V

    iput-object v0, p0, Lp/b;->c:Lg/f;

    new-instance v0, Lp/h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lp/h;-><init>(I)V

    iput-object v0, p0, Lp/b;->y:Lp/h;

    new-instance v0, LT/a;

    iget-object v1, p0, Lp/b;->b:LT/c;

    new-instance v2, Lp/e;

    invoke-direct {v2, p0}, Lp/e;-><init>(Lp/b;)V

    invoke-direct {v0, v1, v2}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lp/b;->j:LT/a;

    new-instance v0, Lp/d;

    iget-object v1, p0, Lp/b;->b:LT/c;

    invoke-direct {v0, p0, v1}, Lp/d;-><init>(Lp/b;LT/c;)V

    iput-object v0, p0, Lp/b;->k:LT/a;

    return-void
.end method

.method static synthetic a(Lp/b;I)I
    .locals 1

    iget v0, p0, Lp/b;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lp/b;->u:I

    return v0
.end method

.method static synthetic a(Lp/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp/b;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ly/a;Ly/o;)Ly/j;
    .locals 11

    invoke-virtual {p1}, Ly/a;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ly/f;

    invoke-virtual {p2}, Ly/o;->y()I

    move-result v1

    invoke-virtual {p2}, Ly/o;->a()I

    move-result v2

    invoke-virtual {p2}, Ly/o;->c()Ly/e;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Ly/f;-><init>(IILy/e;)V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, Ly/o;->g()[Ly/e;

    move-result-object v6

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    array-length v1, v6

    if-ge v7, v1, :cond_2

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ly/e;->g()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "Content-Location"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/f;

    if-nez v2, :cond_0

    invoke-virtual {v8}, Ly/e;->g()Ljava/util/Hashtable;

    move-result-object v2

    const-string v9, "X-Masf-Response-Code"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Ly/f;

    invoke-virtual {p2}, Ly/o;->y()I

    move-result v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v9, v10, v2, v8}, Ly/f;-><init>(IILy/e;)V

    invoke-virtual {v5, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v8}, Ly/f;->a(Ly/e;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v8}, Ly/f;->a(Ly/e;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v6, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v6

    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/f;

    iget-object v7, p0, Lp/b;->y:Lp/h;

    invoke-virtual {v1}, Ly/f;->a()Ly/o;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lp/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lp/b;->m:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached response for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lag/g;->b(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ly/f;->a()Ly/o;

    move-result-object v1

    return-object v1
.end method

.method private a(I)V
    .locals 3

    invoke-direct {p0}, Lp/b;->p()[Lp/o;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lp/o;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lp/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/d;

    invoke-virtual {v0}, Ly/d;->o()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2

    iget-object v2, p0, Lp/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ly/d;->r()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lp/b;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ly/d;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1, p2}, Ly/d;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lp/b;->m:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lp/b;->m:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lag/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lat/f;[Ly/d;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-interface {p1}, Lat/f;->o()I

    move-result v1

    invoke-interface {p1}, Lat/f;->q()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_0

    sget-object v2, Lp/b;->m:Lag/g;

    const-string v3, "MobileServiceMux.Worker.processRequests() - responseCode == HTTP_BAD_GATEWAY"

    invoke-virtual {v2, v3}, Lag/g;->b(Ljava/lang/Object;)V

    new-instance v2, Lp/i;

    invoke-direct {v2, v1}, Lp/i;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    sget-object v2, Lp/b;->m:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileServiceMux.Worker.processRequests() - responseCode != HTTP_OK (It was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lag/g;->b(Ljava/lang/Object;)V

    new-instance v2, Lp/i;

    invoke-direct {v2, v1}, Lp/i;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lp/b;->a(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "MobileServiceMux.Worker.processRequests() - contentType != application/binary"

    invoke-virtual {v1, v2}, Lag/g;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "handleResponses - success"

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    :try_start_0
    iget v1, p0, Lp/b;->v:I

    int-to-long v1, v1

    invoke-interface {p1}, Lat/f;->p()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lp/b;->v:I

    invoke-interface {p1}, Lat/f;->r()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v4, Ly/c;

    invoke-direct {v4, v1}, Ly/c;-><init>(Ljava/io/DataInputStream;)V

    move v5, v9

    :goto_1
    array-length v1, p2

    if-ge v5, v1, :cond_7

    invoke-virtual {v4}, Ly/c;->b()Ly/j;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v9

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_9

    aget-object v2, p2, v1

    sget-object v6, Lp/b;->m:Lag/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handle response - request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lag/g;->c(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ly/d;->y()I

    move-result v6

    invoke-virtual {v3}, Ly/j;->y()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    aput-object v6, p2, v1

    :goto_3
    if-eqz v2, :cond_6

    instance-of v1, v3, Ly/o;

    if-eqz v1, :cond_8

    instance-of v1, v2, Ly/a;

    if-eqz v1, :cond_8

    sget-object v1, Lp/b;->m:Lag/g;

    const-string v6, "MultipartResponse"

    invoke-virtual {v1, v6}, Lag/g;->c(Ljava/lang/Object;)V

    move-object v0, v2

    check-cast v0, Ly/a;

    move-object v1, v0

    check-cast v3, Ly/o;

    invoke-direct {p0, v1, v3}, Lp/b;->a(Ly/a;Ly/o;)Ly/j;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Ly/j;->a()I

    move-result v3

    sget-object v6, Lp/b;->m:Lag/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subrequest status code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lag/g;->c(Ljava/lang/Object;)V

    const/16 v6, 0x226

    if-ne v3, v6, :cond_5

    invoke-virtual {v1}, Ly/j;->b()V

    new-instance v1, Lp/i;

    invoke-direct {v1, v3}, Lp/i;-><init>(I)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v6

    invoke-direct {p0, v2, v1, v6, v7}, Lp/b;->a(Ly/d;Ljava/lang/Exception;J)Z

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0, v2, v1}, Lp/b;->a(Ly/d;Ly/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lp/b;->m:Lag/g;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lag/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-direct {p0, p2, v1}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    sget-object v1, Lp/b;->m:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MobileServiceMux.Worker.handleResponses() - unmatched response, ignoring [responseId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ly/j;->y()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v3}, Ly/j;->e()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, Ly/j;->f()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    :try_start_4
    invoke-virtual {v3}, Ly/j;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v2, Lp/b;->m:Lag/g;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lag/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :try_start_6
    invoke-virtual {v4}, Ly/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    sget-object v2, Lp/b;->m:Lag/g;

    const-string v3, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_7

    :cond_8
    move-object v1, v3

    goto/16 :goto_4

    :cond_9
    move-object v2, v10

    goto/16 :goto_3
.end method

.method public static declared-synchronized a(Lp/a;)V
    .locals 2

    const-class v0, Lp/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/b;->a:Lp/b;

    if-nez v1, :cond_0

    new-instance v1, Lp/b;

    invoke-direct {v1, p0}, Lp/b;-><init>(Lp/a;)V

    sput-object v1, Lp/b;->a:Lp/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lp/b;Lat/f;[Ly/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp/b;->a(Lat/f;[Ly/d;)V

    return-void
.end method

.method static synthetic a(Lp/b;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lp/b;->a([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lp/b;[Ly/d;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ly/d;Ly/j;)V
    .locals 3

    sget-object v0, Lp/b;->m:Lag/g;

    const-string v1, "MobileServiceMux.handleResponse()"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Ly/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly/d;->i()Ly/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ly/p;->a(Ly/d;Ly/j;)V

    :cond_0
    invoke-direct {p0, p1}, Lp/b;->b(Ly/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ly/j;->b()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "MobileServiceMux.handleResponse(): Unhandled thrown by request listener"

    invoke-virtual {v1, v2, v0}, Lag/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ly/j;->b()V

    throw v0
.end method

.method private a([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object p0, p1, v0

    check-cast p0, Ly/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ly/d;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([Ly/d;Ljava/lang/Exception;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v2

    move v3, v7

    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2, v0, v1}, Lp/b;->a(Ly/d;Ljava/lang/Exception;J)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lp/b;->m:Lag/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requeuing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lag/g;->c(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v4, p1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lp/b;->o()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ly/d;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lp/b;->m:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ly/d;->i()Ly/p;

    move-result-object v1

    if-eqz v1, :cond_2

    aget-object v2, p1, v0

    invoke-interface {v1, v2, p2}, Ly/p;->a(Ly/d;Ljava/lang/Exception;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method private a([Ly/d;Z)V
    .locals 10

    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lp/b;->d:Ly/k;

    invoke-virtual {v1}, Ly/k;->e()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    move v5, v1

    :goto_0
    array-length v1, p1

    if-ge v4, v1, :cond_3

    aget-object v2, p1, v4

    if-nez v2, :cond_0

    move v1, v5

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v1

    goto :goto_0

    :cond_0
    instance-of v1, v2, Ly/a;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Ly/a;

    move-object v1, v0

    invoke-virtual {v1}, Ly/a;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v1, Lp/b;->m:Lag/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in response cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v7, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lp/b;->y:Lp/h;

    invoke-virtual {v1, v6}, Lp/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    sget-object v7, Lp/b;->m:Lag/g;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found cached response for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lag/g;->c(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v6, p1, v4

    check-cast v1, Ly/j;

    invoke-direct {p0, v2, v1}, Lp/b;->a(Ly/d;Ly/j;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, p1, v1}, Lp/b;->a([Ly/d;Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_5
    sget-object v1, Lp/b;->m:Lag/g;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending request with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ly/d;->y()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lag/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ly/d;->e()I

    move-result v1

    add-int/2addr v1, v5

    const v6, 0x8000

    if-le v1, v6, :cond_4

    invoke-virtual {p0, v3, p2}, Lp/b;->a(Ljava/util/Vector;Z)V

    iget-object v1, p0, Lp/b;->d:Ly/k;

    invoke-virtual {v1}, Ly/k;->e()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    :goto_3
    const/4 v5, 0x0

    aput-object v5, p1, v4

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ly/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lp/b;->o()V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v3, p2}, Lp/b;->a(Ljava/util/Vector;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_4
    move v1, v5

    goto :goto_3
.end method

.method private a(Ly/d;Ljava/lang/Exception;J)Z
    .locals 3

    invoke-virtual {p1, p3, p4}, Ly/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3, p4}, Ly/d;->b(J)V

    sget-object v0, Lp/b;->m:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/b;->f:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ly/d;)[Ly/d;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    move v1, v0

    move-object v2, v7

    move v0, v6

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ly/d;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    array-length v2, p1

    new-array v2, v2, [Ly/d;

    :cond_0
    sget-object v3, Lp/b;->m:Lag/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encrypted request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lag/g;->c(Ljava/lang/Object;)V

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    aput-object v7, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ly/d;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v6

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    sget-object v0, Lp/b;->m:Lag/g;

    const-string v1, "Sending all the requests encrypted"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    move v0, v6

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    aget-object v1, p1, v0

    aput-object v1, v2, v0

    aput-object v7, p1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method private b([Ly/d;)Ljava/io/InputStream;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ly/d;->f()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ln/e;

    iget-object v2, p0, Lp/b;->d:Ly/k;

    invoke-virtual {v2}, Ly/k;->f()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ln/e;

    invoke-direct {v3, v0}, Ln/e;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v1, v2, v3}, Ln/e;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v1
.end method

.method private b(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lp/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/b;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lp/b;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized b()Lp/b;
    .locals 2

    const-class v0, Lp/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/b;->a:Lp/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(J)V
    .locals 5

    iget-object v0, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/d;

    invoke-virtual {v0}, Ly/d;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Ly/d;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lp/b;->m:Lag/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying a request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lag/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Ly/d;->c(J)V

    iget-object v2, p0, Lp/b;->f:Ljava/util/Hashtable;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lp/b;)V
    .locals 0

    invoke-direct {p0}, Lp/b;->o()V

    return-void
.end method

.method private b(Ly/d;)V
    .locals 3

    invoke-direct {p0}, Lp/b;->p()[Lp/o;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lp/o;->a(Ly/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h()Lag/g;
    .locals 1

    sget-object v0, Lp/b;->m:Lag/g;

    return-object v0
.end method

.method private m()Z
    .locals 1

    iget-object v0, p0, Lp/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/d;

    invoke-virtual {v0}, Ly/d;->n()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 9

    const-wide/16 v7, -0x1

    iget-object v1, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lp/b;->k:LT/a;

    invoke-virtual {v0}, LT/a;->h()I

    iget-object v0, p0, Lp/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    move-wide v3, v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/d;

    invoke-virtual {v0}, Ly/d;->u()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lp/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ly/d;->r()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lp/b;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ly/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ly/d;->p()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    :cond_2
    move-wide v3, v5

    goto :goto_0

    :cond_3
    cmp-long v0, v3, v7

    if-nez v0, :cond_4

    sget-object v0, Lp/b;->m:Lag/g;

    const-string v2, "No delay flush required"

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_1
    return-void

    :cond_4
    sget-object v0, Lp/b;->m:Lag/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling delayed flush: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/b;->k:LT/a;

    invoke-virtual {v0, v3, v4}, LT/a;->b(J)V

    iget-object v0, p0, Lp/b;->k:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private p()[Lp/o;
    .locals 3

    iget-object v0, p0, Lp/b;->r:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp/b;->r:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lp/o;

    iget-object v2, p0, Lp/b;->r:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized q()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lp/b;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp/b;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lp/b;->o:Ln/b;

    invoke-interface {v0}, Ln/b;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Ln/n;
    .locals 1

    new-instance v0, Lp/l;

    invoke-direct {v0, p1, p2}, Lp/l;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected a(Ljava/util/Vector;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Ly/d;

    invoke-virtual {p1, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lp/b;->b([Ly/d;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p2}, Lp/b;->b(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lp/b;->n:Lat/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lat/g;->a(Ljava/lang/String;I)Lat/f;

    move-result-object v3

    const-string v1, "POST"

    invoke-interface {v3, v1}, Lat/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-interface {v3, v0}, Lat/f;->a(Ljava/io/InputStream;)V

    iget-wide v0, p0, Lp/b;->w:J

    invoke-interface {v3, v0, v1}, Lat/f;->a(J)V

    const-string v0, "application/binary"

    invoke-interface {v3, v0}, Lat/f;->b(Ljava/lang/String;)V

    new-instance v0, Lp/c;

    iget-object v2, p0, Lp/b;->b:LT/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lp/c;-><init>(Lp/b;LT/c;Lat/f;[Ly/d;I)V

    sget-object v1, Lp/b;->m:Lag/g;

    const-string v2, "Scheduling a submit request"

    invoke-virtual {v1, v2}, Lag/g;->c(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Lat/f;->b(LT/b;)V

    return-void
.end method

.method public a(Ly/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp/b;->a(Ly/d;Z)V

    return-void
.end method

.method public a(Ly/d;Z)V
    .locals 5

    iget-object v0, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ly/d;->s()V

    invoke-direct {p0}, Lp/b;->q()I

    move-result v1

    invoke-virtual {p1, v1}, Ly/d;->c(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ly/d;->o()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ly/d;->k()V

    iget-object v1, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp/b;->f()V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lp/b;->f:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lp/b;->o()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected c()LT/c;
    .locals 4

    new-instance v0, LT/c;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->N()LaJ/c;

    move-result-object v1

    const-string v2, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LT/c;-><init>(LaJ/c;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected d()Lat/g;
    .locals 6

    new-instance v0, Lat/g;

    iget-object v1, p0, Lp/b;->b:LT/c;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->N()LaJ/c;

    move-result-object v2

    iget-object v3, p0, Lp/b;->o:Ln/b;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lat/g;-><init>(LT/c;LaJ/c;Ln/b;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected e()V
    .locals 3

    iget-object v0, p0, Lp/b;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lp/b;->a(J)V

    invoke-direct {p0, v1, v2}, Lp/b;->b(J)V

    invoke-direct {p0}, Lp/b;->n()V

    invoke-direct {p0}, Lp/b;->o()V

    iget-object v1, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ly/d;

    iget-object v2, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Lp/b;->e:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lp/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lp/b;->a([Ly/d;)[Ly/d;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lp/b;->a([Ly/d;Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lp/b;->a([Ly/d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected f()V
    .locals 8

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    iget-wide v4, p0, Lp/b;->i:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    iput-wide v0, p0, Lp/b;->h:J

    iput-wide v2, p0, Lp/b;->i:J

    sget-object v0, Lp/b;->m:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lp/b;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/b;->j:LT/a;

    iget-wide v1, p0, Lp/b;->i:J

    invoke-virtual {v0, v1, v2}, LT/a;->b(J)V

    iget-object v0, p0, Lp/b;->j:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lp/b;->h:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iput-wide v2, p0, Lp/b;->i:J

    sget-object v0, Lp/b;->m:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lp/b;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lp/b;->i:J

    iget-wide v2, p0, Lp/b;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lp/b;->h:J

    iput-wide v0, p0, Lp/b;->i:J

    sget-object v0, Lp/b;->m:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lp/b;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lp/b;->o:Ln/b;

    invoke-interface {v0}, Ln/b;->g()Z

    move-result v0

    return v0
.end method
