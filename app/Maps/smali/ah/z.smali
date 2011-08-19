.class public Lah/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lah/z;->a:Ljava/util/HashMap;

    new-instance v0, Lah/w;

    invoke-direct {v0}, Lah/w;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    new-instance v0, Lah/q;

    invoke-direct {v0}, Lah/q;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    new-instance v0, Lah/s;

    invoke-direct {v0}, Lah/s;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    new-instance v0, Lah/f;

    invoke-direct {v0}, Lah/f;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    new-instance v0, Lah/a;

    invoke-direct {v0}, Lah/a;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    new-instance v0, Lah/e;

    invoke-direct {v0}, Lah/e;-><init>()V

    invoke-static {v0}, Lah/z;->a(Lah/A;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lah/A;
    .locals 1

    sget-object v0, Lah/z;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lah/A;

    return-object p0
.end method

.method private static a(Lah/A;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lah/z;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
