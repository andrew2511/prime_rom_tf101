.class public Lcom/amazon/kcp/application/AndroidDownloadChunker;
.super Ljava/lang/Object;
.source "AndroidDownloadChunker.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDownloadChunker;


# static fields
.field private static final CHUNK_SIZE:I = 0xa00000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 20
    const/high16 v0, 0xa0

    return v0
.end method

.method public onSuccessfulChunkDownload()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onUnsuccessfulChunkDownload()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
