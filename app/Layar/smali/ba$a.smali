.class final Lba$a;
.super Ljava/lang/Object;

# interfaces
.implements Lba$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lba$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lao;
    .locals 1

    new-instance v0, Lau;

    invoke-direct {v0, p1}, Lau;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
