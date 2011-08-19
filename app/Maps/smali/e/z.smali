.class Le/z;
.super Ljava/lang/Object;


# instance fields
.field public a:LG/Q;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Le/z;->a:LG/Q;

    const/4 v0, 0x0

    iput v0, p0, Le/z;->b:I

    const/4 v0, 0x0

    iput v0, p0, Le/z;->c:F

    return-void
.end method
