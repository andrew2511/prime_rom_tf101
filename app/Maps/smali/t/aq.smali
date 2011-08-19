.class Lt/aq;
.super LG/e;


# direct methods
.method private constructor <init>(LG/A;Lt/x;)V
    .locals 6

    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LG/e;-><init>(LG/A;Ljava/util/List;IZLt/x;)V

    return-void
.end method

.method synthetic constructor <init>(LG/A;Lt/x;Lt/p;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt/aq;-><init>(LG/A;Lt/x;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NotFoundBuilding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/aq;->a()LG/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
