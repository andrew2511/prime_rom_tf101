.class public Lcom/google/googlenav/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/googlenav/ui/aT;

.field private c:I

.field private final d:Lcom/google/googlenav/u;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/vnd.google.gmm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/vnd.google-earth.kml+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/vnd.google-earth.kmz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/W;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/W;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/W;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->as()Lcom/google/googlenav/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/W;->d:Lcom/google/googlenav/u;

    return-void
.end method

.method static a(Ljava/lang/String;I)Lcom/google/googlenav/k;
    .locals 5

    const/4 v4, 0x3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/googlenav/k;

    invoke-direct {v0, p1}, Lcom/google/googlenav/k;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "@map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/googlenav/k;

    invoke-direct {v0, v4}, Lcom/google/googlenav/k;-><init>(I)V

    goto :goto_0

    :cond_2
    const-string v0, "@gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/googlenav/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/googlenav/k;-><init>(I)V

    goto :goto_0

    :cond_3
    const-string v0, "@latlon:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/google/googlenav/k;

    invoke-direct {v0, v4}, Lcom/google/googlenav/k;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/googlenav/k;

    const/4 v3, 0x6

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v0, v3}, LR/a;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/k;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/googlenav/k;

    invoke-direct {v0, v4}, Lcom/google/googlenav/k;-><init>(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/googlenav/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/k;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/gmm/x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const-string v1, ".kml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".kmz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".gmml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".kml?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, ".kmz?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, ".gmml?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, ".kml#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, ".kmz#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, ".gmml#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "http://maps.google.com/maps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "output=kml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/W;->e(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/W;->b(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GmmInvocationHelper"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string v0, "=@latlon:"

    const-string v0, "=@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "..."

    const-string v1, "..."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "&"

    const-string v2, "&"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v8

    move-object v4, p0

    :goto_0
    const-string v5, "=@latlon:"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    return-object v4

    :cond_0
    add-int/2addr v3, v0

    const-string v5, "&"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-lez v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/2addr v3, v1

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move-object v4, v6

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 7

    const/16 v5, 0x3f

    const/4 v4, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_1
    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ln/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/W;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/googlenav/W;->c:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/googlenav/W;->c:I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "/gmm/x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/googlenav/W;->a(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3

    const/16 v2, 0x34

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/google/googlenav/W;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/W;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x"

    invoke-static {v2, v1, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/W;->a(I)V

    const-string v1, "k"

    invoke-static {v2, v1, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/W;->g:Z

    iput-boolean p2, p0, Lcom/google/googlenav/W;->f:Z

    iget-object v0, p0, Lcom/google/googlenav/W;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    invoke-interface {v0, p0}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/W;->a(I)V

    const-string v1, "u"

    invoke-static {v2, v1, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method b(Ljava/lang/String;)I
    .locals 13

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/googlenav/W;->d(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v0, "view"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MAPV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/W;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/aT;->b(I)Z

    :cond_0
    :goto_0
    const-string v0, "span"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_1
    const-string v0, "action"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BUSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "q"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "a"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/googlenav/W;->a(Ljava/lang/String;I)Lcom/google/googlenav/k;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/W;->d:Lcom/google/googlenav/u;

    const/4 v2, 0x0

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/k;IIZZZ)V

    move v0, v9

    :goto_2
    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    return v0

    :cond_1
    const-string v1, "SATV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/W;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/aT;->b(I)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v5, v0

    move v4, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v5

    :goto_4
    move v4, v0

    goto :goto_1

    :cond_3
    const-string v1, "LOCN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "a"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/googlenav/W;->a(Ljava/lang/String;I)Lcom/google/googlenav/k;

    move-result-object v7

    const-string v0, "title"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/googlenav/W;->d:Lcom/google/googlenav/u;

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_2

    :cond_4
    const-string v1, "ROUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "start"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/google/googlenav/W;->a(Ljava/lang/String;I)Lcom/google/googlenav/k;

    move-result-object v1

    const-string v0, "end"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/google/googlenav/W;->a(Ljava/lang/String;I)Lcom/google/googlenav/k;

    move-result-object v0

    invoke-static {}, Lh/dH;->t()I

    move-result v2

    new-instance v3, Lu/g;

    invoke-virtual {v1}, Lcom/google/googlenav/k;->d()Lu/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/k;->d()Lu/h;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lu/g;-><init>(Lu/h;Lu/h;)V

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lu/p;

    invoke-direct {v0, v3}, Lu/p;-><init>(Lu/n;)V

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/W;->d:Lcom/google/googlenav/u;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/u;->a(Lu/n;)V

    move v0, v9

    goto/16 :goto_2

    :pswitch_0
    new-instance v0, Lu/a;

    invoke-direct {v0, v3}, Lu/a;-><init>(Lu/n;)V

    goto :goto_5

    :pswitch_1
    new-instance v0, Lu/d;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    goto :goto_5

    :pswitch_2
    new-instance v0, Lu/u;

    invoke-direct {v0, v3}, Lu/u;-><init>(Lu/n;)V

    goto :goto_5

    :cond_5
    const/4 v0, 0x7

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_4

    :cond_6
    move v0, v6

    goto/16 :goto_2

    :cond_7
    move v4, v5

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/googlenav/W;->f:Z

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/W;->b(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    goto :goto_0
.end method
