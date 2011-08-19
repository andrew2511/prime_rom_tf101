.class public abstract Lcom/zinio/mobile/android/b/a/m;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/b/a/m;->a:Z

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/b/a/m;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
.end method

.method public final characters([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/zinio/mobile/android/b/a/m;->a:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/m;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/zinio/mobile/android/b/a/m;->a:Z

    .line 33
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/m;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/b/a/m;->a(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/zinio/mobile/android/b/a/m;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 35
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lcom/zinio/mobile/android/b/a/m;->a:Z

    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/b/a/m;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    invoke-virtual {p0, p2, p4, v2}, Lcom/zinio/mobile/android/b/a/m;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V

    .line 26
    return-void
.end method
