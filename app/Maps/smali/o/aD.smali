.class final Lo/aD;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lo/Z;


# direct methods
.method constructor <init>(LT/c;Ljava/lang/String;ILo/Z;)V
    .locals 0

    iput-object p2, p0, Lo/aD;->a:Ljava/lang/String;

    iput p3, p0, Lo/aD;->b:I

    iput-object p4, p0, Lo/aD;->c:Lo/Z;

    invoke-direct {p0, p1}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/aD;->a:Ljava/lang/String;

    iget v1, p0, Lo/aD;->b:I

    invoke-static {v0, v1}, Lo/as;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lo/aD;->c:Lo/Z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aD;->c:Lo/Z;

    invoke-interface {v0}, Lo/Z;->a()V

    :cond_0
    return-void
.end method
