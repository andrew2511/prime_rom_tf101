.class public final Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field static final FALSE:Ljava/lang/Boolean;

.field static final TRUE:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->TRUE:Ljava/lang/Boolean;

    .line 25
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->FALSE:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static e6ToString(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const v4, 0xf4240

    .line 1028
    .line 1029
    div-int v0, p0, v4

    .line 1030
    mul-int v1, v0, v4

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1031
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1032
    if-gez p0, :cond_1b

    if-nez v0, :cond_1b

    .line 1035
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1038
    if-lez v1, :cond_33

    .line 1039
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1040
    add-int v0, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "string"

    .prologue
    .line 241
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "target"
    .parameter "separator"

    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 469
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v1, out:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 471
    if-eqz v0, :cond_18

    .line 472
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :cond_18
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 465
    .end local v0           #i:I
    .end local v1           #out:Ljava/lang/StringBuffer;
    :pswitch_22
    const-string v2, ""

    .line 476
    :goto_24
    return-object v2

    .line 467
    :pswitch_25
    invoke-virtual {p0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 476
    .restart local v0       #i:I
    .restart local v1       #out:Ljava/lang/StringBuffer;
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 463
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 10
    .parameter "target"
    .parameter "replacement"
    .parameter "buffer"

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 368
    .local v2, replacementCount:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 369
    .local v4, targetLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 370
    .local v3, replacementLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :cond_a
    :goto_a
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-gt v0, v5, :cond_36

    .line 371
    const/4 v1, 0x0

    .local v1, j:I
    :goto_12
    if-ge v1, v4, :cond_26

    .line 372
    add-int v5, v0, v1

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_23

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    goto :goto_a

    .line 371
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 377
    :cond_26
    add-int v5, v0, v4

    invoke-virtual {p2, v0, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v2, v2, 0x1

    .line 380
    add-int/2addr v0, v3

    .line 382
    if-nez v4, :cond_a

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 388
    .end local v1           #j:I
    :cond_36
    return v2
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .parameter "target"
    .parameter "separator"

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter "target"
    .parameter "separator"

    .prologue
    .line 46
    const/4 v5, 0x0

    .line 47
    .local v5, separatorInstances:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 48
    .local v6, targetLength:I
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, index:I
    :goto_a
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1d

    if-ge v3, v6, :cond_1d

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 53
    if-ltz v3, :cond_18

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 50
    :cond_18
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_a

    .line 57
    :cond_1d
    add-int/lit8 v7, v5, 0x1

    new-array v4, v7, [Ljava/lang/String;

    .line 58
    .local v4, results:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 59
    .local v0, beginIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-ge v2, v5, :cond_38

    .line 60
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, endIndex:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int v0, v1, v7

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 65
    .end local v1           #endIndex:I
    :cond_38
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 66
    return-object v4
.end method
