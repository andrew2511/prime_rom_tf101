.class public Lah/l;
.super LaT/f;


# static fields
.field private static final b:Ljava/util/HashMap;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lah/l;->b:Ljava/util/HashMap;

    sget-object v0, Lah/l;->b:Ljava/util/HashMap;

    const-string v1, "layers"

    const-string v2, "clear"

    invoke-static {v2}, Lj/O;->e(Ljava/lang/Object;)Lj/O;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, LaT/f;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lah/l;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lah/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-direct {p0, p1}, LaT/f;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lah/l;->c:Ljava/util/HashMap;

    const-string v0, "action"

    invoke-static {p1, v0}, Lah/l;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah/l;->a:Ljava/lang/String;

    sget-object v0, Lah/l;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lah/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lah/l;->c:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lah/l;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Lah/l;
    .locals 1

    const-string v0, "param2"

    invoke-static {p0, v0}, Lah/l;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lah/n;

    invoke-direct {v0, p0}, Lah/n;-><init>(Lorg/w3c/dom/Node;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "param"

    invoke-static {p0, v0}, Lah/l;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lah/c;

    invoke-direct {v0, p0}, Lah/c;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lah/l;

    invoke-direct {v0, p0}, Lah/l;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ui action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lah/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lah/l;->b(Ljava/io/Writer;)V

    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/io/Writer;)V
    .locals 0

    return-void
.end method
