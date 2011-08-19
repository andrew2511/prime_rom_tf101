.class public LA/u;
.super Ljava/lang/Object;


# static fields
.field private static a:LA/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, LA/u;->a()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, LA/u;->a:LA/g;

    invoke-virtual {v0, p0}, LA/g;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, LA/u;->a:LA/g;

    invoke-virtual {v0, p0, p1}, LA/g;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .locals 2

    new-instance v0, LA/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA/o;-><init>(LA/e;)V

    sput-object v0, LA/u;->a:LA/g;

    return-void
.end method
