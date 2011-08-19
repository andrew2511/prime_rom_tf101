.class final LaV/f;
.super LaV/d;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LaV/d;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[S
    .locals 1

    const/16 v0, 0x80a

    new-array v0, v0, [S

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LaV/f;->a()[S

    move-result-object v0

    return-object v0
.end method
