.class Lorg/dom4j/io/DocumentInputSource$1;
.super Ljava/io/Reader;
.source "DocumentInputSource.java"


# instance fields
.field final this$0:Lorg/dom4j/io/DocumentInputSource;

.field private final val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/dom4j/io/DocumentInputSource;Ljava/io/IOException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource$1;->this$0:Lorg/dom4j/io/DocumentInputSource;

    iput-object p2, p0, Lorg/dom4j/io/DocumentInputSource$1;->val$e:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public read([CII)I
    .locals 1
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/dom4j/io/DocumentInputSource$1;->val$e:Ljava/io/IOException;

    throw v0
.end method
