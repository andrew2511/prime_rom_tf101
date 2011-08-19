.class Lf/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lf/b;


# instance fields
.field private final a:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf/Q;->a:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lf/R;)V
    .locals 0

    invoke-direct {p0}, Lf/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lf/Q;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lf/Q;->a:Landroid/graphics/Path;

    shr-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    shr-int/lit8 v2, p2, 0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public b(II)V
    .locals 3

    iget-object v0, p0, Lf/Q;->a:Landroid/graphics/Path;

    shr-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    shr-int/lit8 v2, p2, 0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method
