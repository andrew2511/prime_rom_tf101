.class public LaR/d;
.super Ljava/lang/Object;


# static fields
.field private static a:LaR/c;

.field private static k:LaR/d;

.field private static l:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:J

.field private j:LaW/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LaR/d;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, LaR/d;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LaW/a;->e()LaW/a;

    move-result-object v0

    iput-object v0, p0, LaR/d;->j:LaW/a;

    iput-object p1, p0, LaR/d;->b:Ljava/lang/String;

    iput-object p2, p0, LaR/d;->c:Ljava/lang/String;

    iput p3, p0, LaR/d;->d:I

    iput p4, p0, LaR/d;->e:I

    iput p5, p0, LaR/d;->f:I

    iput-object p6, p0, LaR/d;->g:Ljava/lang/String;

    iput-object p7, p0, LaR/d;->h:Ljava/lang/String;

    iput-wide p8, p0, LaR/d;->i:J

    return-void
.end method

.method public static a([LaR/d;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LaR/c;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LaR/d;->l:Z

    if-nez p0, :cond_0

    invoke-static {}, LaR/d;->b()V

    :cond_0
    sput-object p0, LaR/d;->a:LaR/c;

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LaR/d;->c()LaR/d;

    :cond_1
    return-void
.end method

.method public static a(LaR/e;)V
    .locals 2

    sget-boolean v0, LaR/d;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, LaR/d;->a:LaR/c;

    invoke-interface {v0, p0}, LaR/c;->a(LaR/e;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, LaR/d;->l:Z

    return v0
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, LaR/d;->l:Z

    return-void
.end method

.method public static c()LaR/d;
    .locals 1

    sget-object v0, LaR/d;->a:LaR/c;

    if-nez v0, :cond_0

    invoke-static {}, LaR/d;->e()LaR/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LaR/d;->a:LaR/c;

    invoke-interface {v0}, LaR/c;->a()LaR/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()[LaR/d;
    .locals 3

    sget-object v0, LaR/d;->a:LaR/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [LaR/d;

    const/4 v1, 0x0

    invoke-static {}, LaR/d;->e()LaR/d;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LaR/d;->a:LaR/c;

    invoke-interface {v0}, LaR/c;->b()[LaR/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()LaR/d;
    .locals 8

    const/4 v3, -0x1

    const/4 v1, 0x0

    sget-object v0, LaR/d;->k:LaR/d;

    if-nez v0, :cond_0

    new-instance v0, LaR/d;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, LaR/d;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LaR/d;->k:LaR/d;

    :cond_0
    sget-object v0, LaR/d;->k:LaR/d;

    return-object v0
.end method

.method public static k()Z
    .locals 2

    sget-boolean v0, LaR/d;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, LaR/d;->a:LaR/c;

    invoke-interface {v0}, LaR/c;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LaR/d;

    iget-object v0, p0, LaR/d;->b:Ljava/lang/String;

    iget-object v1, p1, LaR/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LaR/d;->c:Ljava/lang/String;

    iget-object v1, p1, LaR/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LaR/d;->j:LaW/a;

    iget-object v1, p1, LaR/d;->j:LaW/a;

    invoke-virtual {v0, v1}, LaW/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, LaR/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaR/d;->b:Ljava/lang/String;

    const-string v1, "00-00-00-00-00-00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaR/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LaR/d;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LaR/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, LaR/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget-object v1, p0, LaR/d;->j:LaW/a;

    invoke-virtual {v1}, LaW/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Law/e;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Law/e;

    sget-object v1, LZ/d;->f:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, LaR/d;->h:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, LaR/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    move v1, v4

    :cond_0
    iget v2, p0, LaR/d;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x3

    iget v2, p0, LaR/d;->e:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public j()Law/e;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, LZ/e;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-wide v1, p0, LaR/d;->i:J

    invoke-virtual {v0, v3, v1, v2}, Law/e;->b(IJ)V

    new-instance v1, Law/e;

    sget-object v2, LZ/e;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, LaR/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, LaR/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x4

    iget v3, p0, LaR/d;->f:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiInfo[bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaR/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaR/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaR/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, LaR/d;->i:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
