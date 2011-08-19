.class Lt/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lt/L;


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/Q;->a:I

    return-void
.end method


# virtual methods
.method public a(LG/w;[B)LG/u;
    .locals 1

    iget v0, p0, Lt/Q;->a:I

    invoke-static {p1, p2, v0}, LG/P;->a(LG/w;[BI)LG/P;

    move-result-object v0

    return-object v0
.end method
