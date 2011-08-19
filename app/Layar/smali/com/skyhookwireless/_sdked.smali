.class public Lcom/skyhookwireless/_sdked;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    iput-object p2, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    return-void
.end method

.method public static _sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;TU;)",
            "Lcom/skyhookwireless/_sdked",
            "<TT;TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdked;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/_sdked;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/_sdked;

    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    iget-object v1, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    iget-object v1, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x25

    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
