.class Ljava/text/MessageFormat$FieldContainer;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldContainer"
.end annotation


# instance fields
.field attribute:Ljava/text/AttributedCharacterIterator$Attribute;

.field end:I

.field start:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput p1, p0, Ljava/text/MessageFormat$FieldContainer;->start:I

    .line 643
    iput p2, p0, Ljava/text/MessageFormat$FieldContainer;->end:I

    .line 644
    iput-object p3, p0, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 645
    iput-object p4, p0, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    .line 646
    return-void
.end method
