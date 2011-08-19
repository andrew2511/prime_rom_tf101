.class Le/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:LS/c;

.field public b:I

.field public final c:I

.field public d:I

.field public e:Le/e;

.field public f:Z


# direct methods
.method public constructor <init>(ILS/c;Le/e;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/e;->b:I

    iput-object p2, p0, Le/e;->a:LS/c;

    iput-object p3, p0, Le/e;->e:Le/e;

    iput p4, p0, Le/e;->c:I

    iget v0, p0, Le/e;->b:I

    iget v1, p0, Le/e;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Le/e;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/e;->f:Z

    return-void
.end method
