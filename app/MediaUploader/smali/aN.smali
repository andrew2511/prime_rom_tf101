.class public final LaN;
.super LaO;


# instance fields
.field private a:Lax;


# direct methods
.method private constructor <init>(Lax;)V
    .locals 0

    invoke-direct {p0}, LaO;-><init>()V

    iput-object p1, p0, LaN;->a:Lax;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lax;

    invoke-direct {v0, p1}, Lax;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LaN;-><init>(Lax;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0}, Lax;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lau;)V
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0, p1}, Lax;->a(Lau;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0, p1}, Lax;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0, p1, p2}, Lax;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0}, Lax;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, LaN;->a:Lax;

    invoke-virtual {v0}, Lax;->c()V

    return-void
.end method
