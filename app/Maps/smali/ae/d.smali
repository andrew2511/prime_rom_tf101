.class Lae/d;
.super Lae/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lae/i;


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lae/d;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/d;->b:Lae/i;

    invoke-virtual {v0, p1}, Lae/i;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
