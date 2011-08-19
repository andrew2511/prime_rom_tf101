.class Lcom/amazon/android/system/io/AndroidInflater;
.super Ljava/lang/Object;
.source "AndroidInflater.java"

# interfaces
.implements Lcom/amazon/system/io/Inflater;


# instance fields
.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/system/io/AndroidInflater;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/system/io/AndroidInflater;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 21
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 23
    .local v0, dfe:Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInput([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/android/system/io/AndroidInflater;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 30
    return-void
.end method
