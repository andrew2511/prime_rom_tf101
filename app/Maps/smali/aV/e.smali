.class final LaV/e;
.super LaV/d;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LaV/d;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 1

    const/16 v0, 0x100a

    new-array v0, v0, [B

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LaV/e;->a()[B

    move-result-object v0

    return-object v0
.end method
