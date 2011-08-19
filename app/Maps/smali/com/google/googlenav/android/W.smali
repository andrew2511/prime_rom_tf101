.class public Lcom/google/googlenav/android/W;
.super Ljava/lang/Object;

# interfaces
.implements Lak/p;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;

.field private static final h:Lj/O;


# instance fields
.field private final d:Lcom/google/googlenav/android/h;

.field private final e:Lcom/google/googlenav/ui/aT;

.field private f:Lf/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/checkin"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/W;->a:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/auto-checkin"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/W;->b:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/W;->c:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tab"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/android/W;->g:[Ljava/lang/String;

    new-instance v0, Lj/e;

    invoke-direct {v0}, Lj/e;-><init>()V

    sget-object v1, Lcom/google/googlenav/android/W;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj/e;->a([Ljava/lang/Object;)Lj/e;

    move-result-object v0

    invoke-virtual {v0}, Lj/e;->a()Lj/O;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/W;->h:Lj/O;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/h;Lcom/google/googlenav/ui/aT;Lf/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    iput-object p2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    iput-object p3, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;)I
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    if-eqz p1, :cond_5

    const-string v0, "q"

    invoke-virtual {p1, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "acct"

    invoke-virtual {p1, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ll"

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "spn"

    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    const/16 v4, 0x10

    const-string v5, "z"

    invoke-direct {p0, p1, v5, v4}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I

    move-result v5

    if-eqz v2, :cond_4

    new-instance v6, Lf/h;

    aget v7, v2, v9

    aget v2, v2, v10

    invoke-direct {v6, v7, v2}, Lf/h;-><init>(II)V

    move-object v2, v6

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    aget v6, v3, v9

    aget v3, v3, v10

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aV;->f()I

    move-result v7

    invoke-virtual {v5, v6, v3, v9, v7}, Lf/Y;->a(IIII)Lf/l;

    move-result-object v3

    invoke-virtual {v3}, Lf/l;->a()I

    move-result v5

    if-ge v5, v4, :cond_3

    invoke-static {v4}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_1
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v4

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/google/googlenav/login/j;->i()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Lf/h;Lf/l;)V

    const/4 v0, -0x2

    return v0

    :cond_1
    if-lt v5, v4, :cond_2

    invoke-static {v5}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_1

    :cond_2
    move-object v3, v2

    move-object v2, v8

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_1

    :cond_3
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_1

    :cond_4
    move-object v2, v8

    goto :goto_0

    :cond_5
    move-object v0, v8

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    goto :goto_1
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/android/W;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, -0x1

    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ne v0, v1, :cond_2

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, " cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "cid"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 13

    const/16 v7, 0x2c

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "geo"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri is not geo scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri link contains no body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move-object v2, v0

    :goto_0
    if-ne v1, v4, :cond_3

    move-object v0, v3

    :goto_1
    const-string v1, "optout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_6

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xf4240

    :try_start_1
    invoke-static {v5}, Lf/h;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v1}, Lf/h;->b(Ljava/lang/String;)I

    move-result v1

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_7

    const-wide/high16 v9, 0x4024

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, 0x7

    int-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    double-to-int v2, v8

    :cond_7
    new-instance v5, Lcom/google/googlenav/android/g;

    invoke-direct {v5}, Lcom/google/googlenav/android/g;-><init>()V

    if-eqz v0, :cond_d

    invoke-virtual {v5, v0}, Lcom/google/googlenav/android/g;->parseQuery(Ljava/lang/String;)V

    const-string v8, "z"

    invoke-virtual {v5, v8}, Lcom/google/googlenav/android/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x16

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    :goto_3
    if-nez v7, :cond_8

    if-nez v1, :cond_8

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    if-eqz v0, :cond_b

    const-string v0, "q"

    invoke-virtual {v5, v0}, Lcom/google/googlenav/android/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/google/googlenav/android/W;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v5, v6

    :goto_5
    move-object v0, p0

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZZ)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v9, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    new-instance v10, Lf/h;

    invoke-direct {v10, v7, v1}, Lf/h;-><init>(II)V

    invoke-virtual {v9, v10}, Lf/Y;->c(Lf/h;)V

    if-lez v8, :cond_9

    iget-object v1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-static {v8}, Lf/l;->b(I)Lf/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/Y;->a(Lf/l;)V

    move v2, v6

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-virtual {v1, v2, v2}, Lf/Y;->d(II)V

    move v2, v6

    goto :goto_4

    :cond_a
    const-string v0, "cbp"

    invoke-virtual {v5, v0}, Lcom/google/googlenav/android/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    goto/16 :goto_2

    :cond_c
    move v5, v2

    move-object v2, v3

    goto :goto_5

    :cond_d
    move v8, v6

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/String;Lf/A;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aG()V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/V;->a(Lf/A;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZLjava/lang/String;Z)V
    .locals 11

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, p1, p2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "19"

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x57

    const-string v3, "s"

    invoke-static {v2, v3, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v2

    invoke-virtual {v2}, Lh/eY;->I()Lh/eo;

    move-result-object v2

    invoke-virtual {v2}, Lh/eo;->I()Lh/fa;

    move-result-object v2

    invoke-virtual {v2, p1}, Lh/fa;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "20"

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v2

    invoke-virtual {v2}, Li/aE;->I()Li/x;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Li/x;->b()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    check-cast v0, Li/aw;

    move-object p0, v0

    invoke-virtual {p0, p1, p3, p4}, Li/aw;->a(Ljava/lang/String;Lf/C;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aG()V

    if-eqz p5, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->as()Lcom/google/googlenav/u;

    move-result-object v2

    new-instance v5, Lcom/google/googlenav/k;

    const/4 v3, 0x2

    invoke-direct {v5, v3}, Lcom/google/googlenav/k;-><init>(I)V

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/google/googlenav/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/k;IIZZZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/googlenav/V;

    invoke-direct {v2}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/googlenav/V;->c(I)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/googlenav/V;->d(I)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v2

    if-eqz p8, :cond_4

    move-object/from16 v3, p8

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3a8

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    :cond_3
    iget-object v3, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "100"

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZZ)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZLjava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aG()V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    const-string v0, "saddr"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu/h;->a()Lu/h;

    move-result-object v0

    :goto_0
    const-string v1, "daddr"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lu/h;->a()Lu/h;

    move-result-object v1

    :goto_1
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    :goto_2
    new-instance v3, Lu/g;

    invoke-direct {v3, v0, v1}, Lu/g;-><init>(Lu/h;Lu/h;)V

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lu/p;

    invoke-direct {v0, v3}, Lu/p;-><init>(Lu/n;)V

    :goto_3
    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lu/n;)V

    return-void

    :cond_0
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    const-string v2, "r"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "b"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    goto :goto_2

    :cond_6
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    invoke-static {}, Lh/dH;->t()I

    move-result v2

    goto :goto_2

    :pswitch_0
    new-instance v0, Lu/a;

    invoke-direct {v0, v3}, Lu/a;-><init>(Lu/n;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Lu/d;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    goto :goto_3

    :pswitch_2
    new-instance v0, Lu/u;

    invoke-direct {v0, v3}, Lu/u;-><init>(Lu/n;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aG()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_0
    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3a8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "19"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lf/h;->b(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/h;->b(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/net/Uri;)I
    .locals 6

    new-instance v2, Lak/e;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lak/e;-><init>(Ljava/lang/String;Lak/p;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh/fc;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lh/fc;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    invoke-virtual {v2}, Lak/e;->a()V

    const/4 v0, -0x2

    return v0
.end method

.method static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cu"

    goto :goto_0
.end method

.method private b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1}, Lcom/google/googlenav/android/h;->a()Lcom/google/googlenav/ui/android/ar;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/android/m;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/android/m;-><init>(Lcom/google/googlenav/android/W;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/ar;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->af()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private b(Landroid/net/UrlQuerySanitizer;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/UrlQuerySanitizer;->getParameterSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/android/W;->h:Lj/O;

    invoke-virtual {v1, p0}, Lj/O;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, " cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/net/UrlQuerySanitizer;
    .locals 1

    new-instance v0, Lcom/google/googlenav/android/X;

    invoke-direct {v0}, Lcom/google/googlenav/android/X;-><init>()V

    return-object v0
.end method

.method private static c(Landroid/content/Intent;)Lcom/google/googlenav/c;
    .locals 3

    const-string v0, "placemark-proto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v1}, Lcom/google/googlenav/c;->a(Ljava/io/DataInput;)Lcom/google/googlenav/c;

    move-result-object v0

    const-string v1, "insitu"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load My Maps with output="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "output"

    const-string v2, "kml"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/android/g;

    invoke-direct {v0}, Lcom/google/googlenav/android/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/g;->parseQuery(Ljava/lang/String;)V

    const-string v1, "ck"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/g;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "placemark-url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/net/Uri;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v9, :cond_0

    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v8

    invoke-static {v2}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    aget-object v4, v0, v4

    invoke-static {v4}, Lf/h;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Lf/h;->b(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lf/h;

    invoke-direct {v6, v4, v5}, Lf/h;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    :goto_0
    const-string v4, ""

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V

    move v0, v8

    :goto_2
    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "google.layeritemdetails uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_1
.end method

.method private static e(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0xa

    const-string v0, "intent-source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private f(Landroid/content/Intent;)I
    .locals 7

    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "skipSearchWizardOnBack"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "skipSearchWizardOnBack"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    const-string v5, "searchUiSource"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "searchUiSource"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v6, v2

    move-object v2, v1

    move v1, v6

    :goto_1
    const-string v3, "19"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v3

    invoke-virtual {v3}, Lh/eY;->I()Lh/eo;

    move-result-object v3

    invoke-virtual {v3}, Lh/eo;->I()Lh/fa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lh/fa;->b(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/android/W;->a(ZLjava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    const-string v3, "20"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v3

    invoke-virtual {v3}, Li/aE;->I()Li/x;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Li/x;->b()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v4

    invoke-virtual {v4, v3}, Li/aE;->h(Li/x;)V

    :cond_3
    iget-object v3, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v3, v0}, Lcom/google/googlenav/android/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aG()V

    iget-object v3, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v3, v0}, Lcom/google/googlenav/android/h;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v6, v2

    move-object v2, v1

    move v1, v6

    goto :goto_1
.end method

.method private g(Landroid/content/Intent;)I
    .locals 10

    const/4 v9, -0x1

    const/4 v4, -0x2

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZZ)V

    const/16 v0, 0x12

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "geo"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->a(Landroid/net/Uri;)V

    const/16 v0, 0x14

    goto :goto_0

    :cond_3
    const-string v1, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "application/vnd.google-earth.kml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;II)V

    move v0, v4

    :goto_1
    if-ne v0, v4, :cond_1

    const/16 v0, 0x13

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/W;->k(Landroid/content/Intent;)I

    move-result v0

    goto :goto_1

    :cond_5
    const-string v0, "rideabout"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x61

    const-string v1, "n"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/W;->i(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0

    :cond_6
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/W;->j(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0

    :cond_7
    const-string v0, "google.layeritemdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_8
    move v0, v9

    goto/16 :goto_0

    :cond_9
    const-string v0, "google.businessdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/google/googlenav/android/W;->c(Landroid/content/Intent;)Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aF()V

    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Lcom/google/googlenav/c;)V

    move v0, v4

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcom/google/googlenav/android/W;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aF()V

    const-string v1, "insitu"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Z)V

    move v0, v4

    goto/16 :goto_0

    :cond_b
    move v0, v9

    goto/16 :goto_0

    :cond_c
    const-string v0, "google.businessratings"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/googlenav/android/W;->c(Landroid/content/Intent;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/android/W;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aF()V

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/android/h;->a(Lcom/google/googlenav/c;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :cond_d
    invoke-static {p1}, Lcom/google/googlenav/android/W;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aF()V

    const-string v2, "insitu"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v3, v0, v1, v2}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v4

    goto/16 :goto_0

    :cond_e
    move v0, v9

    goto/16 :goto_0

    :cond_f
    const-string v0, "google.star"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/W;->f(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :cond_10
    move v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v9

    goto/16 :goto_0
.end method

.method private h(Landroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x34

    const-string v1, "x"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/h;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x61

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i(Landroid/content/Intent;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0}, Lcom/google/googlenav/android/h;->c()V

    const/16 v0, 0x1b

    return v0
.end method

.method private j(Landroid/content/Intent;)I
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->b(Li/aE;)V

    :goto_0
    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/A;->s()V

    :cond_0
    const/16 v0, 0x1a

    return v0

    :cond_1
    const-string v3, "/map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Li/aE;)V

    goto :goto_0

    :cond_2
    const-string v3, "/friends/location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/android/h;->a(Li/aE;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "/friends/profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/android/h;->b(Li/aE;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "/auto-checkin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "notification_fired"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/A;->f(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->b(Li/aE;)V

    goto :goto_0

    :cond_6
    const-string v1, "/checkin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/W;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/h;->a(Li/aE;)V

    goto/16 :goto_0
.end method

.method private k(Landroid/content/Intent;)I
    .locals 14

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/u/m/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->b(Landroid/net/Uri;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/latitude"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    iget-object v4, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/googlenav/android/h;->b(Li/aE;)V

    move v3, v8

    :goto_1
    invoke-direct {p0}, Lcom/google/googlenav/android/W;->c()Landroid/net/UrlQuerySanitizer;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/googlenav/android/W;->b(Landroid/net/UrlQuerySanitizer;)Z

    move-result v4

    if-nez v4, :cond_26

    move v4, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    const-string v2, "lci"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.google.latitudepublicupdates"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v5}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "cbll"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google.streetview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cbll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cbp"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "&cbp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "panoid"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "&panoid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v10

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ANDROID_INTENT"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v11

    goto/16 :goto_0

    :cond_5
    const-string v2, "nav"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->A()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "daddr"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "sll"

    invoke-direct {p0, v5, v6}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v6, "sll"

    invoke-virtual {v5, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string v9, "sspn"

    invoke-direct {p0, v5, v9}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v9, "sspn"

    invoke-virtual {v5, v9}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-static {v2, v6, v9}, Lbb/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    iget-object v6, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    const-string v2, "t"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "k"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "h"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_7
    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2, v8}, Lcom/google/googlenav/ui/aT;->b(I)Z

    move-result v2

    :goto_5
    const-string v3, "q"

    invoke-virtual {v5, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "near"

    invoke-virtual {v5, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_10

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    const-string v0, " near "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v0, "sll"

    invoke-direct {p0, v5, v0}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lf/C;

    new-instance v2, Lf/h;

    aget v3, v0, v7

    aget v4, v0, v8

    invoke-direct {v2, v3, v4}, Lf/h;-><init>(II)V

    const/16 v3, 0xa

    invoke-static {v3}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->I()I

    move-result v4

    iget-object v9, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aT;->J()Z

    move-result v9

    invoke-direct {v1, v2, v3, v4, v9}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    move-object v3, v1

    :goto_6
    const-string v1, "sspn"

    invoke-direct {p0, v5, v1}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_23

    aget v1, v1, v7

    move v4, v1

    :goto_7
    invoke-static {v6}, Lcom/google/googlenav/android/W;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "cid"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "latlng"

    invoke-direct {p0, v5, v1}, Lcom/google/googlenav/android/W;->b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " cid:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v6

    :goto_8
    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    :goto_9
    const-string v6, "iwd"

    invoke-virtual {v5, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move v6, v8

    :goto_a
    if-nez v0, :cond_e

    invoke-static {v1}, Lcom/google/googlenav/android/W;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v1, v2, v6, v8}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_b
    move v0, v10

    goto/16 :goto_0

    :cond_a
    move-object v6, v12

    goto/16 :goto_3

    :cond_b
    move-object v9, v12

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const-string v1, "ANDROID_INTENT"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v11

    goto/16 :goto_0

    :cond_c
    const-string v6, "m"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/aT;->b(I)Z

    move-result v2

    goto/16 :goto_5

    :cond_d
    invoke-static {v6}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v6

    goto :goto_9

    :cond_e
    if-nez v0, :cond_f

    move v5, v8

    :goto_c
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZZ)V

    goto :goto_b

    :cond_f
    move v5, v7

    goto :goto_c

    :cond_10
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/maps/place"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "cid"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "georestrict"

    invoke-virtual {v5, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_11

    const-string v6, "source"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "source"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "phone_notification_lab"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Lcom/google/googlenav/labs/android/h;->a:Lcom/google/googlenav/labs/android/h;

    invoke-virtual {v6, v1}, Lcom/google/googlenav/labs/android/h;->b(Ljava/lang/String;)V

    :cond_11
    invoke-static {v1, v3}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    const-string v0, "uc"

    invoke-virtual {v5, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "insitu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v8

    :goto_d
    const-string v2, "openratings"

    const-string v3, "action"

    invoke-virtual {v5, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-static {p1}, Lcom/google/googlenav/android/W;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_e
    move v0, v10

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_13
    const-string v1, "saddr"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "daddr"

    invoke-virtual {v5, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "dirflg"

    invoke-virtual {v5, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "myl"

    invoke-virtual {v5, v9}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    :cond_14
    invoke-direct {p0, v1, v3, v6, v9}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    goto/16 :goto_0

    :cond_15
    const-string v1, "msid"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->c(Landroid/net/Uri;)V

    move v0, v10

    goto/16 :goto_0

    :cond_16
    const-string v1, "ll"

    invoke-direct {p0, v5, v1}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v1

    const-string v3, "spn"

    invoke-direct {p0, v5, v3}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    const-string v6, "z"

    invoke-direct {p0, v5, v6, v11}, Lcom/google/googlenav/android/W;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I

    move-result v6

    if-eqz v1, :cond_1f

    new-instance v2, Lf/h;

    aget v9, v1, v7

    aget v1, v1, v8

    invoke-direct {v2, v9, v1}, Lf/h;-><init>(II)V

    iget-object v1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-virtual {v1, v2}, Lf/Y;->c(Lf/h;)V

    move v1, v8

    :goto_f
    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    aget v2, v3, v7

    aget v9, v3, v8

    invoke-virtual {v1, v2, v9}, Lf/Y;->d(II)V

    move v1, v8

    :cond_17
    if-nez v3, :cond_18

    if-ltz v6, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-static {v6}, Lf/l;->b(I)Lf/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/Y;->a(Lf/l;)V

    move v1, v8

    :cond_18
    const-string v2, "layer"

    invoke-virtual {v5, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v8}, Lcom/google/googlenav/ui/aT;->f(Z)V

    move v1, v8

    :cond_19
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "cid"

    invoke-virtual {v5, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aF()V

    const-string v1, "uc"

    invoke-virtual {v5, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "insitu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v8

    :goto_10
    iget-object v2, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/android/h;->a(Ljava/lang/String;Z)V

    move v0, v10

    goto/16 :goto_0

    :cond_1a
    if-nez v1, :cond_1b

    if-eqz v4, :cond_1d

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    if-eqz v1, :cond_1c

    move v0, v10

    goto/16 :goto_0

    :cond_1c
    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_1d
    move v0, v11

    goto/16 :goto_0

    :cond_1e
    move v1, v7

    goto :goto_10

    :cond_1f
    move v1, v2

    goto/16 :goto_f

    :cond_20
    move v0, v7

    goto/16 :goto_d

    :cond_21
    move v6, v7

    goto/16 :goto_a

    :cond_22
    move-object v1, v12

    move-object v2, v6

    goto/16 :goto_8

    :cond_23
    move v4, v11

    goto/16 :goto_7

    :cond_24
    move-object v3, v12

    goto/16 :goto_6

    :cond_25
    move v2, v3

    goto/16 :goto_5

    :cond_26
    move v4, v7

    goto/16 :goto_2

    :cond_27
    move v3, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public a()I
    .locals 15

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0}, Lcom/google/googlenav/android/h;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    if-eqz v1, :cond_1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_1
    iget-object v3, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bu;->A()Z

    move-result v3

    const-string v5, "app_data"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "app_data"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_3
    move v5, v12

    :goto_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/d;->U()Z

    move-result v7

    if-eqz v7, :cond_6

    move v9, v6

    move-object v8, v13

    move v10, v6

    move-object v0, v13

    move v5, v6

    move v7, v3

    move-object v3, v13

    :goto_3
    if-nez v0, :cond_a

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    const-string v11, "s"

    invoke-virtual {v0, v1, v11}, LJ/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Ljava/lang/String;Lf/C;IZZZLjava/lang/String;Z)V

    :goto_4
    invoke-direct {p0, v10, v8}, Lcom/google/googlenav/android/W;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->y()V

    const/16 v0, 0x15

    goto :goto_0

    :cond_4
    invoke-static {v1, v12, v12, v6}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    if-nez v5, :cond_15

    const-string v7, "app_data"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "centerLatitude"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "centerLongitude"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "centerLatitude"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "centerLongitude"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    new-instance v11, Lf/h;

    invoke-direct {v11, v8, v9}, Lf/h;-><init>(II)V

    invoke-virtual {v10, v11}, Lf/Y;->c(Lf/h;)V

    :cond_7
    const-string v8, "zoomLevel"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    const-string v9, "zoomLevel"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lf/l;->b(I)Lf/l;

    move-result-object v9

    invoke-virtual {v8, v9}, Lf/Y;->a(Lf/l;)V

    :cond_8
    :goto_5
    const-string v8, "routePolyline"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    :try_start_0
    new-instance v8, Law/e;

    sget-object v9, Ls/P;->d:Law/f;

    invoke-direct {v8, v9}, Law/e;-><init>(Law/f;)V

    const-string v9, "routePolyline"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v8, v9}, Law/e;->a([B)Law/e;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Law/e;->d(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Law/e;->f(I)Law/e;

    move-result-object v8

    invoke-static {v8}, Lf/A;->a(Law/e;)Lf/A;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_6
    const-string v9, "skipSearchWizardOnBack"

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "skipSearchWizardOnBack"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    :goto_7
    const-string v10, "searchUiSource"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "searchUiSource"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    const-string v11, "searchNearBy"

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v3, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    const-string v11, "searchNearBy"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lf/h;->a(Ljava/lang/String;)Lf/h;

    move-result-object v11

    invoke-virtual {v3, v11}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v3

    move v11, v12

    :goto_9
    const-string v12, "searchIncludeInHistory"

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "searchIncludeInHistory"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v7, v11

    move-object v14, v10

    move v10, v9

    move v9, v0

    move-object v0, v8

    move-object v8, v14

    goto/16 :goto_3

    :cond_9
    const-string v8, "latitudeSpan"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "longitudeSpan"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "latitudeSpan"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "longitudeSpan"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    invoke-virtual {v10, v8, v9}, Lf/Y;->d(II)V

    goto/16 :goto_5

    :catch_0
    move-exception v8

    move-object v8, v13

    goto :goto_6

    :cond_a
    invoke-direct {p0, v1, v0, v9}, Lcom/google/googlenav/android/W;->a(Ljava/lang/String;Lf/A;Z)V

    goto/16 :goto_4

    :cond_b
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_c
    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->g(Landroid/content/Intent;)I

    move-result v1

    if-ne v1, v4, :cond_d

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->h(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x3

    if-ne v1, v0, :cond_e

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->y()V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v0}, Lcom/google/googlenav/android/W;->h(Landroid/content/Intent;)V

    move v0, v4

    goto/16 :goto_0

    :cond_10
    move-object v0, v8

    move v7, v11

    move-object v8, v10

    move v10, v9

    move v9, v6

    goto/16 :goto_3

    :cond_11
    move v11, v3

    move-object v3, v13

    goto :goto_9

    :cond_12
    move-object v10, v13

    goto/16 :goto_8

    :cond_13
    move v9, v6

    goto/16 :goto_7

    :cond_14
    move-object v8, v13

    goto/16 :goto_6

    :cond_15
    move v9, v6

    move-object v8, v13

    move v10, v6

    move-object v0, v13

    move v7, v3

    move-object v3, v13

    goto/16 :goto_3
.end method

.method a(Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/h;

    invoke-direct {v1, v0}, Lcom/google/googlenav/h;-><init>(Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    const-string v1, "notification_fired"

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    sub-long v1, v3, v1

    if-nez v0, :cond_2

    move-object v3, v5

    :goto_1
    invoke-static {v1, v2, v3}, Lo/A;->a(JLjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-static {p1}, Lcom/google/googlenav/android/W;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/android/h;->a(Lcom/google/googlenav/h;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ANDROID_INTENT"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/h;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public a(Lf/Y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/W;->f:Lf/Y;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/16 v0, 0x34

    const-string v1, "f"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/W;->e:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x61

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/W;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/android/W;->b()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0}, Lcom/google/googlenav/android/h;->b()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-class v2, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/android/W;->d:Lcom/google/googlenav/android/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/h;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
