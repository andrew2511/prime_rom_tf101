.class public final Lai;
.super Ljava/lang/Object;


# static fields
.field static final a:Ly;

.field static final b:Lbq;

.field static final c:Lbe;

.field static final d:Lar;

.field static final e:Lag;

.field private static final f:Lae;


# instance fields
.field private final g:Lae;

.field private final h:Lae;

.field private final i:Lag;

.field private final j:Lbc;

.field private final k:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk",
            "<",
            "Lay",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final l:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk",
            "<",
            "Lam",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m:Lar;

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly;

    invoke-direct {v0}, Ly;-><init>()V

    sput-object v0, Lai;->a:Ly;

    new-instance v0, Lbq;

    invoke-direct {v0}, Lbq;-><init>()V

    sput-object v0, Lai;->b:Lbq;

    new-instance v0, Lbe;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lbe;-><init>([I)V

    sput-object v0, Lai;->c:Lbe;

    new-instance v0, Lal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lal;-><init>(B)V

    sput-object v0, Lai;->d:Lar;

    new-instance v0, Lbp;

    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    invoke-direct {v0, v1}, Lbp;-><init>(Lag;)V

    sput-object v0, Lai;->e:Lag;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lai;->a:Ly;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai;->b:Lbq;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai;->c:Lbe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lac;

    invoke-direct {v1, v0}, Lac;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lai;->f:Lae;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    sget-object v1, Lai;->f:Lae;

    sget-object v2, Lai;->f:Lae;

    sget-object v3, Lai;->e:Lag;

    new-instance v4, Lbc;

    invoke-static {}, Lab;->c()Lbk;

    move-result-object v0

    invoke-direct {v4, v0}, Lbc;-><init>(Lbk;)V

    sget-object v5, Lai;->d:Lar;

    invoke-static {}, Lab;->a()Lbk;

    move-result-object v6

    invoke-static {}, Lab;->b()Lbk;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lai;-><init>(Lae;Lae;Lag;Lbc;Lar;Lbk;Lbk;)V

    return-void
.end method

.method private constructor <init>(Lae;Lae;Lag;Lbc;Lar;Lbk;Lbk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae;",
            "Lae;",
            "Lag;",
            "Lbc;",
            "Lar;",
            "Lbk",
            "<",
            "Lay",
            "<*>;>;",
            "Lbk",
            "<",
            "Lam",
            "<*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai;->g:Lae;

    iput-object p2, p0, Lai;->h:Lae;

    iput-object p3, p0, Lai;->i:Lag;

    iput-object p4, p0, Lai;->j:Lbc;

    iput-object p5, p0, Lai;->m:Lar;

    iput-boolean v0, p0, Lai;->n:Z

    iput-object p6, p0, Lai;->k:Lbk;

    iput-object p7, p0, Lai;->l:Lbk;

    iput-boolean v0, p0, Lai;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lai;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    if-nez p1, :cond_4

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lai;->o:Z

    if-eqz v2, :cond_2

    const-string v2, ")]}\'\n"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lai;->n:Z

    if-eqz v2, :cond_3

    const-string v2, "null"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_3
    iget-object v2, p0, Lai;->m:Lar;

    iget-boolean v3, p0, Lai;->n:Z

    invoke-interface {v2, v0, v1, v3}, Lar;->a(Lao;Ljava/lang/Appendable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v2, Law;

    iget-object v3, p0, Lai;->g:Lae;

    new-instance v4, Lbh;

    iget-object v5, p0, Lai;->i:Lag;

    invoke-direct {v4, v3, v5}, Lbh;-><init>(Lae;Lag;)V

    iget-boolean v3, p0, Lai;->n:Z

    iget-object v5, p0, Lai;->k:Lbk;

    invoke-direct {v2, v4, v3, v5}, Law;-><init>(Lbh;ZLbk;)V

    invoke-virtual {v2, p1, v0}, Law;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "serializeNulls:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lai;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai;->k:Lbk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deserializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai;->l:Lbk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai;->j:Lbc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
