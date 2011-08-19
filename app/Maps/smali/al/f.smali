.class final Lal/f;
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
.method public a(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lal/f;->a(Ljava/lang/String;Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 0

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lal/f;->a(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
