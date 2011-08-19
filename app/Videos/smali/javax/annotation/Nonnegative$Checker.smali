.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator",
        "<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p1, Ljavax/annotation/Nonnegative;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 9
    .parameter "annotation"
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 21
    instance-of v3, p2, Ljava/lang/Number;

    if-nez v3, :cond_0

    .line 22
    sget-object v3, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    .line 37
    :goto_0
    return-object v3

    .line 24
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    .line 25
    .local v2, value:Ljava/lang/Number;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move v1, v8

    .line 34
    .local v1, isNegative:Z
    :goto_1
    if-eqz v1, :cond_8

    .line 35
    sget-object v3, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    goto :goto_0

    .end local v1           #isNegative:Z
    :cond_1
    move v1, v7

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    move v1, v8

    .restart local v1       #isNegative:Z
    :goto_2
    goto :goto_1

    .end local v1           #isNegative:Z
    :cond_3
    move v1, v7

    goto :goto_2

    .line 29
    :cond_4
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 30
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    move v1, v8

    .restart local v1       #isNegative:Z
    :goto_3
    goto :goto_1

    .end local v1           #isNegative:Z
    :cond_5
    move v1, v7

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-gez v3, :cond_7

    move v1, v8

    .restart local v1       #isNegative:Z
    :goto_4
    goto :goto_1

    .end local v1           #isNegative:Z
    :cond_7
    move v1, v7

    goto :goto_4

    .line 37
    .restart local v1       #isNegative:Z
    :cond_8
    sget-object v3, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    goto :goto_0
.end method
