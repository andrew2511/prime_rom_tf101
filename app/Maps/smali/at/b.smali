.class Lat/b;
.super LT/a;


# instance fields
.field a:Lat/d;


# direct methods
.method constructor <init>(LT/c;)V
    .locals 0

    invoke-direct {p0, p1}, LT/a;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lat/g;->a:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchdogTask.run(): request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lat/b;->a:Lat/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lat/b;->a:Lat/d;

    invoke-virtual {v0}, Lat/d;->t()V

    return-void
.end method

.method public a(Lat/d;)V
    .locals 0

    iput-object p1, p0, Lat/b;->a:Lat/d;

    return-void
.end method
