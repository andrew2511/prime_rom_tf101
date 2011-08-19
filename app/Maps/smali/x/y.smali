.class public Lx/y;
.super Lx/z;


# instance fields
.field public final a:[Lx/F;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Vector;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    invoke-direct {p0, p3}, Lx/y;->a(Ljava/util/Vector;)[Lx/F;

    move-result-object v0

    iput-object v0, p0, Lx/y;->a:[Lx/F;

    return-void
.end method

.method private a(Ljava/util/Vector;)[Lx/F;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lx/F;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method
