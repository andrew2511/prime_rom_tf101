.class final Lorg/apache/james/mime4j/field/DateTimeField$1;
.super Ljava/lang/Object;
.source "DateTimeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/DateTimeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 1
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 86
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/DateTimeField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-object v0
.end method
