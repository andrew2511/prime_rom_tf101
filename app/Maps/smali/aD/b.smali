.class LaD/b;
.super Lo/B;


# instance fields
.field private final a:LaD/r;

.field private final b:Lo/B;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Lk/l;

.field private final f:LaD/q;


# direct methods
.method private constructor <init>(Lo/B;Ljava/lang/Long;Ljava/lang/String;Lk/l;LaD/r;)V
    .locals 1

    invoke-direct {p0}, Lo/B;-><init>()V

    iput-object p1, p0, LaD/b;->b:Lo/B;

    iput-object p5, p0, LaD/b;->a:LaD/r;

    iput-object p2, p0, LaD/b;->c:Ljava/lang/Long;

    iput-object p3, p0, LaD/b;->d:Ljava/lang/String;

    iput-object p4, p0, LaD/b;->e:Lk/l;

    invoke-virtual {p5, p2}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v0

    iput-object v0, p0, LaD/b;->f:LaD/q;

    return-void
.end method

.method synthetic constructor <init>(Lo/B;Ljava/lang/Long;Ljava/lang/String;Lk/l;LaD/r;LaD/d;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LaD/b;-><init>(Lo/B;Ljava/lang/Long;Ljava/lang/String;Lk/l;LaD/r;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, LaD/b;->a:LaD/r;

    iget-object v1, p0, LaD/b;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;Ljava/lang/Long;)V

    iget-object v0, p0, LaD/b;->a:LaD/r;

    iget-object v1, p0, LaD/b;->c:Ljava/lang/Long;

    iget-object v2, p0, LaD/b;->f:LaD/q;

    invoke-static {v0, v1, v2}, LaD/r;->a(LaD/r;Ljava/lang/Long;LaD/q;)V

    iget-object v0, p0, LaD/b;->a:LaD/r;

    invoke-static {v0}, LaD/r;->a(LaD/r;)V

    iget-object v0, p0, LaD/b;->a:LaD/r;

    iget-object v1, p0, LaD/b;->f:LaD/q;

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;LaD/q;)V

    iget-object v0, p0, LaD/b;->b:Lo/B;

    invoke-virtual {v0, p1}, Lo/B;->a(I)V

    return-void
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, LaD/b;->a:LaD/r;

    iget-object v1, p0, LaD/b;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;Ljava/lang/Long;)V

    iget-object v0, p0, LaD/b;->e:Lk/l;

    iget-object v1, p0, LaD/b;->d:Ljava/lang/String;

    iget-object v2, p0, LaD/b;->c:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, LaD/q;->a(Lk/l;Ljava/lang/String;Ljava/lang/Long;)LaD/q;

    move-result-object v0

    iget-object v1, p0, LaD/b;->a:LaD/r;

    iget-object v2, p0, LaD/b;->c:Ljava/lang/Long;

    invoke-static {v1, v2, v0}, LaD/r;->a(LaD/r;Ljava/lang/Long;LaD/q;)V

    iget-object v1, p0, LaD/b;->a:LaD/r;

    invoke-static {v1}, LaD/r;->a(LaD/r;)V

    iget-object v1, p0, LaD/b;->a:LaD/r;

    invoke-static {v1, v0}, LaD/r;->a(LaD/r;LaD/q;)V

    iget-object v0, p0, LaD/b;->b:Lo/B;

    invoke-virtual {v0, p1}, Lo/B;->a([B)V

    return-void
.end method
