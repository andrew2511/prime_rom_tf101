.class public Lah/r;
.super LaT/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LaT/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1}, LaT/f;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .locals 1

    const-string v0, "<networksdisabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
