.class Lz/d;
.super Ljava/lang/Object;

# interfaces
.implements Ln/k;


# instance fields
.field final synthetic a:Lz/b;


# direct methods
.method constructor <init>(Lz/b;)V
    .locals 0

    iput-object p1, p0, Lz/d;->a:Lz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
