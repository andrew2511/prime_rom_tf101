.class public final Lal;
.super Lv;


# static fields
.field private static f:I

.field private static g:Lal;


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:J

.field d:J

.field e:LX;

.field private h:LW;

.field private i:LaQ;

.field private j:Lm;

.field private k:LB;

.field private l:Law;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Vector;

.field private o:Ljava/util/Vector;

.field private p:I

.field private q:I

.field private r:Las;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    sput v0, Lal;->f:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lv;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lal;->n:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lal;->o:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lal;->a:Ljava/lang/Object;

    iput v1, p0, Lal;->p:I

    iput v1, p0, Lal;->b:I

    iput v1, p0, Lal;->q:I

    new-instance v0, Law;

    const-string v5, "g"

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Law;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lal;->l:Law;

    new-instance v2, LS;

    invoke-direct {v2}, LS;-><init>()V

    new-instance v0, LW;

    const-string v1, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, LW;-><init>(LS;Ljava/lang/String;I)V

    iput-object v0, p0, Lal;->h:LW;

    iget-object v0, p0, Lal;->h:LW;

    invoke-virtual {v0}, LW;->b()V

    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->f()LB;

    move-result-object v0

    iput-object v0, p0, Lal;->k:LB;

    iput-object p1, p0, Lal;->m:Ljava/lang/String;

    new-instance v0, Lm;

    iget-object v1, p0, Lal;->h:LW;

    iget-object v3, p0, Lal;->k:LB;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lm;-><init>(LW;LS;LB;Ljava/lang/String;I)V

    iput-object v0, p0, Lal;->j:Lm;

    iget-object v0, p0, Lal;->j:Lm;

    invoke-virtual {v0}, Lm;->a()V

    new-instance v0, LaT;

    iget-object v1, p0, Lal;->h:LW;

    iget-object v2, p0, Lal;->l:Law;

    invoke-direct {v0, p0, v1, v2}, LaT;-><init>(Lal;LW;Law;)V

    iput-object v0, p0, Lal;->i:LaQ;

    new-instance v0, Las;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Las;-><init>(I)V

    iput-object v0, p0, Lal;->r:Las;

    new-instance v0, LX;

    iget-object v1, p0, Lal;->h:LW;

    new-instance v2, Lam;

    invoke-direct {v2, p0}, Lam;-><init>(Lal;)V

    invoke-direct {v0, v1, v2}, LX;-><init>(LW;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lal;->e:LX;

    return-void
.end method

.method private a(LaI;LaA;)LaH;
    .locals 10

    invoke-virtual {p1}, LaI;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LaB;

    invoke-virtual {p2}, LaA;->d()I

    move-result v0

    invoke-virtual {p2}, LaA;->g()I

    move-result v1

    invoke-virtual {p2}, LaA;->e()Lau;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, LaB;-><init>(IILau;)V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, LaA;->f()[Lau;

    move-result-object v5

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, v5

    if-ge v6, v0, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lau;->e()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "Content-Location"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaB;

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lau;->e()Ljava/util/Hashtable;

    move-result-object v1

    const-string v8, "X-Masf-Response-Code"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, LaB;

    invoke-virtual {p2}, LaA;->d()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v9, v1, v7}, LaB;-><init>(IILau;)V

    invoke-virtual {v4, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, LaB;->a(Lau;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v7}, LaB;->a(Lau;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lal;->a:Ljava/lang/Object;

    monitor-enter v2

    :goto_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaB;

    iget-object v6, p0, Lal;->r:Las;

    invoke-virtual {v0}, LaB;->a()LaA;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Las;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, LaB;->a()LaA;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lal;->g:Lal;

    if-eqz v0, :cond_2

    sget-object v0, Lal;->g:Lal;

    iget-object v0, v0, Lal;->j:Lm;

    if-eqz v0, :cond_0

    sget-object v0, Lal;->g:Lal;

    iget-object v0, v0, Lal;->j:Lm;

    invoke-virtual {v0}, Lm;->b()V

    :cond_0
    sget-object v0, Lal;->g:Lal;

    iget-object v0, v0, Lal;->h:LW;

    if-eqz v0, :cond_1

    sget-object v0, Lal;->g:Lal;

    iget-object v0, v0, Lal;->h:LW;

    invoke-virtual {v0}, LW;->c()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lal;->g:Lal;

    :cond_2
    return-void
.end method

.method private a(LaF;LaH;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, LaF;->i()LaG;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, LaG;->a(LaF;LaH;)V

    :cond_0
    invoke-direct {p0}, Lal;->c()[Lap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, LaH;->h()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, LaH;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, LaH;->h()V

    throw v0
.end method

.method private a(LaF;Ljava/lang/Exception;)V
    .locals 5

    invoke-virtual {p1}, LaF;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LaF;->e()J

    move-result-wide v0

    new-instance v2, Lan;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lan;-><init>(Lal;LaF;Z)V

    new-instance v3, LX;

    iget-object v4, p0, Lal;->h:LW;

    invoke-direct {v3, v4, v2}, LX;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v1}, LX;->a(J)V

    invoke-virtual {v3}, LX;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LaF;->i()LaG;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, LaG;->a(LaF;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lal;)V
    .locals 9

    iget-object v1, p0, Lal;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lal;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [LaF;

    iget-object v2, p0, Lal;->o:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Lal;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lal;->l:Law;

    invoke-virtual {v1}, Law;->a()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    move v6, v1

    :goto_0
    array-length v1, v3

    if-ge v5, v1, :cond_2

    aget-object v2, v3, v5

    instance-of v1, v2, LaI;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, LaI;

    move-object v1, v0

    invoke-virtual {v1}, LaI;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, p0, Lal;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v8, p0, Lal;->r:Las;

    invoke-virtual {v8, v1}, Las;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :try_start_3
    aput-object v7, v3, v5

    check-cast v1, LaH;

    invoke-direct {p0, v2, v1}, Lal;->a(LaF;LaH;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v6

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v7

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_5
    invoke-direct {p0}, Lal;->d()I

    move-result v1

    invoke-virtual {v2, v1}, LaF;->a(I)V

    invoke-virtual {v2}, LaF;->a()I

    move-result v1

    add-int/2addr v1, v6

    const v7, 0x8000

    if-le v1, v7, :cond_3

    invoke-direct {p0, v4}, Lal;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Lal;->l:Law;

    invoke-virtual {v1}, Law;->a()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    :goto_3
    const/4 v6, 0x0

    aput-object v6, v3, v5

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, LaF;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v4}, Lal;->a(Ljava/util/Vector;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_3
    move v1, v6

    goto :goto_3
.end method

.method static synthetic a(Lal;Ll;[Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-interface {p1}, Ll;->a_()I

    move-result v1

    invoke-interface {p1}, Ll;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ll;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ll;->c()Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lal;->a([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lal;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_4

    new-instance v2, Lai;

    invoke-direct {v2, v1}, Lai;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_5

    new-instance v2, Lai;

    invoke-direct {v2, v1}, Lai;-><init>(I)V

    invoke-static {p2, v2}, Lal;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lal;->c()[Lap;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_7
    :try_start_0
    iget v1, p0, Lal;->q:I

    int-to-long v1, v1

    invoke-interface {p1}, Ll;->e()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lal;->q:I

    invoke-interface {p1}, Ll;->g()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v4, LaE;

    invoke-direct {v4, v1}, LaE;-><init>(Ljava/io/DataInputStream;)V

    move v5, v8

    :goto_1
    array-length v1, p2

    if-ge v5, v1, :cond_b

    invoke-virtual {v4}, LaE;->b()LaH;

    move-result-object v3

    if-eqz v3, :cond_b

    move v2, v8

    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_d

    aget-object v1, p2, v2

    check-cast v1, LaF;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, LaF;->d()I

    move-result v6

    invoke-virtual {v3}, LaH;->d()I

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    aput-object v6, p2, v2

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_a

    instance-of v1, v3, LaA;

    if-eqz v1, :cond_c

    instance-of v1, v2, LaI;

    if-eqz v1, :cond_c

    move-object v0, v2

    check-cast v0, LaI;

    move-object v1, v0

    check-cast v3, LaA;

    invoke-direct {p0, v1, v3}, Lal;->a(LaI;LaA;)LaH;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, LaH;->g()I

    move-result v3

    const/16 v6, 0x226

    if-ne v3, v6, :cond_9

    invoke-virtual {v1}, LaH;->h()V

    new-instance v1, Lai;

    invoke-direct {v1, v3}, Lai;-><init>(I)V

    invoke-direct {p0, v2, v1}, Lal;->a(LaF;Ljava/lang/Exception;)V

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_9
    invoke-direct {p0, v2, v1}, Lal;->a(LaF;LaH;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    invoke-virtual {v3}, LaH;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, LaH;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    :try_start_3
    invoke-virtual {v3}, LaH;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-virtual {v4}, LaE;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lal;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_c
    move-object v1, v3

    goto :goto_4

    :cond_d
    move-object v2, v9

    goto/16 :goto_3
.end method

.method static synthetic a(Lal;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object p0, p1, v0

    check-cast p0, LaF;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LaF;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lal;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1, p2}, Lal;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v6, Lal;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lal;->g:Lal;

    if-nez v0, :cond_0

    new-instance v0, Lal;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lal;->g:Lal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private a(Ljava/util/Vector;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [LaF;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, LaF;->b()Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lal;->j:Lm;

    iget-object v3, p0, Lal;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lm;->a(Ljava/lang/String;)Ll;

    move-result-object v2

    const-string v3, "POST"

    invoke-interface {v2, v3}, Ll;->a(Ljava/lang/String;)V

    new-instance v3, LH;

    iget-object v4, p0, Lal;->l:Law;

    invoke-virtual {v4}, Law;->b()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, LH;

    invoke-direct {v5, v0}, LH;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v5}, LH;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {v3}, LH;->available()I

    move-result v0

    invoke-interface {v2, v3}, Ll;->a(Ljava/io/InputStream;)V

    sget v3, Lal;->f:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Ll;->a(J)V

    const-string v3, "application/binary"

    invoke-interface {v2, v3}, Ll;->b(Ljava/lang/String;)V

    new-instance v3, LV;

    iget-object v4, p0, Lal;->h:LW;

    new-instance v5, Lao;

    invoke-direct {v5, p0, v2, v1, v0}, Lao;-><init>(Lal;Ll;[LaF;I)V

    invoke-direct {v3, v4, v5}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ll;->b(LU;)V

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Connection disallowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lal;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lal;->c()[Lap;

    return-void
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    check-cast v0, LaF;

    invoke-virtual {v0}, LaF;->i()LaG;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, p1}, LaG;->a(LaF;Ljava/lang/Exception;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lal;
    .locals 1

    sget-object v0, Lal;->g:Lal;

    return-object v0
.end method

.method private b([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, LaF;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lal;->a(LaF;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()[Lap;
    .locals 3

    iget-object v0, p0, Lal;->n:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lal;->n:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lap;

    iget-object v2, p0, Lal;->n:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lal;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lal;->p:I
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
.method public final a(Ljava/lang/String;Z)Ly;
    .locals 1

    new-instance v0, Laq;

    invoke-direct {v0, p1, p2}, Laq;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(LaF;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lal;->a(LaF;Z)V

    return-void
.end method

.method public final a(LaF;Z)V
    .locals 9

    iget-object v0, p0, Lal;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lal;->o:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    add-long/2addr v3, v1

    iget-wide v5, p0, Lal;->d:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    const-wide/16 v5, 0x64

    add-long/2addr v1, v5

    iput-wide v1, p0, Lal;->c:J

    iput-wide v3, p0, Lal;->d:J

    iget-object v1, p0, Lal;->e:LX;

    iget-wide v2, p0, Lal;->d:J

    invoke-virtual {v1, v2, v3}, LX;->b(J)V

    iget-object v1, p0, Lal;->e:LX;

    invoke-virtual {v1}, LX;->e()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-wide v1, p0, Lal;->c:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_2

    iput-wide v3, p0, Lal;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :try_start_1
    iget-wide v1, p0, Lal;->d:J

    iget-wide v3, p0, Lal;->c:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-wide v1, p0, Lal;->c:J

    iput-wide v1, p0, Lal;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(LaO;)V
    .locals 1

    iget-object v0, p0, Lal;->i:LaQ;

    invoke-virtual {v0, p1}, LaQ;->a(LaO;)V

    return-void
.end method

.method public final b(LaO;)V
    .locals 1

    iget-object v0, p0, Lal;->i:LaQ;

    invoke-virtual {v0, p1}, LaQ;->b(LaO;)V

    return-void
.end method
