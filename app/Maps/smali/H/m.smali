.class public final LH/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;

.field private final b:[LaR/d;


# direct methods
.method private constructor <init>(Law/e;[LaR/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/m;->a:Law/e;

    iput-object p2, p0, LH/m;->b:[LaR/d;

    return-void
.end method

.method synthetic constructor <init>(Law/e;[LaR/d;LH/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LH/m;-><init>(Law/e;[LaR/d;)V

    return-void
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, LH/m;->a:Law/e;

    return-object v0
.end method

.method public b()[LaR/d;
    .locals 1

    iget-object v0, p0, LH/m;->b:[LaR/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationInfo[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/m;->a:Law/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/m;->b:[LaR/d;

    invoke-static {v1}, LaR/d;->a([LaR/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
