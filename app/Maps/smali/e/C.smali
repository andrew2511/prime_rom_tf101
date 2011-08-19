.class Le/C;
.super Le/e;


# instance fields
.field public final g:Le/A;


# direct methods
.method public constructor <init>(ILe/e;Le/A;)V
    .locals 2

    iget-object v0, p3, Le/A;->c:LS/c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Le/e;-><init>(ILS/c;Le/e;I)V

    iput-object p3, p0, Le/C;->g:Le/A;

    return-void
.end method
