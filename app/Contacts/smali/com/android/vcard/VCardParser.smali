.class public interface abstract Lcom/android/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation
.end method
