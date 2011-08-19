.class public LSQLite/Blob;
.super Ljava/lang/Object;
.source "Blob.java"


# instance fields
.field private handle:J

.field protected size:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 321
    invoke-static {}, LSQLite/Blob;->internal_init()V

    .line 322
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Blob;->handle:J

    .line 260
    const/4 v0, 0x0

    iput v0, p0, LSQLite/Blob;->size:I

    return-void
.end method

.method private static native internal_init()V
.end method


# virtual methods
.method public native close()V
.end method

.method protected native finalize()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 268
    new-instance v0, LSQLite/BlobR;

    invoke-direct {v0, p0}, LSQLite/BlobR;-><init>(LSQLite/Blob;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 277
    new-instance v0, LSQLite/BlobW;

    invoke-direct {v0, p0}, LSQLite/BlobW;-><init>(LSQLite/Blob;)V

    return-object v0
.end method

.method native read([BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native write([BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
