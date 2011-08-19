.class final Lal/d;
.super Ljava/lang/Object;

# interfaces
.implements LW/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)Lal/h;
    .locals 1

    sget-object v0, LW/o;->g:LW/f;

    invoke-static {p1, v0}, Lal/h;->a(Ljava/io/DataInput;LW/f;)Lal/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lal/h;Ljava/io/DataOutput;)V
    .locals 1

    sget-object v0, LW/o;->g:LW/f;

    invoke-static {p1, p2, v0}, Lal/h;->a(Lal/h;Ljava/io/DataOutput;LW/f;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, Lal/h;

    invoke-virtual {p0, p1, p2}, Lal/d;->a(Lal/h;Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lal/d;->a(Ljava/io/DataInput;)Lal/h;

    move-result-object v0

    return-object v0
.end method
