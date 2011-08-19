.class Lak/n;
.super Lak/m;


# instance fields
.field final synthetic a:Lak/h;


# direct methods
.method private constructor <init>(Lak/h;)V
    .locals 0

    iput-object p1, p0, Lak/n;->a:Lak/h;

    invoke-direct {p0}, Lak/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lak/h;Lak/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lak/n;-><init>(Lak/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    iget-object v0, p0, Lak/n;->a:Lak/h;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lak/h;->h:J

    iget-object v0, p0, Lak/n;->a:Lak/h;

    iget-wide v0, v0, Lak/h;->h:J

    invoke-static {v0, v1}, Lak/h;->b(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
