.class public final Lxdict/i;
.super Ljava/lang/Object;


# instance fields
.field private I:Ljava/util/Hashtable;

.field public J:[Lxdict/c;

.field public K:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lxdict/i;->I:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final b(I)Lxdict/b;
    .locals 6

    iget-object v0, p0, Lxdict/i;->I:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxdict/i;->I:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/b;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lxdict/b;

    invoke-direct {v0}, Lxdict/b;-><init>()V

    iget-object v1, p0, Lxdict/i;->J:[Lxdict/c;

    aget-object v1, v1, p1

    :try_start_0
    iget v2, v1, Lxdict/c;->k:I

    iget v1, v1, Lxdict/c;->l:I

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lxdict/i;->K:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lxdict/i;->K:[B

    invoke-static {v2, v1}, Lxdict/a;->a([BI)J

    move-result-wide v4

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lxdict/i;->K:[B

    invoke-static {v2, v1}, Lxdict/a;->a([BI)J

    move-result-wide v1

    iput-object v3, v0, Lxdict/b;->b:Ljava/lang/String;

    iput-wide v4, v0, Lxdict/b;->c:J

    iput-wide v1, v0, Lxdict/b;->d:J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lxdict/i;->I:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
