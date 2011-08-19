.class public LU/c;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LU/c;->a:F

    iput v0, p0, LU/c;->b:F

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float v0, p1

    iput v0, p0, LU/c;->a:F

    double-to-float v0, p3

    iput v0, p0, LU/c;->b:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/c;->a:F

    iput p2, p0, LU/c;->b:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v0, p1

    iput v0, p0, LU/c;->a:F

    int-to-float v0, p2

    iput v0, p0, LU/c;->b:F

    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 1

    double-to-float v0, p1

    iput v0, p0, LU/c;->a:F

    double-to-float v0, p3

    iput v0, p0, LU/c;->b:F

    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, LU/c;->a:F

    iput p2, p0, LU/c;->b:F

    return-void
.end method

.method public a(LU/c;)V
    .locals 1

    iget v0, p1, LU/c;->a:F

    iput v0, p0, LU/c;->a:F

    iget v0, p1, LU/c;->b:F

    iput v0, p0, LU/c;->b:F

    return-void
.end method
