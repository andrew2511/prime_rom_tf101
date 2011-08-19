.class Lt/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Lt/aC;

.field final b:LG/u;


# direct methods
.method constructor <init>(JLjava/lang/String;[BLG/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4}, Lt/d;->a(JLjava/lang/String;[B)Lt/aC;

    move-result-object v0

    iput-object v0, p0, Lt/e;->a:Lt/aC;

    iput-object p5, p0, Lt/e;->b:LG/u;

    return-void
.end method
