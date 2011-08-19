.class public Lk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lk/q;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private final c:Lk/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lk/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lk/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IZZIZZ)Lk/f;
    .locals 9

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color with alpha channel not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, v2, :cond_1

    move v7, v0

    move v8, v2

    :goto_0
    iget-object v0, p0, Lk/b;->c:Lk/q;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lk/q;->a(IZZIZZ)Lk/f;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lk/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lk/g;

    iget-object v5, p0, Lk/b;->b:Ljava/util/Hashtable;

    sget-object v6, Lk/b;->a:Ljava/lang/String;

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lk/g;-><init>(Lk/f;Ljava/lang/String;IILjava/util/Hashtable;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-ne p1, v1, :cond_2

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_2
    move v7, v0

    move v8, v0

    goto :goto_0
.end method
