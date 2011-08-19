.class public Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
.super Ljava/lang/Object;
.source "LongShadowUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LabelValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;",
        ">;"
    }
.end annotation


# instance fields
.field public backgroundColor:I

.field public colorId:Ljava/lang/String;

.field public labelId:J

.field public name:Ljava/lang/String;

.field public textColor:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "labelId"
    .parameter "colorId"
    .parameter "name"
    .parameter "backgroundColor"
    .parameter "textColor"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->labelId:J

    .line 62
    iput-object p3, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->colorId:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    .line 64
    iput p5, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->backgroundColor:I

    .line 65
    iput p6, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->textColor:I

    .line 66
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->compareTo(Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;)I

    move-result v0

    return v0
.end method
