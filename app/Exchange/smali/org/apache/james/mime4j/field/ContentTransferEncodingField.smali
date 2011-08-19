.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lorg/apache/james/mime4j/field/Field;
.source "ContentTransferEncodingField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/ContentTransferEncodingField$Parser;
    }
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "encoding"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p4, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    .line 57
    return-void
.end method
