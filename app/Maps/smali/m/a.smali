.class Lm/a;
.super Lak/m;


# instance fields
.field final synthetic a:Lm/X;

.field private final b:Ljava/util/Locale;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lm/E;


# direct methods
.method public constructor <init>(Lm/X;Ljava/util/Locale;ILjava/lang/String;Lm/E;)V
    .locals 0

    iput-object p1, p0, Lm/a;->a:Lm/X;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, Lm/a;->b:Ljava/util/Locale;

    iput p3, p0, Lm/a;->c:I

    iput-object p4, p0, Lm/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lm/a;->e:Lm/E;

    return-void
.end method

.method public constructor <init>(Lm/X;Ljava/util/Locale;ILm/E;)V
    .locals 6

    invoke-static {p3}, Lm/X;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lm/a;-><init>(Lm/X;Ljava/util/Locale;ILjava/lang/String;Lm/E;)V

    return-void
.end method

.method static synthetic a(Lm/a;)I
    .locals 1

    iget v0, p0, Lm/a;->c:I

    return v0
.end method

.method static synthetic b(Lm/a;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lm/a;->b:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic c(Lm/a;)Lm/E;
    .locals 1

    iget-object v0, p0, Lm/a;->e:Lm/E;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/r;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lm/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lm/a;->e:Lm/E;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lm/a;->e:Lm/E;

    invoke-virtual {v2}, Lm/E;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_0
    invoke-virtual {v0}, Law/e;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v0, Ls/r;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lm/a;->b:Ljava/util/Locale;

    iget v2, p0, Lm/a;->c:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Law/e;->e(I)J

    move-result-wide v3

    iget-object v5, p0, Lm/a;->a:Lm/X;

    invoke-static {v5}, Lm/X;->a(Lm/X;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lm/E;->a(Ljava/util/Locale;IJLjava/lang/String;)Lm/E;

    move-result-object v1

    iget-object v2, p0, Lm/a;->a:Lm/X;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Law/e;->c(I)[B

    move-result-object v0

    invoke-static {v2, p0, v1, v0}, Lm/X;->a(Lm/X;Lm/a;Lm/E;[B)V

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v0, 0x130

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lm/a;->e:Lm/E;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/a;->e:Lm/E;

    invoke-virtual {v0}, Lm/E;->g()V

    iget-object v0, p0, Lm/a;->a:Lm/X;

    invoke-static {v0}, Lm/X;->b(Lm/X;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lm/a;->a:Lm/X;

    invoke-static {v0, p0}, Lm/X;->a(Lm/X;Lm/a;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x194

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lm/a;->a:Lm/X;

    invoke-static {v0, p0}, Lm/X;->b(Lm/X;Lm/a;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lm/a;->a:Lm/X;

    invoke-static {v0, p0}, Lm/X;->a(Lm/X;Lm/a;)V

    goto :goto_1
.end method
