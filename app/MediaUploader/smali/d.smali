.class public final Ld;
.super Ljava/lang/Object;


# static fields
.field private static a:Ld;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ld;->a:Ld;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.locale"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ld;->b(Ljava/lang/String;)V

    const-string v0, "en"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ld;
    .locals 1

    new-instance v0, Ld;

    invoke-direct {v0, p0}, Ld;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld;->a:Ld;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Laa;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ld;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld;->b:Ljava/lang/String;

    iget-object v0, p0, Ld;->b:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ld;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p1}, Ld;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ld;->c:Ljava/lang/String;

    iget-object v0, p0, Ld;->c:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_0
    if-gez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Ld;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1
.end method
