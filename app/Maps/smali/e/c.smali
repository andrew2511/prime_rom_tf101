.class Le/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/e;Le/e;)I
    .locals 2

    iget v0, p1, Le/e;->d:I

    iget v1, p2, Le/e;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/e;

    check-cast p2, Le/e;

    invoke-virtual {p0, p1, p2}, Le/c;->a(Le/e;Le/e;)I

    move-result v0

    return v0
.end method
