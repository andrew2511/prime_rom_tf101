.class public abstract Lah/H;
.super LaT/f;


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LaT/f;-><init>(J)V

    iput-object p3, p0, Lah/H;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0, p1}, LaT/f;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lah/H;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah/H;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lah/H;->a:Ljava/lang/String;

    return-object v0
.end method
