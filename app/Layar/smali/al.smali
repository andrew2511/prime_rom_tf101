.class final Lal;
.super Ljava/lang/Object;

# interfaces
.implements Lar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lal$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lal;->a:Z

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lal;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lao;Ljava/lang/Appendable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lal$a;

    new-instance v1, Lad;

    iget-boolean v2, p0, Lal;->a:Z

    invoke-direct {v1, v2}, Lad;-><init>(Z)V

    invoke-direct {v0, p2, v1, p3}, Lal$a;-><init>(Ljava/lang/Appendable;Lad;Z)V

    new-instance v1, Laz;

    invoke-direct {v1, v0, p3}, Laz;-><init>(Lap;Z)V

    invoke-virtual {v1, p1}, Laz;->a(Lao;)V

    goto :goto_0
.end method
