.class public Ln/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ln/g;


# instance fields
.field private b:Ln/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/g;

    invoke-direct {v0}, Ln/g;-><init>()V

    sput-object v0, Ln/g;->a:Ln/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Ln/g;->a:Ln/g;

    iget-object v0, v0, Ln/g;->b:Ln/k;

    invoke-interface {v0, p0}, Ln/k;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln/k;)V
    .locals 1

    sget-object v0, Ln/g;->a:Ln/g;

    iput-object p0, v0, Ln/g;->b:Ln/k;

    return-void
.end method
