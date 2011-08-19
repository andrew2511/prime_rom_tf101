.class LF/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:LF/M;


# direct methods
.method constructor <init>(LF/M;)V
    .locals 0

    iput-object p1, p0, LF/j;->a:LF/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LF/q;LF/q;)I
    .locals 2

    iget v0, p1, LF/q;->a:I

    iget v1, p2, LF/q;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LF/q;

    check-cast p2, LF/q;

    invoke-virtual {p0, p1, p2}, LF/j;->a(LF/q;LF/q;)I

    move-result v0

    return v0
.end method
