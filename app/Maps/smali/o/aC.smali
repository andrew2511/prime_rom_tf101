.class final Lo/aC;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lo/M;


# direct methods
.method constructor <init>(LT/c;Ljava/lang/String;ZLo/M;)V
    .locals 0

    iput-object p2, p0, Lo/aC;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lo/aC;->b:Z

    iput-object p4, p0, Lo/aC;->c:Lo/M;

    invoke-direct {p0, p1}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lo/aC;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lo/aC;->b:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lo/as;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lo/aC;->c:Lo/M;

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-interface {v1, v0}, Lo/M;->a(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
