.class Lv/x;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/util/Map;

.field final synthetic e:Lv/b;


# direct methods
.method constructor <init>(Lv/b;I)V
    .locals 2

    iput-object p1, p0, Lv/x;->e:Lv/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lv/x;->c:J

    iput p2, p0, Lv/x;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv/x;->b:J

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/x;->d:Ljava/util/Map;

    return-void
.end method
