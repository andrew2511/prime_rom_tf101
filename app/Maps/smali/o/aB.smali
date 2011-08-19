.class final Lo/aB;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lo/cf;


# direct methods
.method constructor <init>(LT/c;Ljava/lang/String;ILo/cf;)V
    .locals 0

    iput-object p2, p0, Lo/aB;->a:Ljava/lang/String;

    iput p3, p0, Lo/aB;->b:I

    iput-object p4, p0, Lo/aB;->c:Lo/cf;

    invoke-direct {p0, p1}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/aB;->a:Ljava/lang/String;

    iget v1, p0, Lo/aB;->b:I

    invoke-static {v0, v1}, Lo/as;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lo/aB;->c:Lo/cf;

    invoke-interface {v1, v0}, Lo/cf;->a(I)V

    return-void
.end method
