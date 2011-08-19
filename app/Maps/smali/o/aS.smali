.class public Lo/aS;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Law/e;
    .locals 1

    const/16 v0, 0x51

    invoke-static {v0, p0, p1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    const-string v0, "bl"

    const-string v1, "p"

    invoke-static {v0, v1}, Lo/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    const-string v1, "cstp"

    invoke-static {v1, v0}, Lo/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const-string v0, "bl"

    const-string v1, "l"

    invoke-static {v0, v1}, Lo/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x51

    invoke-static {v0, p0, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static c()Law/e;
    .locals 2

    const-string v0, "sstp"

    const-string v1, "bp"

    invoke-static {v0, v1}, Lo/aS;->a(Ljava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    return-object v0
.end method
