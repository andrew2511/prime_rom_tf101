.class final LaV/a;
.super LaV/d;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LaV/d;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[I
    .locals 1

    const/16 v0, 0x40a

    new-array v0, v0, [I

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LaV/a;->a()[I

    move-result-object v0

    return-object v0
.end method
