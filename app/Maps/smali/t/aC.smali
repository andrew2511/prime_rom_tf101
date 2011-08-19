.class public Lt/aC;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lt/E;

.field public final b:[B

.field public final c:[B


# direct methods
.method private constructor <init>(Lt/E;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/aC;->a:Lt/E;

    invoke-virtual {p1}, Lt/E;->b()[B

    move-result-object v0

    iput-object v0, p0, Lt/aC;->b:[B

    iput-object p2, p0, Lt/aC;->c:[B

    return-void
.end method

.method synthetic constructor <init>(Lt/E;[BLt/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt/aC;-><init>(Lt/E;[B)V

    return-void
.end method
