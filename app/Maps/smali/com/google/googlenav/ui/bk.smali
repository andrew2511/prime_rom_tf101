.class public Lcom/google/googlenav/ui/bk;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lf/h;

.field public final d:Lf/h;

.field public final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/bk;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/bk;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/bk;->c:Lf/h;

    iput-object p4, p0, Lcom/google/googlenav/ui/bk;->d:Lf/h;

    iput-object p5, p0, Lcom/google/googlenav/ui/bk;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;Ljava/lang/String;Lcom/google/googlenav/ui/L;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/ui/bk;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/H;
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/H;

    invoke-direct {v0}, Lcom/google/googlenav/ui/H;-><init>()V

    return-object v0
.end method
