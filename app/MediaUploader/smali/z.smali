.class public final Lz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lz;


# instance fields
.field private b:LA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz;

    invoke-direct {v0}, Lz;-><init>()V

    sput-object v0, Lz;->a:Lz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lz;->a:Lz;

    iget-object v0, v0, Lz;->b:LA;

    invoke-interface {v0, p0}, LA;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(LA;)V
    .locals 1

    sget-object v0, Lz;->a:Lz;

    iput-object p0, v0, Lz;->b:LA;

    return-void
.end method
