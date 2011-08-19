.class public Lt/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/ap;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lt/ap;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/h;->a:Lt/ap;

    iput p2, p0, Lt/h;->b:F

    iput p3, p0, Lt/h;->c:F

    return-void
.end method


# virtual methods
.method public a()Lt/ap;
    .locals 1

    iget-object v0, p0, Lt/h;->a:Lt/ap;

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lt/h;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lt/h;->c:F

    return v0
.end method
