.class public LG/E;
.super Ljava/lang/Object;


# instance fields
.field protected final a:LG/ac;

.field protected final b:LG/d;

.field protected final c:I

.field protected final d:I


# direct methods
.method protected constructor <init>(LG/ac;LG/d;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/E;->a:LG/ac;

    iput-object p2, p0, LG/E;->b:LG/d;

    iput p3, p0, LG/E;->c:I

    iput p4, p0, LG/E;->d:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/E;
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v0}, LG/E;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, LG/P;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/d;

    move-result-object v2

    invoke-static {v0}, LG/E;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    :cond_0
    new-instance v3, LG/M;

    invoke-direct {v3, v2, v0, v1}, LG/M;-><init>(LG/d;II)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v0

    new-instance v1, LG/p;

    invoke-direct {v1, v0}, LG/p;-><init>(LG/ac;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(I)Z
    .locals 1

    invoke-static {p0}, LG/E;->b(I)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/E;->c:I

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/E;->c:I

    invoke-static {v0}, LG/E;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/E;->b:LG/d;

    invoke-static {v0, p1, p2}, LG/P;->a(LG/d;LG/w;Ljava/io/DataOutput;)V

    iget v0, p0, LG/E;->c:I

    invoke-static {v0}, LG/E;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LG/E;->d:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LG/E;->a:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    goto :goto_0
.end method
