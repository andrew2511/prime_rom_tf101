.class public Lcom/google/googlenav/ui/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lk/j;


# instance fields
.field private final a:C

.field private final b:C

.field private final c:Lk/l;

.field private d:C

.field private e:Ljava/util/Hashtable;

.field private f:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(CCLk/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    iput-char p1, p0, Lcom/google/googlenav/ui/bw;->a:C

    iput-char p2, p0, Lcom/google/googlenav/ui/bw;->b:C

    iput-object p3, p0, Lcom/google/googlenav/ui/bw;->c:Lk/l;

    iput-char p2, p0, Lcom/google/googlenav/ui/bw;->d:C

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bw;)Lk/l;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->c:Lk/l;

    return-object v0
.end method

.method private b()C
    .locals 3

    iget-char v0, p0, Lcom/google/googlenav/ui/bw;->d:C

    iget-char v1, p0, Lcom/google/googlenav/ui/bw;->b:C

    if-ge v0, v1, :cond_1

    iget-char v0, p0, Lcom/google/googlenav/ui/bw;->d:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/google/googlenav/ui/bw;->d:C

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    iget-char v1, p0, Lcom/google/googlenav/ui/bw;->d:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    iget-char v2, p0, Lcom/google/googlenav/ui/bw;->d:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-char v0, p0, Lcom/google/googlenav/ui/bw;->d:C

    return v0

    :cond_1
    iget-char v0, p0, Lcom/google/googlenav/ui/bw;->a:C

    iput-char v0, p0, Lcom/google/googlenav/ui/bw;->d:C

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aS;Lcom/google/googlenav/ui/aG;LaD/n;)C
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/ay;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/googlenav/ui/ay;-><init>(Lcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aS;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/bw;->b()C

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v0

    invoke-virtual {v0, p1}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, LaD/p;->a(Lcom/google/googlenav/ui/aS;LaD/n;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(C)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(CLk/m;II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bw;->e(C)Lk/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2, v0, p3, p4}, Lk/m;->a(Lk/l;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ap()LA/c;
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/ay;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ay;->a()Lcom/google/googlenav/ui/aG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, LaD/p;->b()I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, LA/c;

    const-string v1, "UrlImageProviderIconProvider"

    invoke-direct {v0, v1, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(C)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/ay;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ay;->b()Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    return v0
.end method

.method public c(C)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/ay;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ay;->b()Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    return v0
.end method

.method public d(C)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e(C)Lk/l;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/ay;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ay;->b()Lk/l;

    move-result-object v0

    return-object v0
.end method
